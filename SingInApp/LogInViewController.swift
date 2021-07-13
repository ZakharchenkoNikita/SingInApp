//
//  LogInViewController.swift
//  SingInApp
//
//  Created by Nikita on 12.07.21.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func showForgotUserName() {
        callAlert(with: "Oooops", message: "Your login: Nikita")
    }
    
    @IBAction func showForgotPassword() {
        callAlert(with: "Oooops", message: "Your password: pass")
    }
    
    @IBAction func logInPressed() {
        presentProfileView()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        dismiss(animated: true)
    }
    
    private func callAlert(with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    private func presentProfileView() {
        
        checkTextFields()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let loginVC = storyboard.instantiateViewController(identifier: "ProfileVC") as? ProfileViewController else { return }
        
        loginVC.modalPresentationStyle = .fullScreen
        loginVC.userName = userNameTF.text
        
        show(loginVC, sender: nil)
    }
    
    private func checkTextFields() {
        let userName = userNameTF.text
        let password = passwordTF.text
        
        if let _ = userName?.isEmpty, let _ = password?.isEmpty, userName != "Nikita" || password != "pass" {
            callAlert(with: "Ooops!", message: "User name or Password are wronge!")
            passwordTF.text = ""
        }
    }
}

// MARK: Text field delegate

extension LogInViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userNameTF:
            passwordTF.becomeFirstResponder()
        default:
            presentProfileView()
        }
        
        return true
    }
    
}
