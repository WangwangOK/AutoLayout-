//
//  SixthViewController.swift
//  AutoLayout
//
//  Created by 王望 on 16/3/23.
//  Copyright © 2016年 Will. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {
  
  @IBOutlet var topImageviews: [UIImageView]!{
    didSet{
      topImageviews.forEach{ $0.clipsToBounds = true }
    }
  }
  
  @IBOutlet weak var centerImgView: UIImageView!
  
  @IBOutlet weak var centerAspect: NSLayoutConstraint!
  
  @IBOutlet weak var bottomImgViews: UIImageView!
  
  @IBOutlet weak var bottomAspect: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let centerimage = UIImage(named: "third.png")
    centerImgView.image = centerimage
    let size = centerimage!.size
    let scale = size.width / size.height
    print(scale)
    if centerAspect != nil && centerImgView.constraints.contains(centerAspect) == true{
      centerImgView.removeConstraint(centerAspect)
      let aspectConstraint = NSLayoutConstraint(item: centerImgView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: centerImgView, attribute: NSLayoutAttribute.Height, multiplier: scale, constant: 0)
      aspectConstraint.priority = UILayoutPriorityRequired
      centerImgView.addConstraint(aspectConstraint)
    }
    let bottomImage = UIImage(named: "second.png")
    bottomImgViews.image = bottomImage
    if bottomAspect != nil && bottomImgViews.constraints.contains(bottomAspect) == true{
      let csize = bottomImage!.size
      let cscale = csize.width / csize.height
      bottomImgViews.removeConstraint(bottomAspect)
      let aspectConstraint = NSLayoutConstraint(item: bottomImgViews, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: bottomImgViews, attribute: NSLayoutAttribute.Height, multiplier: cscale, constant: 0)
      aspectConstraint.priority = UILayoutPriorityRequired
      bottomImgViews.addConstraint(aspectConstraint)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
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
