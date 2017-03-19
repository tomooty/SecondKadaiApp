//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 田尻智子 on 2017/03/19.
//  Copyright © 2017年 tomooty. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.text = ""
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.result =  textField.text!
        

        
    }

    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }
}

