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
    
    override var shouldAutorotate: Bool {
        return true
    }
    @IBOutlet weak var damn: UILabel!

    @IBOutlet weak var titties: UILabel!
    
    var totalCorrect = 0
    @IBAction func fuck(_ sender: UIButton) {
        print("help")
        let headsOrTails = getRando()
        if headsOrTails == false{
            print("Correeccccttttt")
            totalCorrect = totalCorrect + 1
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
    @IBAction func shit(_ sender: UIButton) {
        print("help got")
        let headsOrTails = getRando()
        if headsOrTails == false{
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
