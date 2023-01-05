//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by 邱欣宇 on 1/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introdeceSelfDidTap(_ sender: UIButton) {
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

