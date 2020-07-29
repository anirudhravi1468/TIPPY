//
//  ViewController.swift
//  TIPPY
//
//  Created by Anirudh Ravi on 7/19/20.
//  Copyright © 2020 Anirudh Ravi. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBAction func buttonAnimate(_ sender: Any) {
    }
    @IBOutlet weak var numberOfPeople: UILabel!
    @IBOutlet weak var eachPays: UILabel!
   
    @IBOutlet weak var peopleStepper: UIStepper!
    
    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
    
        // Do any additional setup after loading the view.
        
    }
   
    
    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        // perfect
        //whats up
    }
     
   
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //get the bill amount
        
        let bill = Double(self.billField.text!) ?? 0
        
        //calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
       
        
        let tip = bill * tipPercentages[self.tipController.selectedSegmentIndex]
        let total = bill + tip
        let totalPP = total / self.peopleStepper.value
        
        //Updatate the total and tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLable.text = String(format: "$%.2f", total)
        eachPays.text = String(format: "$%.2f", totalPP)
        
       }
    
    
    @IBAction func countPeople(_ sender: UIStepper) {
       let counter = self.peopleStepper.value
        self.numberOfPeople.text = String(format: "Split Total With %.0f of people", counter)
        
        
    //  }
   // @IBAction func onClick(_ sender : UIButton){
     //   UIViewController.
        
   // }
    
   // func animate( isAnimate:Bool){
     //   UIViewPropertyAnimator(duration: 0.4, curve: .easeInOut)
     //   UIView.ani
  }
    
}

    



