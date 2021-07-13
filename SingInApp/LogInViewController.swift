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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let profileVC = segue.destination as? ProfileViewController else { return }

        profileVC.userName = userNameTF.text
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
}

extension LogInViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userNameTF:
            passwordTF.becomeFirstResponder()
        default:
            passwordTF.resignFirstResponder()
        }
        
        return true
    }
    
}
