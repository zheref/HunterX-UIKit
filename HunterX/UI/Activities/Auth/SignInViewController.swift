//
//  ViewController.swift
//  HunterX
//
//  Created by Sergio Daniel on 15/01/21.
//

import UIKit

class SignInViewController: UITableViewController {
    
    static let defaultScrollViewInsets = UIEdgeInsets(top: 180, left: 0, bottom: 0, right: 0)
    
    @IBOutlet var usernameTextField: CustomTextField!
    @IBOutlet var passwordTextField: CustomTextField!
    @IBOutlet var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.contentInset = SignInViewController.defaultScrollViewInsets
        
        signUpButton.layer.borderWidth = 1
        signUpButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        NotificationCenter.default.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func adjustForKeyboard(notification: Notification) {
//        guard let keyboardVal = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {
//            return
//        }

        if notification.name == UIResponder.keyboardWillHideNotification {
            tableView.contentInset = SignInViewController.defaultScrollViewInsets
        } else {
            // let kbViewEndFrame = view.convert(keyboardVal.cgRectValue, from: view.window)
            tableView.contentInset = UIEdgeInsets(top: 50,
                                                  left: 0,
                                                  bottom: 0,
                                                  //bottom: kbViewEndFrame.height - view.safeAreaInsets.bottom,
                                                  right: 0)
        }

        tableView.scrollIndicatorInsets = tableView.contentInset
    }


}

