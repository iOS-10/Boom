//
//  ViewController.swift
//  Boom
//
//  Created by Abdurrahman on 9/13/16.
//  Copyright © 2016 AR Ehsan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var virusIcon: UIImageView!
	@IBOutlet weak var virusLabel: UILabel!
	@IBOutlet weak var infoLabel: UILabel!
	@IBOutlet weak var btnOutlet: UIButton!
	@IBOutlet weak var bg: UIView!
	
	var isShown = false
	
	override func viewDidLoad() {
		super.viewDidLoad()
		btnOutlet.layer.cornerRadius = 5
	}
	
	@IBAction func btn(_ sender: AnyObject) {
		if isShown == false {
			showAll()
			bg.backgroundColor = red
			btnOutlet.setTitleColor(red, for: .normal)
			btnOutlet.setTitle("GO BACK!", for: .normal)
			isShown = true
		} else {
			hideAll()
			bg.backgroundColor = green
			btnOutlet.setTitle("ENTER IF YOU DARE...", for: .normal)
			btnOutlet.setTitleColor(green, for: .normal)
			isShown = false
		}
	}
	
	func showAll() {
		virusIcon.isHidden = false
		virusLabel.isHidden = false
		infoLabel.isHidden = false
	}
	
	func hideAll() {
		virusIcon.isHidden = true
		virusLabel.isHidden = true
		infoLabel.isHidden = true
	}
}

