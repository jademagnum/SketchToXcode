//
//  LoginViewController.swift
//  SketchToXcode
//
//  Created by Jade Thomason on 3/12/18.
//  Copyright © 2018 Jade Thomason. All rights reserved.
//

import UIKit

enum ButtonState {
    case selected
    case notSelected
}

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Properties
    var buttonState: ButtonState = .notSelected
    
    //MARK: - Actions
    
    func setupUI() {
        //This function is used to match out Sketch design
        headerImageView.image = #imageLiteral(resourceName: "2")
        headerImageView.contentMode = .scaleAspectFill
        profileImageView.image = #imageLiteral(resourceName: "Profile")
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.layer.frame.height / 2
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.borderWidth = 5
        lineView.backgroundColor = .black
        
        //Button UI
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        loginButton.backgroundColor = UIColor.primaryPurple
        loginButton.layer.borderColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        loginButton.layer.borderWidth = 2
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = UIFont(name: "Georgia", size: 15)
    }
    
    func updateViews() {
        switch buttonState {
            
        case .selected:
            buttonState = .notSelected
            loginButton.setTitle("Update", for: .normal)
        case .notSelected:
            buttonState = .selected
            loginButton.setTitle("Login", for: .normal)
        }
        
    }

    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    @IBOutlet weak var lineView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButtonPushed(_ sender: UIButton) {
        updateViews()
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
