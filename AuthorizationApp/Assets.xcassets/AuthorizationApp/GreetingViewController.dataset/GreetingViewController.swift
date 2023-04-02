//
//  GreetingViewController.swift
//  AuthorizationApp
//
//  Created by Саша Amigo on 31.03.2023.
//

import UIKit

class GreetingViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var greetingUserTF: UILabel!
    
    //MARK: - Public Method
    var greetingUser: String!
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUserTF.text = "Hello, \(greetingUser ?? "User")"
    }
    //MARK: - IB Action
 //   @IBAction func logOutTupped(_ sender: Any) {
 //       dismiss(animated: true)
  //  }
}
