//
//  FeedViewController.swift
//  Navigation
//
//  Created by Артур Савинов on 19.12.2022.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        let camera = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(goToInfo))
        self.navigationItem.rightBarButtonItem = camera

        setupButton()
        buttonAction()
    }
    
    var post = Post(title: "Мой пост")
    
    private lazy var button: UIButton = {
            let button = UIButton()
            button.backgroundColor = .blue
            button.layer.cornerRadius = 12
            button.setTitle("Перейти на пост", for: .normal)
            button.setTitleColor(.lightGray, for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    
    private func setupButton() {
            self.view.addSubview(self.button)
            self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
            self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
            self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
            self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
    
    @objc private func buttonAction() {
            let postViewController = PostViewController()
            postViewController.titlePost = post.title
            self.navigationController?.pushViewController(postViewController, animated: true)
        }
    
    @objc func goToInfo(_ sender: UIButton) {
        let infoViewController = InfoViewController()
        infoViewController.title = "Info"
        self.navigationController?.pushViewController(infoViewController, animated: true)
    }
    
}
