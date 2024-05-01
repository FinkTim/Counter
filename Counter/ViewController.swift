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
    
    let date = Date()

    
    @IBOutlet weak var changeHistory: UITextView!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.sizeToFit()
        changeHistory.isEditable = false
        changeHistory.isScrollEnabled = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func plusButtonDidTap(_ sender: Any) {
        counter += 1
        self.counterLabel.text = "Значение счетчика: " + String(counter)
        self.changeHistory.text += "[\(date)]: значение изменено на +1"
    }
    
    @IBAction func minusButtonDidTap(_ sender: Any) {
        if counter != 0 {
            counter -= 1
            self.changeHistory.text += "[\(date)]: значение изменено на -1"
        } else {
            self.changeHistory.text += "[\(date)]: попытка уменьшить значение счётчика ниже 0"
        }
        self.counterLabel.text = "Значение счетчика: " + String(counter)
    }
    
    @IBAction func resetDidTap(_ sender: Any) {
        counter = 0
        self.counterLabel.text = "Значение счетчика: " + String(counter)
        self.changeHistory.text += "[\(date)]: значение сброшено"
    }
}

