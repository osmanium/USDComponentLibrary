/*
 * Copyright 2002 Sun Microsystems, Inc. All rights reserved.
 * SUN PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

/*
 * @(#)TopLevelWindowMulticaster.java	1.7 02/01/17
 */
package com.sun.java.accessibility.util;

import java.awt.*;
import java.util.EventListener;
import javax.accessibility.*;


/**
 * The TopLevelWindowMulticaster class is used to maintain a list of
 * TopLevelWindowListener classes.  It is intended to be used primarily
 * for internal support in the EventQueueMonitor class, and is not intended 
 * to be used by classes outside the Java Accessibility Utility package.
 * 
 * @see EventQueueMonitor
 * @see EventQueueMonitor#addTopLevelWindowListener
 * @see EventQueueMonitor#removeTopLevelWindowListener
 *
 * @version 1.7 01/17/02 16:11:03
 * @author Willie Walker
 */
public class TopLevelWindowMulticaster 
    extends AWTEventMulticaster implements TopLevelWindowListener
{
    protected TopLevelWindowMulticaster(EventListener a, EventListener b) {
	super(a, b);
    }

    public void topLevelWindowCreated(Window w) {
	((TopLevelWindowListener)a).topLevelWindowCreated(w);
	((TopLevelWindowListener)b).topLevelWindowCreated(w);
    }

    public void topLevelWindowDestroyed(Window w) {
	((TopLevelWindowListener)a).topLevelWindowDestroyed(w);
	((TopLevelWindowListener)b).topLevelWindowDestroyed(w);
    }

    public static TopLevelWindowListener add(TopLevelWindowListener a, TopLevelWindowListener b) {
	return (TopLevelWindowListener)addInternal(a, b);
    }

    public static TopLevelWindowListener remove(TopLevelWindowListener l, TopLevelWindowListener oldl) {
	return (TopLevelWindowListener)removeInternal(l, oldl);
    }

    protected static EventListener addInternal(EventListener a, EventListener b) {
	if (a == null)  return b;
	if (b == null)  return a;
	return new TopLevelWindowMulticaster(a, b);
    }

    protected static EventListener removeInternal(EventListener l, EventListener oldl) {
	if (l == oldl || l == null) {
	    return null;
	} else if (l instanceof TopLevelWindowMulticaster) {
	    return ((TopLevelWindowMulticaster)l).remove(oldl);
	} else {
	    return l;		// it's not here
	}
    }

}
