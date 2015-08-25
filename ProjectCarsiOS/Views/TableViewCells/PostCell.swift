import Foundation
import UIKit

class PostCell: UITableViewCell {
	
	@IBOutlet weak var licencePlateLabel: UIButton!
	@IBOutlet weak var messageLabel: UILabel!
	
	var plateButtonCallback: (String -> Void)?
	
	func render(post: Post) {
		licencePlateLabel.setTitle(post.carPlate, forState: UIControlState.Normal)
		messageLabel.text = post.message
	}
	
	override func setSelected(selected: Bool, animated: Bool) {
		super.setSelected(false, animated: animated)
	}
	
	
	@IBAction func plateButtonTouched(sender: AnyObject) {
		if plateButtonCallback != nil {
			plateButtonCallback!(licencePlateLabel.titleLabel!.text!)
		}
	}
	
}