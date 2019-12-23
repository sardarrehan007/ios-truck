//
//  QuadElementView.swift
//  BursaDetractari
//
//  Created by tahir on 12/13/19.
//  Copyright © 2019 tahir. All rights reserved.
//

import UIKit

class QuadElementView: UIView {
    
    let TaskIcon: UIImageView = {
        let TaskImage = UIImageView()
        TaskImage.translatesAutoresizingMaskIntoConstraints = false
        TaskImage.clipsToBounds = true
        TaskImage.image = #imageLiteral(resourceName: "Image")
        TaskImage.contentMode = .scaleAspectFit
        
        return TaskImage
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        //______________Custom_Code___________
        
        
        
        self.addSubview(TaskIcon)
        
        let topConstraint = NSLayoutConstraint(item: TaskIcon, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: TaskIcon, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingConstraint = NSLayoutConstraint(item: TaskIcon, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0)
        let trailingConstraint = NSLayoutConstraint(item: TaskIcon, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0)
        
        
        
       
        
        layoutIfNeeded()
     TaskIcon.addConstraints([topConstraint,bottomConstraint,leadingConstraint,trailingConstraint])
        
        
        self.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
       
        
        
        
        
    }
    
    
    
    override func draw(_ rect: CGRect) {
        
    }
  
}
