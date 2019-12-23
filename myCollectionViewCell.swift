//
//  myCollectionViewCell.swift
//  BursaDetractari
//
//  Created by tahir on 12/17/19.
//  Copyright © 2019 tahir. All rights reserved.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    
    //__________Avoid awakeFromNib use init and Required Init___________
    
    var lbl: UILabel = {
        var mylbl = UILabel()
        
        mylbl.textAlignment = .left
        mylbl.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return mylbl
    }()
    
    var dot: UILabel = {
        var mylbl = UILabel()
        
        mylbl.textAlignment = .center
        mylbl.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        mylbl.text = "⚈"
        return mylbl
    }()
    
    
    var selectedText: UILabel = {
        var mylbl = UILabel()
        
        mylbl.textAlignment = .left
        mylbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        //mylbl.text = "Alb, Negru, Gri"
        
        
        return mylbl
    }()
    
    var underLineView: UIView = {
        var uLineView = UIView()
        
        uLineView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return uLineView
    }()
    
    var forwardIcon: UIImageView = {
        var fIcon = UIImageView()
        fIcon.image = #imageLiteral(resourceName: "forwardIcon")
        return fIcon
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    func setupCell()
    {
        
        contentView.addSubview(dot)
        dot.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        dot.translatesAutoresizingMaskIntoConstraints = false
        dot.widthAnchor.constraint(equalToConstant: 40).isActive = true
        dot.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        
        
        contentView.addSubview(lbl)
        lbl.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        contentView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.leftAnchor.constraint(equalTo: dot.rightAnchor).isActive = true
        lbl.widthAnchor.constraint(equalToConstant: 190).isActive = true
        lbl.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        lbl.font = UIFont(name: "AlNile", size: 11)
        
        
        
        
        
        contentView.addSubview(underLineView)
        underLineView.translatesAutoresizingMaskIntoConstraints = false
        underLineView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 28).isActive = true
        underLineView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        underLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        underLineView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 39).isActive = true
        
        
        
        contentView.addSubview(forwardIcon)
        forwardIcon.translatesAutoresizingMaskIntoConstraints = false
        forwardIcon.leftAnchor.constraint(equalTo: lbl.rightAnchor, constant: 150).isActive = true
        forwardIcon.widthAnchor.constraint(equalToConstant: 15).isActive = true
        forwardIcon.heightAnchor.constraint(equalToConstant: 15).isActive = true
        forwardIcon.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12).isActive = true
        
        
        contentView.addSubview(selectedText)
        contentView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        selectedText.font = UIFont(name: "AlNile", size: 12)
        selectedText.translatesAutoresizingMaskIntoConstraints = false
        selectedText.leftAnchor.constraint(equalTo: dot.rightAnchor).isActive = true
        selectedText.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 23).isActive = true
        selectedText.widthAnchor.constraint(equalToConstant: 250).isActive = true
        selectedText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    
    override func prepareForInterfaceBuilder() {
        setupCell()
    }
    
    
    /*override var isSelected: Bool{
        didSet{
            if self.isSelected
            {
                var newView = PostInteractionView(frame: CGRect(x: 50, y: 50, width: 400, height: 800))
                
                
                //self.contentView.backgroundColor = UIColor.red
            }
            else
            {
                //self.emojiLabel.isHidden = true
                
                
                self.contentView.backgroundColor = UIColor.white
            }
        }
    }*/
}
