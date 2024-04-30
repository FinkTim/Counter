//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Шандалий on 30.04.24.
//

import UIKit

class ViewController:
    UIViewController {
    
    var counter: Int = 0

    @IBOutlet weak var buttonLabel: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.sizeToFit()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        counter += 1
        self.counterLabel.text = "Значение счетчика: " + String(counter)
    }
    
}

