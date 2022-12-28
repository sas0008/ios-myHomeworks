//
//  PostViewController.swift
//  Navigation
//
//  Created by Артур Савинов on 20.12.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let barBtn = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(goToInfo))
        self.navigationItem.rightBarButtonItem = barBtn
        setupView()
    }
    
    var titlePost: String = "Anonymous"
    
    private func setupView() {
        self.view.backgroundColor = .systemMint
        self.navigationItem.title = titlePost
        }
    
    @objc func goToInfo(_ sender: UIButton) {
        let infoViewController = InfoViewController()
        infoViewController.modalPresentationStyle = .formSheet
        present(infoViewController, animated: true)
    }
}
