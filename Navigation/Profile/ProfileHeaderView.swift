//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Артур Савинов on 02.01.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var avatarImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "1")
        img.frame = CGRect(x: 16, y: 120, width: 150, height: 150)
        img.layer.cornerRadius = img.frame.height/2
        img.clipsToBounds = true
        img.layer.borderWidth = 3
        img.layer.borderColor = UIColor.white.cgColor
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    private var fullNameLabel: UILabel {
        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 180, y: 120, width: 200, height: 40)
        myLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        myLabel.text = "Hipster Anonymous"
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        return myLabel
    }
    
    private var statusLabel: UILabel {
        let statusLabel = UILabel()
        statusLabel.frame = CGRect(x: 180, y: 210, width: 200, height: 40)
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont.systemFont(ofSize: 16, weight: .thin)
//        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }
    
    private var statusTextField: UITextField = {
        let myTextFields = UITextField()
        myTextFields.frame = CGRect(x: 180, y: 260, width: 220, height: 40)
        myTextFields.borderStyle = .roundedRect
        myTextFields.placeholder = "Новый статус"
        myTextFields.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        myTextFields.layer.cornerRadius = 12
        myTextFields.layer.borderWidth = 1
        myTextFields.layer.borderColor = UIColor.black.cgColor
        myTextFields.layer.masksToBounds = true
        myTextFields.autocorrectionType = .no
//        myTextFields.translatesAutoresizingMaskIntoConstraints = false
        return myTextFields
    }()
    
    private var setStatusButton: UIButton {
        let myButton = UIButton()
            myButton.frame = CGRect(x: 27, y: 310, width: 380, height: 50)
            myButton.backgroundColor = .blue
            myButton.layer.cornerRadius = 4
            myButton.setTitle("Set status", for: .normal)
            myButton.addTarget(self, action: #selector(btnKlick), for: .touchUpInside)
//            myButton.translatesAutoresizingMaskIntoConstraints = false
        
        return myButton
    }
    
    @objc func btnKlick(_ sender: UIButton){
        print(statusTextField.text ?? "")
    }
    
    func setupLayout() {
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
        
        NSLayoutConstraint.activate([

            avatarImageView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            avatarImageView.heightAnchor.constraint(equalToConstant: 150),
            avatarImageView.widthAnchor.constraint(equalToConstant: 150),
            
            fullNameLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 20),
            fullNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            fullNameLabel.widthAnchor.constraint(equalToConstant: 200),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 40)

        ])
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


