//
//  ViewController.swift
//  Postcard
//
//  Created by Eric Watjen on 6/24/15.
//  Copyright © 2015 Eric Watjen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var enterNameTextField: UITextField!
	@IBOutlet weak var enterMessageTextField: UITextField!
	@IBOutlet weak var sendMailButton: UIButton!
	@IBOutlet weak var nameLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func sendMailButtonPressed(sender: UIButton) {
		messageLabel.hidden = false
		messageLabel.text = enterMessageTextField.text
		messageLabel.textColor = UIColor.blueColor()
		
		enterMessageTextField.text = ""
		enterMessageTextField.resignFirstResponder() // gets rid of keyboard
		
		nameLabel.hidden = false
		nameLabel.text = enterNameTextField.text
		nameLabel.textColor = UIColor.greenColor()
		
		enterNameTextField.text = ""
		enterNameTextField.resignFirstResponder()
		
		sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
	}

}

