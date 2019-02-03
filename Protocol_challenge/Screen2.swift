//
//  Screen2.swift
//  Protocol_challenge
//
//  Created by Petr Fila on 3/2/19.
//  Copyright © 2019 Petr Fila. All rights reserved.
//

import UIKit


class ScreenTwo: UIViewController {
    
    lazy var textField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont.systemFont(ofSize: 14)
        field.backgroundColor = UIColor.yellow
        return field
    }()

    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.yellow
        button.setTitle("SEND", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(pushScreenOne), for: .touchUpInside)
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        
        layoutProperties()
    }
    
    private func layoutProperties() {
        view.addSubview(textField)
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 340).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 60).isActive = true


        view.addSubview(button)
        button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 340).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }


    @objc func pushScreenOne() {
        print("Send button works")
        dismiss(animated: true, completion: nil)
    }
//
}
