/*
 * Copyright 2002 Sun Microsystems, Inc. All rights reserved.
 * SUN PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

/*
 * @(#)AccessibilityListenerList.java	1.5 02/01/17
 */

package com.sun.java.accessibility.util;

import java.util.*;
import java.beans.*;
import java.awt.*;
import java.awt.event.*;
import javax.accessibility.*;

/**
 * <P>The AccessibilityListenerList is a pretty blatant copy of the 
 * Swing EventListerList class.
 *
 * @version     1.5 01/17/02 16:08:49
 * @author      Peter Korn (theif, really)
 */

public class AccessibilityListenerList {
    /* A null array to be shared by all empty listener lists*/
    private final static Object[] NULL_ARRAY = new Object[0];
    /* The list of ListenerType - Listener pairs */
    protected transient Object[] listenerList = NULL_ARRAY;

    public Object[] getListenerList() {
	return listenerList;
    }

    public int getListenerCount() {
	return listenerList.length/2;
    }

    /**
     * Return the total number of listeners of the supplied type 
     * for this listenerlist.
     */
    public int getListenerCount(Class t) {
	int count = 0;
	Object[] lList = listenerList;
	for (int i = 0; i < lList.length; i+=2) {
	    if (t == (Class)lList[i])
		count++;
	}
	return count;
    }

    /**
     * Add the listener as a listener of the specified type.
     * @param t the type of the listener to be added
     * @param l the listener to be added
     */
    public synchronized void add(Class t, EventListener l) {
	if (!t.isInstance(l)) {
	    throw new IllegalArgumentException("Listener " + l +
					 " is not of type " + t);
	}
	if (l ==null) {
	    throw new IllegalArgumentException("Listener " + l +
					 " is null");
	}
	if (listenerList == NULL_ARRAY) {
	    // if this is the first listener added, 
	    // initialize the lists
	    listenerList = new Object[] { t, l };
	} else {
	    // Otherwise copy the array and add the new listener
	    int i = listenerList.length;
	    Object[] tmp = new Object[i+2];
	    System.arraycopy(listenerList, 0, tmp, 0, i);

	    tmp[i] = t;
	    tmp[i+1] = l;

	    listenerList = tmp;
	}
    }

    /**
     * Remove the listener as a listener of the specified type.
     * @param t the type of the listener to be removed
     * @param l the listener to be removed
     */
    public synchronized void remove(Class t, EventListener l) {
	if (!t.isInstance(l)) {
	    throw new IllegalArgumentException("Listener " + l +
					 " is not of type " + t);
	}
	if (l ==null) {
	    throw new IllegalArgumentException("Listener " + l +
					 " is null");
	}

	// Is l on the list?
	int index = -1;
	for (int i = listenerList.length-2; i>=0; i-=2) {
	    if ((listenerList[i]==t) && (listenerList[i+1] == l)) {
		index = i;
		break;
	    }
	}
	
	// If so,  remove it
	if (index != -1) {
	    Object[] tmp = new Object[listenerList.length-2];
	    // Copy the list up to index
	    System.arraycopy(listenerList, 0, tmp, 0, index);
	    // Copy from two past the index, up to
	    // the end of tmp (which is two elements
	    // shorter than the old list)
	    if (index < tmp.length)
		System.arraycopy(listenerList, index+2, tmp, index, 
				 tmp.length - index);
	    // set the listener array to the new array or null
	    listenerList = (tmp.length == 0) ? NULL_ARRAY : tmp;
	    }
    }

    /**
     * Return a string representation of the EventListenerList.
     */
    public String toString() {
	Object[] lList = listenerList;
	String s = "EventListenerList: ";
	s += lList.length/2 + " listeners: ";
	for (int i = 0 ; i <= lList.length-2 ; i+=2) {
	    s += " type " + ((Class)lList[i]).getName();
	    s += " listener " + lList[i+1];
	}
	return s;
    }
}
