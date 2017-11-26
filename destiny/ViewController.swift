//
//  ViewController.swift
//  destiny
//
//  Created by Aliu on 2017/11/20.
//  Copyright © 2017年 Aliu.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Gobutton: UIButton!
    @IBOutlet weak var Textinput: UITextField!
    @IBOutlet weak var Answerlabel: UILabel!
    
    @IBAction func Gobutton_action(_ sender: Any) {
        let Textcontent = Textinput.text
        if (Textcontent?.isEmpty == true) {
            Answerlabel.text = "輸入問題啊!"
        }
        else {
            if (Textcontent?.contains("星座"))! {
                Answerlabel.text = "巨蟹座"
            }
            if (Textcontent?.contains("血型"))!{
                Answerlabel.text = "A型"
            }
            if ((Textcontent?.contains("有男友"))!||(Textcontent?.contains("單身"))!){
                Answerlabel.text = "我有男朋友"
            }
        }
        
        view.endEditing(true)
    
    }
    

        
    
    // UITextField Delegate
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        view.endEditing(true)
//        return true
//    }
//
//    func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
//        self.view.endEditing(true)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Gobutton.layer.cornerRadius = 25
        Textinput.layer.cornerRadius = 10
        Textinput.layer.borderWidth = 2
        //Textinput.layer.borderColor
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"background-image")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}
