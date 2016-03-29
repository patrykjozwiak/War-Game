//
//  ViewController.swift
//  Shit
//
//  Created by Patryk Jozwiak on 25.03.2016.
//  Copyright © 2016 Patryk Jozwiak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var FirstCardImageView: UIImageView!
	
	@IBOutlet weak var SecondCardImageView: UIImageView!
	
	@IBOutlet weak var playRoundButton: UIButton!
	
	@IBOutlet weak var backgroundImageView: UIImageView!
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
	}

	override func didReceiveMemoryWarning() {
		
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func playTapped(sender: UIButton) {

		var firstRandomNum = arc4random_uniform(13) + 1
		var firstCardString:String = String(format: "card%i", firstRandomNum)
		
		var secondRandomNum = arc4random_uniform(13) + 1
		var secondCardString:String = String(format: "card%i", secondRandomNum)
		
		self.FirstCardImageView.image = UIImage(named: firstCardString)
		self.SecondCardImageView.image = UIImage(named: secondCardString)
		
	}


}

