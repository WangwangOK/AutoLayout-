//
//  SevenViewController.swift
//  AutoLayout
//
//  Created by Vivien on 16/3/29.
//  Copyright © 2016年 Will. All rights reserved.
//

import UIKit

class SevenViewController: UIViewController {
    
    @IBOutlet var labels: [UILabel]!
    
    private var label0text:String{
        return labels[0].text!
    }
    
    private var label1text:String{
        return labels[1].text!
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func leftsteper(sender: UIStepper) {
        var text = label0text
        if sender.value <= 0 {
            return
        }
        for var i:Double = 0;i < sender.value ;i++ {
            text += "label"
        }
        labels[0].text = text
    }
    
    @IBAction func rightsteper(sender: UIStepper) {
        var text = label1text
        if sender.value <= 0 {
            return
        }
        for var i:Double = 0;i < sender.value ;i++ {
            text += "label"
        }
        labels[1].text = text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
