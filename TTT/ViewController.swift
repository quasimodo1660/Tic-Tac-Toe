//
//  ViewController.swift
//  TTT
//
//  Created by Peisure on 1/10/18.
//  Copyright © 2018 Ben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var p1 = 0
    var p2 = 0
    var times = 0
    
    @IBOutlet var d: UILabel!
    @IBAction func changeLanguage(sender: UIButton) {
        times += 1
        if times % 2 == 0 {
            sender.backgroundColor = .blue
            p1 += sender.tag
            d.text = "Play1"
        }
        else{
            sender.backgroundColor = .red
            print(sender.accessibilityActivationPoint)
            p2 += sender.tag
            d.text = "Play2"
        }
        print(times)
        sender.isEnabled = false
    return
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(times)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetb(_ sender: UIButton) {
        self.loadView()
        p1 = 0
        p2 = 0
        times = 0
    
    }

}
