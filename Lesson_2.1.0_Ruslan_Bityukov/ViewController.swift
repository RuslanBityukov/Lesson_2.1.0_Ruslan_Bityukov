//
//  ViewController.swift
//  Lesson_2.1.0_Ruslan_Bityukov
//
//  Created by Руслан Битюков on 17.08.2021.
//

import UIKit

enum TrafficLightColor {
    case red
    case yellow
    case green
}

private let hiden: CGFloat = 0.3
private let visibel: CGFloat = 1

private var redColor = TrafficLightColor.red

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var buttonInfo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonInfo.layer.cornerRadius = 10
        
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.layer.cornerRadius = greenView.frame.size.width / 2
        
        redView.alpha = hiden
        yellowView.alpha = hiden
        greenView.alpha = hiden
    }

    @IBAction func startButtonPress() {
        
        buttonInfo.setTitle("NEXT", for: .normal)
        
        switch redColor {
        case .red:
            greenView.alpha = hiden
            redView.alpha = visibel
            redColor = .yellow
        case .yellow:
            redView.alpha = hiden
            yellowView.alpha = visibel
            redColor = .green
        case .green:
            yellowView.alpha = hiden
            greenView.alpha = visibel
            redColor = .red
        }
    }
}
