/*
 * Copyright 2005 Sun Microsystems, Inc. All rights reserved.
 * SUN PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

/*
 * @(#)AccessBridgeEventHandler.cpp	1.17 05/03/21
 */

/* 
 * A class to manage firing Accessibility events to Windows AT
 */

#ifdef _DEBUG
	#define DEBUGGING_ON
#endif

#include "AccessBridgeDebug.h"
#include "AccessBridgeEventHandler.h"
#include "AccessBridgePackages.h"
#include "WinAccessBridge.h"

DEBUG(extern HWND theDialogWindow);
extern "C" {
DEBUG(void AppendToCallInfo(char *s));
}


// -----------------------------

/**
 * Initialization.  Set all callbacks to null
 */
AccessBridgeEventHandler::AccessBridgeEventHandler() {
	javaEventMask = 0;
	accessibilityEventMask = 0;

	propertyChangeFP = (AccessBridge_PropertyChangeFP) NULL;
	javaShutdownFP = (AccessBridge_JavaShutdownFP) NULL;
	focusGainedFP = (AccessBridge_FocusGainedFP) NULL;
	focusLostFP = (AccessBridge_FocusLostFP) NULL;
	caretUpdateFP = (AccessBridge_CaretUpdateFP) NULL;
	mouseClickedFP = (AccessBridge_MouseClickedFP) NULL;
	mouseEnteredFP = (AccessBridge_MouseEnteredFP) NULL;
	mouseExitedFP = (AccessBridge_MouseExitedFP) NULL;
	mousePressedFP = (AccessBridge_MousePressedFP) NULL;
	mouseReleasedFP = (AccessBridge_MouseReleasedFP) NULL;
	menuCanceledFP = (AccessBridge_MenuCanceledFP) NULL;
	menuDeselectedFP = (AccessBridge_MenuDeselectedFP) NULL;
	menuSelectedFP = (AccessBridge_MenuSelectedFP) NULL;
	popupMenuCanceledFP = (AccessBridge_PopupMenuCanceledFP) NULL;
	popupMenuWillBecomeInvisibleFP = (AccessBridge_PopupMenuWillBecomeInvisibleFP) NULL;
	popupMenuWillBecomeVisibleFP = (AccessBridge_PopupMenuWillBecomeVisibleFP) NULL;

    propertyNameChangeFP = (AccessBridge_PropertyNameChangeFP) NULL;
    propertyDescriptionChangeFP = (AccessBridge_PropertyDescriptionChangeFP) NULL;
    propertyStateChangeFP = (AccessBridge_PropertyStateChangeFP) NULL;
    propertyValueChangeFP = (AccessBridge_PropertyValueChangeFP) NULL;
    propertySelectionChangeFP = (AccessBridge_PropertySelectionChangeFP) NULL;
    propertyTextChangeFP = (AccessBridge_PropertyTextChangeFP) NULL;
    propertyCaretChangeFP = (AccessBridge_PropertyCaretChangeFP) NULL;
    propertyVisibleDataChangeFP = (AccessBridge_PropertyVisibleDataChangeFP) NULL;
    propertyChildChangeFP = (AccessBridge_PropertyChildChangeFP) NULL;
    propertyActiveDescendentChangeFP = (AccessBridge_PropertyActiveDescendentChangeFP) NULL;

	propertyTableModelChangeFP = (AccessBridge_PropertyTableModelChangeFP) NULL;

}

/**
 * Destruction.
 */
AccessBridgeEventHandler::~AccessBridgeEventHandler() {
}


// ------------ Event handling methods 

#define SET_JAVA_EVENT_FP(function, eventFP, callbackFP, eventConstant)			\
	void AccessBridgeEventHandler::function(eventFP fp, WinAccessBridge *wab) {	\
		callbackFP = fp;														\
		if (fp != (eventFP) 0) {												\
			javaEventMask |= eventConstant;										\
			wab->addJavaEventNotification(eventConstant);						\
		} else {																\
			javaEventMask &= (0xFFFFFFFF - eventConstant);						\
			wab->removeJavaEventNotification(eventConstant);					\
		}																		\
	}

SET_JAVA_EVENT_FP(setPropertyChangeFP, AccessBridge_PropertyChangeFP, propertyChangeFP, cPropertyChangeEvent)
SET_JAVA_EVENT_FP(setJavaShutdownFP, AccessBridge_JavaShutdownFP, javaShutdownFP, cJavaShutdownEvent)
SET_JAVA_EVENT_FP(setFocusGainedFP, AccessBridge_FocusGainedFP, focusGainedFP, cFocusGainedEvent)
SET_JAVA_EVENT_FP(setFocusLostFP, AccessBridge_FocusLostFP, focusLostFP, cFocusLostEvent)
SET_JAVA_EVENT_FP(setCaretUpdateFP, AccessBridge_CaretUpdateFP, caretUpdateFP, cCaretUpdateEvent)
SET_JAVA_EVENT_FP(setMouseClickedFP, AccessBridge_MouseClickedFP, mouseClickedFP, cMouseClickedEvent)
SET_JAVA_EVENT_FP(setMouseEnteredFP, AccessBridge_MouseEnteredFP, mouseEnteredFP, cMouseEnteredEvent)
SET_JAVA_EVENT_FP(setMouseExitedFP, AccessBridge_MouseExitedFP, mouseExitedFP, cMouseExitedEvent)
SET_JAVA_EVENT_FP(setMousePressedFP, AccessBridge_MousePressedFP, mousePressedFP, cMousePressedEvent)
SET_JAVA_EVENT_FP(setMouseReleasedFP, AccessBridge_MouseReleasedFP, mouseReleasedFP, cMouseReleasedEvent)
SET_JAVA_EVENT_FP(setMenuCanceledFP, AccessBridge_MenuCanceledFP, menuCanceledFP, cMenuCanceledEvent)
SET_JAVA_EVENT_FP(setMenuDeselectedFP, AccessBridge_MenuDeselectedFP, menuDeselectedFP, cMenuDeselectedEvent)
SET_JAVA_EVENT_FP(setMenuSelectedFP, AccessBridge_MenuSelectedFP, menuSelectedFP, cMenuSelectedEvent)
SET_JAVA_EVENT_FP(setPopupMenuCanceledFP, AccessBridge_PopupMenuCanceledFP, popupMenuCanceledFP, cPopupMenuCanceledEvent)
SET_JAVA_EVENT_FP(setPopupMenuWillBecomeInvisibleFP, AccessBridge_PopupMenuWillBecomeInvisibleFP, popupMenuWillBecomeInvisibleFP, cPopupMenuWillBecomeInvisibleEvent)
SET_JAVA_EVENT_FP(setPopupMenuWillBecomeVisibleFP, AccessBridge_PopupMenuWillBecomeVisibleFP, popupMenuWillBecomeVisibleFP, cPopupMenuWillBecomeVisibleEvent)

#define SET_ACCESSIBILITY_EVENT_FP(function, eventFP, callbackFP, eventConstant) \
	void AccessBridgeEventHandler::function(eventFP fp, WinAccessBridge *wab) {	\
		callbackFP = fp;														\
		if (fp != (eventFP) 0) {												\
			accessibilityEventMask |= eventConstant;							\
			wab->addAccessibilityEventNotification(eventConstant);				\
		} else {																\
			accessibilityEventMask &= (0xFFFFFFFF - eventConstant);				\
			wab->removeAccessibilityEventNotification(eventConstant);			\
		}																		\
	}


SET_ACCESSIBILITY_EVENT_FP(setPropertyNameChangeFP, AccessBridge_PropertyNameChangeFP, propertyNameChangeFP, cPropertyNameChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertyDescriptionChangeFP, AccessBridge_PropertyDescriptionChangeFP, propertyDescriptionChangeFP, cPropertyDescriptionChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertyStateChangeFP, AccessBridge_PropertyStateChangeFP, propertyStateChangeFP, cPropertyStateChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertyValueChangeFP, AccessBridge_PropertyValueChangeFP, propertyValueChangeFP, cPropertyValueChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertySelectionChangeFP, AccessBridge_PropertySelectionChangeFP, propertySelectionChangeFP, cPropertySelectionChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertyTextChangeFP, AccessBridge_PropertyTextChangeFP, propertyTextChangeFP, cPropertyTextChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertyCaretChangeFP, AccessBridge_PropertyCaretChangeFP, propertyCaretChangeFP, cPropertyCaretChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertyVisibleDataChangeFP, AccessBridge_PropertyVisibleDataChangeFP, propertyVisibleDataChangeFP, cPropertyVisibleDataChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertyChildChangeFP, AccessBridge_PropertyChildChangeFP, propertyChildChangeFP, cPropertyChildChangeEvent)
SET_ACCESSIBILITY_EVENT_FP(setPropertyActiveDescendentChangeFP, AccessBridge_PropertyActiveDescendentChangeFP, propertyActiveDescendentChangeFP, cPropertyActiveDescendentChangeEvent)

SET_ACCESSIBILITY_EVENT_FP(setPropertyTableModelChangeFP, AccessBridge_PropertyTableModelChangeFP, propertyTableModelChangeFP, cPropertyTableModelChangeEvent)


/**
 * propertyChange - extends the Java method call to Windows:
 *   propertyChange(PropertyChangeEvent e, )
 *
 * Note: PropertyChangeEvent object passed in is a globalReference;
 *       It is critical that INTreleaseJavaObject() be called
 *       on the PropertyChangeEvent once it is no longer needed, 
 *       otherwise the JavaVM/JNI will suffer memory leaks
 *
 */
void 
AccessBridgeEventHandler::firePropertyChange(long vmID, 
											 jobject event, jobject source, 
											 wchar_t *property, wchar_t *oldName,
											 wchar_t *newName) {
	DEBUG(char debugBuf[255]);
	DEBUG(sprintf(debugBuf, "\r\nCalling firePropertyChange(%X, %X):\r\n", event, source));
	DEBUG(AppendToCallInfo(debugBuf));

	if (propertyChangeFP != (AccessBridge_PropertyChangeFP) 0) {
		propertyChangeFP(vmID, event, source, property, oldName, newName);
	} else {
		DEBUG(AppendToCallInfo("  Error! propertyChangeFP == 0\r\n"));
	}
}


/**
 * FIRE_EVENT - macro for all fireXXX methods (which
 *   all are basically identical to one another...)
 *
 * Note: the event and source objects passed in are globalReferences;
 *       It is critical that releaseJavaObject() be called
 *       on them once they are no longer needed, otherwise
 *       the JavaVM/JNI will suffer memory leaks
 *
 */
#define FIRE_EVENT(method, FPprototype, eventFP)							        	\
	void AccessBridgeEventHandler::method(long vmID, jobject event, jobject source) { \
		DEBUG(char debugBuf[255]);						\
		DEBUG(sprintf(debugBuf, "\r\nCalling method(%X, %X); vmID = %X\r\n",    \
                       event, source, vmID));                                   	\
		DEBUG(AppendToCallInfo(debugBuf));					\
		if (eventFP != (FPprototype) 0) {					\
			eventFP(vmID, event, source);					\
		} else {								\
                        DEBUG(AppendToCallInfo("  Error! eventFP == 0\r\n"));		\
                }                                                                       \
	}

    void AccessBridgeEventHandler::fireJavaShutdown(long vmID) { 
        DEBUG(char debugBuf[255]);
        DEBUG(sprintf(debugBuf, "\r\nCalling fireJavaShutdown; vmID = %X\r\n", vmID));  
        DEBUG(AppendToCallInfo(debugBuf));
        if (javaShutdownFP != (AccessBridge_JavaShutdownFP) 0) {
            javaShutdownFP(vmID);
        } else {	
            DEBUG(AppendToCallInfo("  Error! javaShutdownFP == 0\r\n"));
        } 
    }

FIRE_EVENT(fireFocusGained, AccessBridge_FocusGainedFP, focusGainedFP)
FIRE_EVENT(fireFocusLost, AccessBridge_FocusLostFP, focusLostFP)
FIRE_EVENT(fireCaretUpdate, AccessBridge_CaretUpdateFP, caretUpdateFP)
FIRE_EVENT(fireMouseClicked, AccessBridge_MouseClickedFP, mouseClickedFP)
FIRE_EVENT(fireMouseEntered, AccessBridge_MouseEnteredFP, mouseEnteredFP)
FIRE_EVENT(fireMouseExited, AccessBridge_MouseExitedFP, mouseExitedFP)
FIRE_EVENT(fireMousePressed, AccessBridge_MousePressedFP, mousePressedFP)
FIRE_EVENT(fireMouseReleased, AccessBridge_MouseReleasedFP, mouseReleasedFP)
FIRE_EVENT(fireMenuCanceled, AccessBridge_MenuCanceledFP, menuCanceledFP)
FIRE_EVENT(fireMenuDeselected, AccessBridge_MenuDeselectedFP, menuDeselectedFP)
FIRE_EVENT(fireMenuSelected, AccessBridge_MenuSelectedFP, menuSelectedFP)
FIRE_EVENT(firePopupMenuCanceled, AccessBridge_PopupMenuCanceledFP, popupMenuCanceledFP)
FIRE_EVENT(firePopupMenuWillBecomeInvisible, AccessBridge_PopupMenuWillBecomeInvisibleFP, popupMenuWillBecomeInvisibleFP)
FIRE_EVENT(firePopupMenuWillBecomeVisible, AccessBridge_PopupMenuWillBecomeVisibleFP, popupMenuWillBecomeVisibleFP)


/**
 * FIRE_PROPERTY_CHANGE - macro for all fireXXX methods (which
 *   all are basically identical to one another...
 *
 * Note: the event and source objects passed in are globalReferences;
 *       It is critical that releaseJavaObject() be called
 *       on them once they are no longer needed, otherwise
 *       the JavaVM/JNI will suffer memory leaks
 *
 */
#define FIRE_PROPERTY_CHANGE(method, FPprototype, eventFP)								\
	void AccessBridgeEventHandler::method(long vmID, jobject event, jobject source) { \
		DEBUG(char debugBuf[255]);														\
		DEBUG(sprintf(debugBuf, "\r\nFiring a no-param property change (%X, %X):\r\n", event, source));		\
		DEBUG(AppendToCallInfo(debugBuf));												\
		if (eventFP != (FPprototype) 0) {												\
			eventFP(vmID, event, source);												\
		} else {																		\
			DEBUG(AppendToCallInfo("  Error! eventFP == 0\r\n"));						\
		}																				\
	}

/**
 * FIRE_STRING_PROPERTY_CHANGE - macro for all firePropertyXXXChange methods
 *   that have strings as the old/new values

 * Note: the event and source objects passed in are globalReferences;
 *       It is critical that releaseJavaObject() be called
 *       on them once they are no longer needed, otherwise
 *       the JavaVM/JNI will suffer memory leaks
 *
 */
#define FIRE_STRING_PROPERTY_CHANGE(method, FPprototype, eventFP, oldValue, newValue)	\
	void AccessBridgeEventHandler::method(long vmID, jobject event, jobject source,  \
                                          wchar_t *oldValue, wchar_t *newValue) {             \
		DEBUG(char debugBuf[255]);														\
		DEBUG(sprintf(debugBuf, "\r\nFiring a string property change (%X, %X, %s, %s):\r\n", event, source, oldValue, newValue));		\
		DEBUG(AppendToCallInfo(debugBuf));												\
		if (eventFP != (FPprototype) 0) {												\
			eventFP(vmID, event, source, oldValue, newValue);							\
		} else {																		\
			DEBUG(AppendToCallInfo("  Error! eventFP == 0\r\n"));						\
		}																				\
	}


/**
 * FIRE_INT_PROPERTY_CHANGE - macro for all firePropertyXXXChange methods
 *   that have ints as the old/new values
 *
 * Note: the event and source objects passed in are globalReferences;
 *       It is critical that releaseJavaObject() be called
 *       on them once they are no longer needed, otherwise
 *       the JavaVM/JNI will suffer memory leaks
 *
 */
#define FIRE_INT_PROPERTY_CHANGE(method, FPprototype, eventFP)					    	\
	void AccessBridgeEventHandler::method(long vmID, jobject event, jobject source,  \
                                          int oldValue, int newValue) {                 \
		DEBUG(char debugBuf[255]);														\
		DEBUG(sprintf(debugBuf, "\r\nFiring an int property change (%X, %X, %d, %d):\r\n", event, source, oldValue, newValue));		\
		DEBUG(AppendToCallInfo(debugBuf));												\
		if (eventFP != (FPprototype) 0) {												\
			eventFP(vmID, event, source, oldValue, newValue);							\
		} else {																		\
			DEBUG(AppendToCallInfo("  Error! eventFP == 0\r\n"));						\
		}																				\
	}



/**
 * FIRE_AC_PROPERTY_CHANGE - macro for all firePropertyXXXChange methods
 *   that have jobjects (AccessibleContexts) as the old/new values
 *
 * Note: the event and source objects passed in are globalReferences;
 *       It is critical that releaseJavaObject() be called
 *       on them once they are no longer needed, otherwise
 *       the JavaVM/JNI will suffer memory leaks
 *
 */
#define FIRE_AC_PROPERTY_CHANGE(method, FPprototype, eventFP)					    	\
	void AccessBridgeEventHandler::method(long vmID, jobject event, jobject source,  \
                                          jobject oldValue, jobject newValue) {         \
		DEBUG(char debugBuf[255]);														\
		DEBUG(sprintf(debugBuf, "\r\nFiring an AC property change (%X, %X, %X, %X):\r\n", event, source, oldValue, newValue));		\
		DEBUG(AppendToCallInfo(debugBuf));												\
		if (eventFP != (FPprototype) 0) {												\
			eventFP(vmID, event, source, oldValue, newValue);							\
		} else {																		\
			DEBUG(AppendToCallInfo("  Error! eventFP == 0\r\n"));						\
		}																				\
	}


FIRE_STRING_PROPERTY_CHANGE(firePropertyNameChange, 
                            AccessBridge_PropertyNameChangeFP,
                            propertyNameChangeFP, oldName, newName)
FIRE_STRING_PROPERTY_CHANGE(firePropertyDescriptionChange, 
                            AccessBridge_PropertyDescriptionChangeFP,
                            propertyDescriptionChangeFP,
                            oldDescription, newDescription)
FIRE_STRING_PROPERTY_CHANGE(firePropertyStateChange, 
                            AccessBridge_PropertyStateChangeFP,
                            propertyStateChangeFP, oldState, newState)
FIRE_STRING_PROPERTY_CHANGE(firePropertyValueChange, 
                            AccessBridge_PropertyValueChangeFP,
                            propertyValueChangeFP, oldValue, newValue)
FIRE_PROPERTY_CHANGE(firePropertySelectionChange, 
                     AccessBridge_PropertySelectionChangeFP,
                     propertySelectionChangeFP)
FIRE_PROPERTY_CHANGE(firePropertyTextChange, 
                     AccessBridge_PropertyTextChangeFP,
                     propertyTextChangeFP);
FIRE_INT_PROPERTY_CHANGE(firePropertyCaretChange,
                         AccessBridge_PropertyCaretChangeFP,
                         propertyCaretChangeFP)
FIRE_PROPERTY_CHANGE(firePropertyVisibleDataChange, 
                     AccessBridge_PropertyVisibleDataChangeFP,
                     propertyVisibleDataChangeFP)
FIRE_AC_PROPERTY_CHANGE(firePropertyChildChange,
                        AccessBridge_PropertyChildChangeFP,
                        propertyChildChangeFP)
FIRE_AC_PROPERTY_CHANGE(firePropertyActiveDescendentChange,
                        AccessBridge_PropertyActiveDescendentChangeFP,
                        propertyActiveDescendentChangeFP)

FIRE_STRING_PROPERTY_CHANGE(firePropertyTableModelChange,
                     AccessBridge_PropertyTableModelChangeFP,
                     propertyTableModelChangeFP, oldValue, newValue)
