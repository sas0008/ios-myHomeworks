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
    
    private var fullNameLabel: UILabel = {
        let myLabel = UILabel()
        myLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        myLabel.text = "Hipster Anonymous"
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        return myLabel
    }()
    
    private var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont.systemFont(ofSize: 16, weight: .thin)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()
    
    private var statusTextField: UITextField = {
        let myTextFields = UITextField()
        myTextFields.borderStyle = .roundedRect
        myTextFields.placeholder = "Новый статус"
        myTextFields.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        myTextFields.layer.cornerRadius = 12
        myTextFields.layer.borderWidth = 1
        myTextFields.layer.borderColor = UIColor.black.cgColor
        myTextFields.layer.masksToBounds = true
        myTextFields.autocorrectionType = .no
        myTextFields.translatesAutoresizingMaskIntoConstraints = false
        return myTextFields
    }()
    
    private lazy var setStatusButton: UIButton = {
        let myButton = UIButton()
            myButton.backgroundColor = .blue
            myButton.layer.cornerRadius = 12
            myButton.setTitle("Set status", for: .normal)
            myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
            myButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            myButton.addTarget(self, action: #selector(btnKlick), for: .touchUpInside)
            myButton.translatesAutoresizingMaskIntoConstraints = false
        return myButton
    }()
    
    @objc func btnKlick(_ sender: UIButton){
        print(statusTextField.text ?? "")
    }
    
//    func setupLayout() {
//        addSubview(avatarImageView)
//        addSubview(fullNameLabel)
//        addSubview(statusLabel)
//        addSubview(statusTextField)
//        addSubview(setStatusButton)
//    }
    
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
            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 150),
            avatarImageView.widthAnchor.constraint(equalToConstant: 150),
            
            fullNameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 20),
            fullNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            
            statusLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 20),
            statusLabel.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -60),
            
            statusTextField.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 20),
            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -15),
            statusTextField.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -20),
            
            setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
            setStatusButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 20),
            setStatusButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -20),
            setStatusButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


