import Foundation
import UIKit
import NSStringMask

class CreatePostViewController: UIViewController {
	
	@IBOutlet weak var carplateTextField: UITextFieldMask!
	@IBOutlet weak var messageTextView: UITextView!
	
	override func viewDidLoad() {
		carplateTextField.mask = NSStringMask(pattern: "([A-Z]{3})-([0-9]{4})")
		carplateTextField.placeholder = "AAAA-0000"
	}
	
	@IBAction func createPostButtonTouched(sender: AnyObject) {
		
		let plate = carplateTextField.text
		let message = messageTextView.text
		
		Post.createPost(plate, message: message) { (post) in
			println("Successfully sent \(post)")
			self.navigationController?.popViewControllerAnimated(true)
		}
	}
}