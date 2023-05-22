//
//  ViewController.swift
//  ShowCase
//
//  Created by Yohannes on 5/22/23.
//

import UIKit
import YTimeTeller

class MainViewController: UIViewController {
    
    private let takeMeBtn: UIButton = {
        let button = UIButton()
        button.setTitle("TAKE ME", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(takeMeBtn)
        takeMeBtn.addTarget(self, action: #selector(takeMeTapped), for: .touchUpInside)
        applyConstraint()
    }
    
    private func applyConstraint(){
        takeMeBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let takeConstraints = [
            takeMeBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 180),
            takeMeBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            takeMeBtn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            takeMeBtn.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(takeConstraints)
    }
    
    @objc func takeMeTapped(){
        navigationController?.pushViewController(TimeTellerViewController(), animated: true)
    }
    
}

