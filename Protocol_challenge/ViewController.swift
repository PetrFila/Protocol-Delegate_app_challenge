//
//  ViewController.swift
//  Protocol_challenge
//
//  Created by Petr Fila on 3/2/19.
//  Copyright © 2019 Petr Fila. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    lazy var label: UILabel = {
        let field = UILabel()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.font = UIFont.systemFont(ofSize: 14)
        field.backgroundColor = UIColor.yellow
        return field
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.red
        
        layoutProperties()
    }

    private func layoutProperties() {
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 70).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true

    }

}

