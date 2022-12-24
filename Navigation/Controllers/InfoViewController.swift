//
//  InfoViewController.swift
//  Navigation
//
//  Created by Артур Савинов on 21.12.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        setupButton()
        goToInfoAler()
    }
    
    private lazy var buttonInfo: UIButton = {
            let button = UIButton()
            button.backgroundColor = .blue
            button.layer.cornerRadius = 12
            button.setTitle("Перейти на пост", for: .normal)
            button.setTitleColor(.lightGray, for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
            button.addTarget(self, action: #selector(goToInfoAler), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    
    private func setupButton() {
            self.view.addSubview(self.buttonInfo)
            self.buttonInfo.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
            self.buttonInfo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
            self.buttonInfo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
            self.buttonInfo.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
    
    @objc private func goToInfoAler() {
        
        let avc = UIAlertController(title: "Controler", message: "Hello world", preferredStyle: .alert)
       
        avc.addAction(UIAlertAction(title: "Canel", style: .cancel){ _ in
            avc.dismiss(animated: true)
            print("Нажал на Canel")
        })
        
        avc.addAction(UIAlertAction(title: "Ok", style: .default){ _ in
            avc.dismiss(animated: true)
            print("Нажал на Ok")
        })
        
        self.present(avc, animated: true)
        
        
        }

}
