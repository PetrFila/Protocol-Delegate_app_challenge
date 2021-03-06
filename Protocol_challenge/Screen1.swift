//
//  ViewController.swift
//  Protocol_challenge
//
//  Created by Petr Fila on 3/2/19.
//  Copyright © 2019 Petr Fila. All rights reserved.
//

import UIKit


class ScreenOne: UIViewController {

    lazy var label: UILabel = {
        let field = UILabel()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont.systemFont(ofSize: 14)
        field.backgroundColor = UIColor.white
        return field
    }()
    
    lazy var button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.init(red: 66/255, green: 134/255, blue: 244/255, alpha: 1)
        button.setTitle("Go to next screen", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(pushScreenTwo), for: .touchUpInside)
        return button
    }()
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        
        layoutProperties()
    }

    private func layoutProperties() {
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250).isActive = true
        label.widthAnchor.constraint(equalToConstant: 340).isActive = true
        label.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 340).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    
    @objc func pushScreenTwo() {
        print(#function)
        let connectScreen = ScreenTwo()
        connectScreen.thisIsDelegate = self
        present(connectScreen,animated: true)
    }

}

extension ScreenOne: PassInput {
    func data(textInput: String) {
        label.text = textInput
    }
}
