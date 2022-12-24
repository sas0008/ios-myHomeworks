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
        setupView()
    }
    
    var titlePost: String = "Anonymous"
    
    private func setupView() {
        self.view.backgroundColor = .systemMint
        self.navigationItem.title = titlePost
        }

}



