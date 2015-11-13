//
//  FifthViewController.swift
//  AutoLayout
//
//  Created by 王望 on 15/11/13.
//  Copyright © 2015年 Will. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
  
  @IBOutlet weak var heightConstant: NSLayoutConstraint!
  
  @IBOutlet weak var topDistance: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func change(sender: UIButton) {
    if heightConstant.constant == 50 {
      heightConstant.constant = 0
      topDistance.constant = 0
    }else{
      heightConstant.constant = 50
      topDistance.constant = 8
    }
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
