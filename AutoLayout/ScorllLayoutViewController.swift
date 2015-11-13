//
//  ScorllLayoutViewController.swift
//  AutoLayout
//
//  Created by 王望 on 15/11/12.
//  Copyright © 2015年 Will. All rights reserved.
//

import UIKit

class ScorllLayoutViewController: UIViewController {
  
  @IBOutlet weak var witdhConstant: NSLayoutConstraint!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func updateViewConstraints() {
    super.updateViewConstraints()
    witdhConstant.constant = view.frame.size.width
    
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
