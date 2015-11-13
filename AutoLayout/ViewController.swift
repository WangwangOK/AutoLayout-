//
//  ViewController.swift
//  AutoLayout
//
//  Created by 王望 on 15/11/12.
//  Copyright © 2015年 Will. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func tap(sender: UITapGestureRecognizer) {
    self.performSegueWithIdentifier("ToSecond", sender: self)
  }

}

