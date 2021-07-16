//
//  LogInViewController.swift
//  SingInApp
//
//  Created by Nikita on 12.07.21.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var forgotUserNameTitleLabel: UIButton!
    @IBOutlet weak var forgotPasswordTitleLabel: UIButton!
    
    // MARK: private properties
    private let users = User.getInfo()
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
        
        forgotUserNameTitleLabel.titleLabel?.adjustsFontSizeToFitWidth = true
        forgotPasswordTitleLabel.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        for viewController in tabBarController.viewControllers ?? [] {
            var fullName = ""
            var gender = ""
            
            for user in users {
                fullName = "\(user.persone.name) \(user.persone.surmane)"
                gender = "\(user.persone.gender.rawValue)"
            }
            
            if let profileVC = viewController as? ProfileViewController {
                profileVC.userName = fullName
                profileVC.userGender = gender
            } else if let navigationController = viewController as? UINavigationController {
                let infoVC = navigationController.topViewController as! InfoViewController
                infoVC.titleName = fullName
            }
        }
    }
    
    // MARK: IBActions
    @IBAction func showForgotUserName() {
        callAlert(with: "Oooops!", message: "Your login: Nikita")
    }
    
    @IBAction func showForgotPassword() {
        callAlert(with: "Oooops!", message: "Your password: pass")
    }
    
    @IBAction func logInButtonPressed() {
        let userName = userNameTF.text
        let password = passwordTF.text
        
        for user in users {
            if userName != user.login || password != user.password {
                callAlert(with: "Oooops!", message: "User name or Password are wronge!")
                return
            }
        }
        
        performSegue(withIdentifier: "ProfileVC", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: private methods
    private func callAlert(with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true) {
            self.passwordTF.text = ""
        }
    }
}

// MARK: working with keyboard
extension LogInViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userNameTF:
            passwordTF.becomeFirstResponder()
        default:
            logInButtonPressed()
        }
        
        return true
    }
}
