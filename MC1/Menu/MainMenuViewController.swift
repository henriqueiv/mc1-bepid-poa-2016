//
//  MainMenuViewController.swift
//  MC1
//
//  Created by Henrique Valcanaia on 3/23/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    private enum Segue: String, CustomStringConvertible {
        case SinglePlayer = "gotoSinglePlayer"
        case Multiplayer = "gotoMultiplayerMenu"
        
        var description: String {
            return self.rawValue
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let segueIdentifier = segue.identifier, let _ = Segue(rawValue: segueIdentifier) else {
            return
        }
        
        switch Segue(rawValue: segueIdentifier)! {
        case Segue.Multiplayer:
            let vc = segue.destinationViewController
            presentViewController(vc, animated: true, completion: nil)
            
        case Segue.SinglePlayer:
            print("gotoSinglePlayer")
        }
    }
    
    // MARK: IBActions
    @IBAction func singlePlayerBtnTouched(sender: AnyObject) {
        gotoSinglePlayer()
    }
    
    @IBAction func multiPlayerBtnTouched(sender: AnyObject) {
        gotoMultiplayer()
    }
    
    // MARK: Private helpers
    private func gotoSinglePlayer() {
        print("Single player")
    }
    
    private func gotoMultiplayer() {
        print("Multiplayer")
        performSegueWithIdentifier(Segue.Multiplayer.description, sender: nil)
    }
    
}
