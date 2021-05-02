//
//  subView.swift
//  NavigationTest
//
//  Created by 쿰스 on 2021/05/02.
//

import UIKit


class SubView: UIViewController {

    @IBOutlet var SilderVol : UISlider!
    @IBOutlet var LableTitle : UILabel!
    @IBOutlet var ButtonPrint : UIButton!
    
    @IBAction func SilderValueCheck (_ sender:UISlider){
        print ("%d", sender.value)
    }
    
    @IBAction func ButtonTouchDown (_ sender:Any){
        print ("DeepView Button !!! ")
        if let controller = self.storyboard?.instantiateViewController(identifier: "DeepView") {
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
