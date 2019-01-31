//
//  GameScene.swift
//  Mt. Arcade
//
//  Created by Mark Mc Veigh on 1/21/19.
//  Copyright © 2019 Mark Mc Veigh. All rights reserved.
//

import SpriteKit
import GameplayKit

public var headsTails = true

class GameScene: SKScene {
    
    
    
    var myDog = SKSpriteNode()
    let rotateDog = SKAction.rotate(byAngle: 1.0, duration: 1.0)
    let fadeOut = SKAction.fadeOut(withDuration: 1.0)
    let fadeIn = SKAction.fadeIn(withDuration: 1.0)
    
    
    override func didMove(to view: SKView) {
        myDog = self.childNode(withName: "quarter") as! SKSpriteNode
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        if headsTails{
            let texture1 = SKTexture(imageNamed: "quarter1")
            myDog.texture = texture1
        }
        else{
            let texture2 = SKTexture(imageNamed: "tails")
            myDog.texture = texture2
        }
    }
}
