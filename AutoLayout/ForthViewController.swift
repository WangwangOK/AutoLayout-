//
//  ForthViewController.swift
//  AutoLayout
//
//  Created by 王望 on 15/11/13.
//  Copyright © 2015年 Will. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {
  
  @IBOutlet weak var ww_label: UILabel!
  
  @IBOutlet weak var helpView: UIView!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func change_label_text(sender: UIStepper) {
    print(sender.value)
    var text = "label"
    if sender.value <= 0 {
      return
    }
    for var i:Double = 0;i < sender.value ;i++ {
      text += "label"
    }
    ww_label.text = text
    print("helpView.frame.size:\(helpView.frame.size)")
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
