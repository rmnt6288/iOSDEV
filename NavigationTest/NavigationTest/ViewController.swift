//
//  ViewController.swift
//  NavigationTest
//
//  Created by 쿰스 on 2021/05/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ButtonGo : UIButton!
    @IBAction func MoveSubView (_ sender : Any){
        if let controller = self.storyboard?.instantiateViewController(identifier: "SubView") {
            self.navigationController?.pushViewController(controller, animated: true)
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

