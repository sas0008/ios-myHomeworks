//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Артур Савинов on 19.12.2022.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {
    
    let profileHeaderView = ProfileHeaderView()
    
    private lazy var newBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Кнопка", for: .normal)
        btn.backgroundColor = .red
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.baeckgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        view.addSubview(newBtn)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}
