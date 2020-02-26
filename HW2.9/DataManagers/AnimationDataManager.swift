//
//  AnimationDataManager.swift
//  HW2.9
//
//  Created by Valeria Khristinina on 26/02/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import Spring

class AnimationDataManager {
	
	static let shared = AnimationDataManager()
	
	let animations: [Spring.AnimationPreset] = [
        .Shake,
        .Pop,
        .Morph,
        .Squeeze,
        .Wobble,
        .Swing,
        .FlipX,
        .FlipY,
        .Fall,
        .SqueezeLeft,
        .SqueezeRight,
        .SqueezeDown,
        .SqueezeUp,
        .SlideLeft,
        .SlideRight,
        .SlideDown,
        .SlideUp,
        .FadeIn,
        .FadeOut,
        .FadeInLeft,
        .FadeInRight,
        .FadeInDown,
        .FadeInUp,
        .ZoomIn,
        .ZoomOut,
        .Flash
    ]
}
