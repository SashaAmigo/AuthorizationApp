//
//  GreetingViewController.swift
//  AuthorizationApp
//
//  Created by Саша Amigo on 31.03.2023.
//

import UIKit

final class GreetingViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var greetingUserTF: UILabel!
    
    //MARK: - Public Method
    var greetingUser: String!
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUserTF.text = "Welcome, \(greetingUser ?? "User")!"
        backgroundGradient()
    }
    
    //MARK: - Private Methods
    private func backgroundGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemCyan.cgColor,
            UIColor.systemMint.cgColor,
            UIColor.systemOrange.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
