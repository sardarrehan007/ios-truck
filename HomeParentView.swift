//
//  HomeParentView.swift
//  BursaDetractari
//
//  Created by tahir on 12/13/19.
//  Copyright © 2019 tahir. All rights reserved.
//

import UIKit

class HomeParentView: UIView {
    
    
    let containerView: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 0, green: 0.7764705882, blue: 0.5490196078, alpha: 0.6041317114)
        
        
        return greenview
    }()
    
    
    let truckView: UIImageView = {
        let greenview = UIImageView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        
        
        return greenview
    }()
    
    let containerView2: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 0, green: 0.7764705882, blue: 0.5490196078, alpha: 0.6041317114)
        
        
        return greenview
    }()
    
    
    let containerView3: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 0, green: 0.7764705882, blue: 0.5490196078, alpha: 0.6041317114)
        
        
        return greenview
    }()
    
    let containerView4: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 0, green: 0.7764705882, blue: 0.5490196078, alpha: 0.6041317114)
        
        
        return greenview
    }()

    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
        
        //______________Custom_Code___________
        
        
        setupView()
    }
    
    
    
    
    
    
    func setupView(){
        
        
        
        truckView.frame = CGRect(x: 20, y: 50, width: self.frame.maxX, height: 250)
        truckView.contentMode = .scaleAspectFit
        truckView.layer.cornerRadius = 10
        truckView.image = #imageLiteral(resourceName: "Image-1")
        self.addSubview(truckView)
        
        //___________________Container1____________________
        self.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        containerView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        containerView.frame = CGRect(x: 20, y: 330, width: self.frame.maxX, height: 80)
        containerView.layer.cornerRadius = 10
         self.addSubview(containerView)
        
        var separatorView = UIView(frame: CGRect(x: 80, y: 10, width: 1, height: 60))
        separatorView.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        containerView.addSubview(separatorView)
        
        var btn1ImageView = UIImageView(frame: CGRect(x: 16, y: 10, width: 60, height: 60))
        btn1ImageView.image = #imageLiteral(resourceName: "Image")
        containerView.addSubview(btn1ImageView)
        
        var btn1label1 = UILabel(frame: CGRect(x: 100, y: 5, width: 100, height: 40))
        btn1label1.text = " init(coder:) "
        containerView.addSubview(btn1label1)
        
        var btn1label2 = UILabel(frame: CGRect(x: 100, y: 40, width: 100, height: 40))
        btn1label2.text = " Done ! "
        containerView.addSubview(btn1label2)
        
        
        //___________________Container2____________________
        self.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        containerView2.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        containerView2.frame = CGRect(x: 20, y: 450, width: self.frame.maxX, height: 80)
        containerView2.layer.cornerRadius = 10
        self.addSubview(containerView2)
        
        var separatorView2 = UIView(frame: CGRect(x: 80, y: 10, width: 1, height: 60))
        separatorView2.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        containerView2.addSubview(separatorView2)
        
        var btn1ImageView2 = UIImageView(frame: CGRect(x: 16, y: 10, width: 60, height: 60))
        btn1ImageView2.image = #imageLiteral(resourceName: "Image")
        containerView2.addSubview(btn1ImageView2)
        
        
        var btn2label1 = UILabel(frame: CGRect(x: 100, y: 5, width: 100, height: 40))
        btn2label1.text = " init(coder:) "
        containerView2.addSubview(btn2label1)
        
        var btn2label2 = UILabel(frame: CGRect(x: 100, y: 40, width: 100, height: 40))
        btn2label2.text = " Done ! "
        containerView2.addSubview(btn2label2)
        
        
        //___________________Container3____________________
        self.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        containerView3.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        containerView3.frame = CGRect(x: 20, y: 580, width: self.frame.maxX, height: 80)
        containerView3.layer.cornerRadius = 10
        self.addSubview(containerView3)
        
        var separatorView3 = UIView(frame: CGRect(x: 80, y: 10, width: 1, height: 60))
        separatorView3.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        containerView3.addSubview(separatorView3)
        
        var btn1ImageView3 = UIImageView(frame: CGRect(x: 16, y: 10, width: 60, height: 60))
        btn1ImageView3.image = #imageLiteral(resourceName: "Image")
        containerView3.addSubview(btn1ImageView3)
        
        
        
        var btn3label1 = UILabel(frame: CGRect(x: 100, y: 5, width: 100, height: 40))
        btn3label1.text = " init(coder:) "
        containerView3.addSubview(btn3label1)
        
        var btn3label2 = UILabel(frame: CGRect(x: 100, y: 40, width: 100, height: 40))
        btn3label2.text = " Done ! "
        containerView3.addSubview(btn3label2)
        
        //___________________Container4____________________
        self.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        containerView4.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        containerView4.frame = CGRect(x: 20, y: 690, width: self.frame.maxX, height: 80)
        containerView4.layer.cornerRadius = 10
        self.addSubview(containerView4)
        
        var separatorView4 = UIView(frame: CGRect(x: 80, y: 10, width: 1, height: 60))
        separatorView4.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        containerView4.addSubview(separatorView4)
        
        var btn1ImageView4 = UIImageView(frame: CGRect(x: 16, y: 10, width: 60, height: 60))
        btn1ImageView4.image = #imageLiteral(resourceName: "Image")
        containerView4.addSubview(btn1ImageView4)
        
        
        var btn4label1 = UILabel(frame: CGRect(x: 100, y: 5, width: 100, height: 40))
        btn4label1.text = " init(coder:) "
        containerView4.addSubview(btn4label1)
        
        var btn4label2 = UILabel(frame: CGRect(x: 100, y: 40, width: 100, height: 40))
        btn4label2.text = " Done ! "
        containerView4.addSubview(btn4label2)
        
        
        
        
        
        
        
        
        
        
    }

}
