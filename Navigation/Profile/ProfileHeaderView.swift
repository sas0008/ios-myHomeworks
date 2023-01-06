//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Артур Савинов on 02.01.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var img: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "1")
        img.frame = CGRect(x: 16, y: 120, width: 150, height: 150)
        img.layer.cornerRadius = img.frame.height/2
        img.clipsToBounds = true
        img.layer.borderWidth = 3
        img.layer.borderColor = UIColor.white.cgColor
        return img
    }()
    
    private var myLabel: UILabel {
        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 180, y: 120, width: 200, height: 40)
        myLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        myLabel.text = "Hipster Anonymous"
        return myLabel
    }
    
    private var statusLabel: UILabel {
        let statusLabel = UILabel()
        statusLabel.frame = CGRect(x: 180, y: 210, width: 200, height: 40)
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont.systemFont(ofSize: 16, weight: .thin)
        return statusLabel
    }
    
//    private var myTextFields: UITextField {
//        let myTextFields = UITextField()
//        myTextFields.frame = CGRect(x: 180, y: 260, width: 220, height: 30)
//        myTextFields.borderStyle = .roundedRect
//        myTextFields.placeholder = "test"
//        myTextFields.layer.cornerRadius = 30
//        return myTextFields
//    }
    
//    private var myButton: UIButton {
//        let myButton = UIButton()
//        myButton.frame = CGRect(x: 27, y: 310, width: 380, height: 50)
//        myButton.backgroundColor = .blue
//        myButton.layer.cornerRadius = 4
//        myButton.setTitle("Set status", for: .normal)
//        myButton.addTarget(self, action: #selector(getter: UIEvent.allTouches), for: .touchUpInside)
//        return myButton
//    }
//
//    @objc func buttonPressed() {
//        print()
//    }
    
    
    func setupLayout() {
        addSubview(img)
        addSubview(myLabel)
        addSubview(statusLabel)
//        addSubview(myTextFields)
//        addSubview(myButton)
    }
}
