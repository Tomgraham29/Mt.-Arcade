//
//  GameViewController.swift
//  Mt. Arcade
//
//  Created by Mark Mc Veigh on 1/21/19.
//  Copyright © 2019 Mark Mc Veigh. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        if let view = self.view as! SKView? {
            print("Next thing worked")
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                print("Should see dog")
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
  
    
    let fadeOut = SKAction.fadeOut(withDuration: 1.0)
    let fadeIn = SKAction.fadeIn(withDuration: 1.0)
    
    @IBOutlet weak var damn: UILabel!
    
    
    @IBOutlet weak var titties: UILabel!
    
    
    var totalCorrect = 0
    var quarterSeen = true
    @IBAction func fuck(_ sender: UIButton) {
        print("help")
        if quarterSeen {
            thisDog.run(fadeOut)
            quarterSeen = false
        }
        else{
            thisDog.run(fadeIn)
            quarterSeen = true
        }
        headsTails = getRando()
        if !headsTails {
            print("Correeccccttttt")
            totalCorrect += 1
            let totalPrint = String(totalCorrect)
            titties.text = totalPrint
            damn.text = "It was Tails!"
        }
        else{
            print("You suck")
            totalCorrect = 0
            let totalPrint = String(totalCorrect)
            titties.text = totalPrint
            damn.text = "It was Heads!"
            
        }
    }
    
    @IBAction weak var titties: UILabel!
    
    @IBAction func shit(_ sender: UIButton) {
        print("help got")
        headsTails = getRando()
        if headsTails {
            totalCorrect = totalCorrect + 1
            let totalPrint = String(totalCorrect)
            titties.text = totalPrint
            damn.text = "It was Heads!"
        }
        else{
            print("You suck")
            totalCorrect = 0
            let totalPrint = String(totalCorrect)
            titties.text = totalPrint
            damn.text = "It was Tails!"
        }
    }
    
    func getRando() -> Bool {
        let rando = Bool.random()
        return rando
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
   

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
