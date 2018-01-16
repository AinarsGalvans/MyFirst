//
//  ViewController.swift
//  MyFirst
//
//  Created by Ainars Galvans on 12/1/17.
//  Copyright © 2017 Ainars Galvans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var HelloWorld: UILabel!
    
    @IBAction func ButtonPressed(_ sender: Any) {
        //HelloWorld.text = "Button pressed !"
    }
}

