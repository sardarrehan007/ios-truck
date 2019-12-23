//
//  RangeTableViewCell.swift
//  Bursa
//
//  Created by Shawal's Mac on 17/12/2019.
//  Copyright © 2019 Shawal's Mac. All rights reserved.
//

import UIKit

class RangeTableViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
   
        // Initialization code
        
       
    }
    let pointsLabel: UILabel = {
      let n = UILabel()
          n.textColor = UIColor.darkGray
          n.textAlignment = .center
          n.text = "Testing 123"
          n.font = UIFont(name: "Montserrat", size: 30)
      return n
    }()
// ---------------------- EmojiLabel -------------------------------
    let emojiLabel: UIImageView = {
      let n = UIImageView()
        n.image = #imageLiteral(resourceName: "checked")
        n.contentMode = .scaleAspectFit
      return n
    }()

    
    
    
    override var isSelected: Bool{
        didSet{
            if self.isSelected
            {
                
                self.emojiLabel.isHidden = false
                
                //self.contentView.backgroundColor = UIColor.red
            }
            else
            {
                self.emojiLabel.isHidden = true

               
                self.contentView.backgroundColor = UIColor.white
            }
        }
    }
  
    
    
    
    override init(frame: CGRect) {
     super.init(frame: frame)
      addSubview(pointsLabel)
      addSubview(emojiLabel)
        
      pointsLabel.translatesAutoresizingMaskIntoConstraints = false
        pointsLabel.leftAnchor.constraint(equalTo: leftAnchor, constant:20).isActive = true
     // pointsLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -32.5).isActive = true
      pointsLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
      pointsLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        pointsLabel.heightAnchor.constraint(equalToConstant: contentView.frame.height)
        pointsLabel.widthAnchor.constraint(equalToConstant: contentView.frame.width/2)
       
        
        
        emojiLabel.translatesAutoresizingMaskIntoConstraints = false
        emojiLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: contentView.frame.width/2 + 40 ).isActive = true
      // emojiLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 3).isActive = true
        emojiLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        emojiLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        emojiLabel.heightAnchor.constraint(equalToConstant: contentView.frame.height - 50)
        emojiLabel.widthAnchor.constraint(equalToConstant: contentView.frame.width/2 - 20)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    
  
    

    
    
 



