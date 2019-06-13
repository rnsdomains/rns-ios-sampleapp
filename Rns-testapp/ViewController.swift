//
//  ViewController.swift
//  Rns-testapp
//
//  Created by Fede Ruiz on 04/06/2019.
//  Copyright © 2019 Sirius. All rights reserved.
//

import UIKit
import Rns
class ViewController: UIViewController {
    
    var resolver: RnsResolver = RnsResolver(nodeDir: "https://public-node.rsk.co", publicResolverAddress: "0x4efd25e3d348f8f25a14fb7655fba6f72edfe93a", rnsAddress: "0xcb868aeabd31e2b66f74e9a55cf064abb31a4ad5")!
    
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClick(_ sender: Any) {
        let node =  textField.text!
        resolver.getAddress(name: node).map {
            address in
            let hex = address.hex(eip55: false)
            self.resultLabel.text = "Resultado: " + hex
        }
    }
    
}

