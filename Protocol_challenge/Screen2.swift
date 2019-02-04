//
//  Screen2.swift
//  Protocol_challenge
//
//  Created by Petr Fila on 3/2/19.
//  Copyright © 2019 Petr Fila. All rights reserved.
//

import UIKit


protocol PassInput: class {
    func data(textInput: String)
}

class ScreenTwo: UIViewController {
    
    lazy var textField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont.systemFont(ofSize: 14)
        field.backgroundColor = UIColor.white
        field.placeholder = "Type something here"
        return field
    }()

    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.init(red: 66/255, green: 134/255, blue: 244/255, alpha: 1)
        button.setTitle("Tap here for magic", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(pushScreenOne), for: .touchUpInside)
        return button
    }()
    
    
    weak var thisIsDelegate: PassInput?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
        
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
        let actualInput = textField.text
        thisIsDelegate?.data(textInput: actualInput!)
        print(actualInput!)
        dismiss(animated: true, completion: nil)
    }
    
    
   
}
