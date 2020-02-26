//
//  ViewController.swift
//  HW2.9
//
//  Created by Valeria Khristinina on 25/02/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {
	
	@IBOutlet var animationView: SpringView!
	@IBOutlet var animationNameLabel: UILabel!
	@IBOutlet var animationButton: SpringButton!
	
	private let animationsName = AnimationDataManager.shared
	private var indexOfAnimation = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		animationView.layer.cornerRadius = 15
		animationButton.layer.cornerRadius = 15
	  
		animationButton.setTitle("Start '\(animationsName.animations[indexOfAnimation].rawValue)' animation",
								for: .normal)
	}
	
	@IBAction func runAnimation(_ sender: SpringButton) {
	  
		if indexOfAnimation == animationsName.animations.count {
			indexOfAnimation = 0
		}
		
		animationNameLabel.text = animationsName.animations[indexOfAnimation].rawValue
		animationView.animation = animationsName.animations[indexOfAnimation].rawValue
		animationView.duration = 2.5
		
		animationView.animate()
		indexOfAnimation += 1
		
		if indexOfAnimation < animationsName.animations.count {
			sender.setTitle("Next animation is '\(animationsName.animations[indexOfAnimation].rawValue)'", for: .normal)
		} else {
			sender.setTitle("Next animation is '\(animationsName.animations[0].rawValue)'", for: .normal)
		}
	}
}

