//
//  ViewController.swift
//  ZeyuZCalculator
//
//  Created by Jay Zhang on 1/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    var loadingNum = ""
    var start = true

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func numPressed(_ sender: UIButton) {
        let labelNum = Int(displayLabel.text!)
        displayLabel.text = "\(labelNum! * 10 + Int(sender.titleLabel!.text!)!)"
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        if(start == true){
            loadingNum = displayLabel.text!
            displayLabel.text = "0"
            start = false
        }
        else{
            add()
            loadingNum = displayLabel.text!
            displayLabel.text = "0"
            start = false
        }
        
    }
    
    func add(){
        var result:Int
        let num1 = Int(loadingNum)
        let num2 = Int(displayLabel.text!)
        result = num1! + num2!
        displayLabel.text = "\(result)"
        start = true
    }
    
    
    @IBAction func equalpressed(_ sender: UIButton) {
        add()
    }
    
    @IBAction func clearpressed(_ sender: UIButton) {
        loadingNum = "0"
        displayLabel.text = "0"
        start = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

