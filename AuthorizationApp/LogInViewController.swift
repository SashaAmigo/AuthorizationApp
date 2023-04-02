//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Саша Amigo on 31.03.2023.
//

import UIKit

final class LogInViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var userLoginTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    
    //MARK: - Public Properties
    let userName = "1"
    let userPassword = "1"
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userLoginTF.text == userName , userPasswordTF.text == userPassword {
            guard let LogInVC = segue.destination as? GreetingViewController else {return}
            LogInVC.greetingUser = userLoginTF.text
        } else {
            wrongDataAlert("Wrong login or password", "Please check the entered data")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
            super.touchesBegan(touches, with: event)
    }
    
    //MARK: - IB Action
    @IBAction func forgotLoginTapped(_ sender: Any) {
        wrongDataAlert("Your login is", "\(userName)")
    }
    @IBAction func forgotPasswordTapper(_ sender: Any) {
        wrongDataAlert("Your password is", "\(userPassword)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userLoginTF.text = ""
        userPasswordTF.text = ""
    }
    
    //MARK: - Private Methods
    private func wrongDataAlert(_ title: String,_ message: String ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .cancel) {
            _ in self.userPasswordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
