//
//  SubViewController.swift
//  TestApp2
//
//  Created by Thannathrn Yuwasin on 7/7/2560 BE.
//  Copyright © 2560 Thannathrn Yuwasin. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    
    var data:String?
    
    @IBAction func backPage(_ sender: Any) {
        //backpage by unwind
    }
    @IBAction func backCode(_ sender: Any) {
        self.performSegue(withIdentifier: "backToViewController", sender: self)
        
    }
    @IBOutlet weak var labelData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if data != nil {
            labelData.text = data
        }else{
            labelData.text = "No!! Data"
        }

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var dataSubTextfield: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "backToViewController") {
            let viewController:ViewController = segue.destination as! ViewController
            viewController.mainData = dataSubTextfield.text
        }
    }
    @IBAction func unwindToSubViewController(segue: UIStoryboardSegue) {
        dataSubTextfield.text = data
    }
 

}
