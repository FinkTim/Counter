//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Шандалий on 30.04.24.
//

import UIKit

class ViewController:
    UIViewController {
    
    private var counter: Int = 0
    
    @IBOutlet weak private var changeHistoryTextView: UITextView!
    @IBOutlet weak private var counterLabel: UILabel!
    @IBOutlet weak private var minusButton: UIButton!
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var resetButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.sizeToFit()
        changeHistoryTextView.isEditable = false
        changeHistoryTextView.isScrollEnabled = true
    }

    @IBAction private func plusButtonDidTap(_ sender: Any) {
        counter += 1
        self.counterLabel.text = "Значение счетчика: " + String(counter)
        self.changeHistoryTextView.text += "[\(Date())]: значение изменено на +1"
    }
    
    @IBAction private func minusButtonDidTap(_ sender: Any) {
        if counter != 0 {
            counter -= 1
            self.changeHistoryTextView.text += "[\(Date())]: значение изменено на -1"
        } else {
            self.changeHistoryTextView.text += "[\(Date())]: попытка уменьшить значение счётчика ниже 0"
        }
        self.counterLabel.text = "Значение счетчика: " + String(counter)
    }
    
    @IBAction private func resetDidTap(_ sender: Any) {
        counter = 0
        self.counterLabel.text = "Значение счетчика: " + String(counter)
        self.changeHistoryTextView.text += "[\(Date())]: значение сброшено"
    }
}

