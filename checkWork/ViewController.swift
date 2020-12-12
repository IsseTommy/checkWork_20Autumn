//
//  ViewController.swift
//  checkWork
//
//  Created by Tommy on 2020/12/11.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    let count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        @IBOutlet func add() {
            count += 1
        }

        @IBAction func minus() {
            count -= 1
        }
        
        @IBAction func double() {
            count *= 2
        }
        
        @IBAction func half() {
            count /= 2
        }
        
        @IBAction func clear() {
            count = 0
        }
        
        func updateUI() {
            label.text = count
            if count < 0 {
                label.textColor = .blue
            }
            if count => 10 {
                label.textColor = .red
            }
            label.textColor = .black
        }
    }

