import bb.cascades 1.0
import bb.system 1.0

MenuDefinition {
    
    settingsAction: SettingsActionItem {
        onTriggered: {
            toast.body = "Settings"
            toast.show();
        }
    }
    
    helpAction: HelpActionItem {
        onTriggered: {
            toast.body = "Help"
            toast.show();
        }
    }
    
    actions: [
        ActionItem {
            title: "Send Query"
            
            onTriggered: {
                toast.body = "Query Added"
                toast.show();
            }
        }
    ]

    attachedObjects: [
        SystemToast {
            id: toast
            body: "Toasty"
        }
    ]
}
