//
//  LogInViewController.swift
//  SingInApp
//
//  Created by Nikita on 12.07.21.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var PasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let profileVC = segue.destination as? ProfileViewController else { return }

        profileVC.userName = userNameTF.text
    }
    
    @IBAction func showForgotUserName() {
    }
    
    @IBAction func showForgotPassword() {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        PasswordTF.text = ""
        dismiss(animated: true)
    }
    
}
