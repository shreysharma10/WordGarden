//
//  ViewController.swift
//  WordGarden
//
//  Created by Shrey Sharma on 2/7/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsInGame: UILabel!
    @IBOutlet weak var wordBeingRevealedLabel: UILabel!
    @IBOutlet weak var guessedLetterTextField: UITextField!
    @IBOutlet weak var guessALetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let text = guessedLetterTextField.text!
        guessALetterButton.isEnabled = !(text.isEmpty)
    }

    func updateUIAAfterGuess() {
        guessedLetterTextField.resignFirstResponder()
        guessedLetterTextField.text! = ""
        guessALetterButton.isEnabled = false
    
    }
   
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        sender.text = String(sender.text?.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessALetterButton.isEnabled = !(sender.text!.isEmpty)
        
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAAfterGuess()
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAAfterGuess()

    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
}

