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
    private let user = User.getInfo()
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
        
        forgotUserNameTitleLabel.titleLabel?.adjustsFontSizeToFitWidth = true
        forgotPasswordTitleLabel.titleLabel?.adjustsFontSizeToFitWidth = true
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
        
        if userName != user.login || password != user.password {
            callAlert(with: "Oooops!", message: "User name or Password are wronge!")
            return
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

// MARK: Navigation
extension LogInViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        let fullName = "\(user.persone.name) \(user.persone.surmane)"
        
        for viewController in tabBarController.viewControllers ?? [] {

            if let profileVC = viewController as? ProfileViewController {
                profileVC.userName = fullName
            } else if let navigationController = viewController as? UINavigationController {
                let infoVC = navigationController.topViewController as! InfoViewController
                infoVC.navigationBarTitle = fullName
                
                infoVC.userFamilyStatus = user.persone.shortInformation.familyStatus.rawValue
                infoVC.userAge = user.persone.shortInformation.age
                infoVC.userCurrentCity = user.persone.shortInformation.currentCity
                infoVC.userGender = user.persone.shortInformation.gender.rawValue
                infoVC.userPet = user.persone.shortInformation.pet.rawValue
                infoVC.userProfileImage = user.persone.foto.mainProfileFoto
                
                infoVC.user = user
            }
        }
    }
}
