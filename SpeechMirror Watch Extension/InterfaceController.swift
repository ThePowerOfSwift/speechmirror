import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet private weak var label: WKInterfaceLabel!
    private var currentText = ""

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        NotificationCenter.default.addObserver(self, selector: #selector(receivedMessage(note:)), name: .messageReceived, object: nil)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @objc private dynamic func receivedMessage(note: Notification) {
        let result = note.object as! SpeechResult
        DispatchQueue.main.async {
            self.label.setText(result.message)
            self.scroll(to: self.label, at: .bottom, animated: false)
        }
    }
}
