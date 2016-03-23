//
//  MainMenuViewController.swift
//  MC1
//
//  Created by Henrique Valcanaia on 3/23/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    // MARK:
    @IBAction func singlePlayerBtnTouched(sender: AnyObject) {
        gotoSinglePlayer()
    }

    @IBAction func multiPlayerBtnTouched(sender: AnyObject) {
        gotoMultiplayer()
    }
    
    private func gotoSinglePlayer() {
        print("Single player")
    }
    
    private func gotoMultiplayer() {
        print("Multiplayer player")
    }
    
}
