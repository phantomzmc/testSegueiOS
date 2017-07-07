//
//  ViewController.swift
//  TestApp2
//
//  Created by Thannathrn Yuwasin on 7/7/2560 BE.
//  Copyright © 2560 Thannathrn Yuwasin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mainData:String?
    
    @IBAction func nextPage(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subController:SubViewController = storyboard.instantiateViewController(withIdentifier: "SubViewController") as! SubViewController
        subController.data = dataTextField.text
        self.present(subController, animated: true, completion: nil)
    }

    @IBAction func nextCodePage2(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoSubViewControllerSegue", sender: self)
    }
    
    @IBOutlet weak var dataTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "gotoSubViewControllerSegue") {
            let subController:SubViewController = segue.destination as! SubViewController
            subController.data = dataTextField.text
        }
    }
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        dataTextField.text = mainData
    }


}

