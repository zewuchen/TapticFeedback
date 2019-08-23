//
//  ViewController.swift
//  TapticFeedback
//
//  Created by Zewu Chen on 23/08/19.
//  Copyright © 2019 Zewu Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tapticsuttons:[UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func erroButton(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }

    @IBAction func sucessoButton(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
    @IBAction func perigoButton(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
    
    @IBAction func lightButton(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func mediumButton(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func heavyButton(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func selecaoButton(_ sender: Any) {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
}

