//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Артур Савинов on 19.12.2022.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {
    
    let profileHeaderView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        view.addSubview(myTextFields)
        view.addSubview(myButton)
        profileHeaderView.setupLayout()
    }
    
    var myTextFields: UITextField {
        let myTextFields = UITextField()
        myTextFields.frame = CGRect(x: 180, y: 260, width: 220, height: 40)
        myTextFields.borderStyle = .roundedRect
        myTextFields.placeholder = "test"
        myTextFields.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        myTextFields.layer.cornerRadius = 12
        myTextFields.layer.borderWidth = 1
        myTextFields.layer.borderColor = UIColor.black.cgColor
        myTextFields.layer.masksToBounds = true
        myTextFields.autocorrectionType = .no
        return myTextFields
    }
    
    private var myButton: UIButton {
        let myButton = UIButton()
            myButton.frame = CGRect(x: 27, y: 310, width: 380, height: 50)
            myButton.backgroundColor = .blue
            myButton.layer.cornerRadius = 4
            myButton.setTitle("Set status", for: .normal)
            myButton.addTarget(self, action: #selector(btnKlick), for: .touchUpInside)
        return myButton
    }
    
    
    @objc func btnKlick(_ sender: UIButton){
        print(myTextFields.text ?? "")
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
    }
    
    
    // Реализайия UINavigationBar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
}
