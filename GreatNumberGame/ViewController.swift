//
//  ViewController.swift
//  GreatNumberGame
//
//  Created by Maha saad on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfNum = Int.random(in: 1...100)

    @IBOutlet weak var userInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        
        let userValue = Int(userInput.text!)!
        
        if userValue == listOfNum {
            
            listOfNum = Int.random(in: 1...5)
            
            userInput.text=nil
            let alert = UIAlertController(title: "Correct ", message: " \(userValue) was correct!!!! ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Play Agine", style: .cancel, handler: { UIAlertAction in
                print("tapped play")
            }))
            
            alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.3)
            present(alert, animated: true)
            
        }else if userValue < listOfNum {
            
            userInput.text=nil
            let alert = UIAlertController(title: "Incorrect ", message: " \(userValue) is too low ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Guess Agine", style: .cancel, handler: { UIAlertAction in
                print("tapped Guess Agine")
            }))
            
            alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
            
            present(alert, animated: true)
            
        }else if userValue > listOfNum {
            userInput.text=nil
            let alert = UIAlertController(title: "InCorrect ", message: " \(userValue) is too high ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Guess Agine", style: .cancel, handler: { UIAlertAction in
                print("apped Guess Agine")
            }))
            alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
            
            present(alert, animated: true)
        }
        
    }
    
}

