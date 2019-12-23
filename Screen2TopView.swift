//
//  Screen2TopView.swift
//  BursaDetractari
//
//  Created by tahir on 12/16/19.
//  Copyright © 2019 tahir. All rights reserved.
//

import UIKit
import SwiftRangeSlider

class Screen2TopView: UIView {
    
    
    var btnLocation: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.clipsToBounds = true
        btn.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        
        return btn
    }()
    
    var btnFilter: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.clipsToBounds = true
        btn.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        
        return btn
    }()
    
    
    
    let containerView: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        
        
        return greenview
    }()
    
    
    let containerView2: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        
        
        return greenview
    }()
    
    
    let containerView3: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        
        
        return greenview
    }()
    
    
    let containerView4: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        
        
        return greenview
    }()
    
    
    let containerView5: UIView = {
        let greenview = UIView()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        greenview.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        
        
        return greenview
    }()
    
    let TopLabel: UILabel = {
        let greenview = UILabel()
        greenview.translatesAutoresizingMaskIntoConstraints = false
        greenview.clipsToBounds = true
        
        
        return greenview
    }()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
        
        //______________Custom_Code___________
        
        
        setupView()
    }
    
    
    
    
    
    
    func setupView(){
        self.backgroundColor = #colorLiteral(red: 0.8884918928, green: 0.8884918928, blue: 0.8884918928, alpha: 1)
        
        
        self.addSubview(btnLocation)
        btnLocation.layer.borderWidth = 3
        btnLocation.layer.cornerRadius = 5
        btnLocation.setTitle("Maps ؟", for: .normal)
        btnLocation.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
        
        
        
        
        btnLocation.topAnchor.constraint(equalTo: self.topAnchor, constant: 180).isActive = true
        
        btnLocation.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
        
        
        
        btnLocation.heightAnchor.constraint(greaterThanOrEqualToConstant: 60).isActive = true
        btnLocation.widthAnchor.constraint(greaterThanOrEqualToConstant: 160).isActive = true
        
        
        //________________
        self.addSubview(btnFilter)
        btnFilter.layer.borderWidth = 3
        btnFilter.layer.cornerRadius = 5
        btnFilter.setTitle(" Filter ", for: .normal)
        btnFilter.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
        
        
        btnFilter.topAnchor.constraint(equalTo: self.topAnchor, constant: 180).isActive = true
        
        btnFilter.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30).isActive = true
        
        
        
        btnFilter.heightAnchor.constraint(greaterThanOrEqualToConstant: 60).isActive = true
        btnFilter.widthAnchor.constraint(greaterThanOrEqualToConstant: 140).isActive = true
        
        
        
        //______________________Search_Towing_For_Heading_____________________
        
        TopLabel.text = " Caut Tractare pentru: "
        TopLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        var myHeadingFont = UIFont(name: "AlNile-Bold", size: 30)
        TopLabel.font = myHeadingFont
        self.addSubview(TopLabel)
        
        
        TopLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 120).isActive = true
        TopLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        TopLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
        TopLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 200)
        
        
        
        //________________________Container View 1 By FRAME____________________
        
        //containerView.frame = CGRect(x: 20, y: 330, width: self.frame.maxX, height: 80)
        
        
        //________________________Container View 1 By Constraints____________________
        containerView.layer.cornerRadius = 22
        containerView.layer.borderWidth = 1
        self.addSubview(containerView)
        
        
        /*containerView.heightAnchor.constraint(greaterThanOrEqualToConstant: 50)
        containerView.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)
        
        containerView.bottomAnchor.*/
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 330).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -500).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        
        
        
        
        let checkbox = Checkbox(frame: CGRect(x: 25, y: 21, width: 25, height: 25))
        checkbox.checkmarkStyle = .tick
        checkbox.borderStyle = .square
        checkbox.checkmarkSize = 0.8
        checkbox.checkboxFillColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        checkbox.checkmarkColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        checkbox.borderCornerRadius = 3
        
        
        containerView.addSubview(checkbox)
        
       //____________________Container View 1 Label________________________
        
        let containerView1Label = UILabel()
            containerView1Label.translatesAutoresizingMaskIntoConstraints = false
            containerView1Label.clipsToBounds = true
        
        
        containerView1Label.text = " Tractari Autoturisme SUV-uri"
        containerView1Label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        var myHeadingFont2 = UIFont(name: "AlNile-Bold", size: 18)
        containerView1Label.font = myHeadingFont2
        containerView.addSubview(containerView1Label)
        
        
        containerView1Label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        containerView1Label.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 80).isActive = true
        
        containerView1Label.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -10).isActive = true
        
        containerView1Label.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -2).isActive = true
        
        
        
        
        containerView1Label.heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
        containerView1Label.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)
        
        
        
        //________________________Container View 2 By FRAME____________________
        
        //containerView.frame = CGRect(x: 20, y: 330, width: self.frame.maxX, height: 80)
        
        
        //________________________Container View 2 By Constraints____________________
        containerView2.layer.cornerRadius = 22
        containerView2.layer.borderWidth = 1
        self.addSubview(containerView2)
        
        
        /*containerView.heightAnchor.constraint(greaterThanOrEqualToConstant: 50)
         containerView.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)
         
         containerView.bottomAnchor.*/
        
        containerView2.topAnchor.constraint(equalTo: self.topAnchor, constant: 400).isActive = true
        containerView2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -430).isActive = true
        containerView2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        containerView2.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        
        
        
        
        let checkbox2 = Checkbox(frame: CGRect(x: 25, y: 21, width: 25, height: 25))
        checkbox2.checkmarkStyle = .tick
        checkbox2.borderStyle = .square
        checkbox2.checkmarkSize = 0.8
        checkbox2.checkboxFillColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        checkbox2.checkmarkColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        checkbox2.borderCornerRadius = 3
        
        
        containerView2.addSubview(checkbox2)
        
        //____________________Container View 2 Label________________________
        
        let containerView2Label = UILabel()
        containerView2Label.translatesAutoresizingMaskIntoConstraints = false
        containerView2Label.clipsToBounds = true
        
        
        containerView2Label.text = " Tractari Autoutilitare "
        containerView2Label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        containerView2Label.font = myHeadingFont2
        containerView2.addSubview(containerView2Label)
        
        
        containerView2Label.topAnchor.constraint(equalTo: containerView2.topAnchor, constant: 10).isActive = true
        containerView2Label.leftAnchor.constraint(equalTo: containerView2.leftAnchor, constant: 80).isActive = true
        
        containerView2Label.rightAnchor.constraint(equalTo: containerView2.rightAnchor, constant: -10).isActive = true
        
        containerView2Label.bottomAnchor.constraint(equalTo: containerView2.bottomAnchor, constant: -2).isActive = true
        
        
        
        
        containerView2Label.heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
        containerView2Label.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)
        
        
        
        //________________________Container View 3 By FRAME____________________
        
        //containerView.frame = CGRect(x: 20, y: 330, width: self.frame.maxX, height: 80)
        
        
        //________________________Container View 3 By Constraints____________________
        containerView3.layer.cornerRadius = 22
        containerView3.layer.borderWidth = 1
        self.addSubview(containerView3)
        
        
        /*containerView.heightAnchor.constraint(greaterThanOrEqualToConstant: 50)
         containerView.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)
         
         containerView.bottomAnchor.*/
        
        containerView3.topAnchor.constraint(equalTo: self.topAnchor, constant: 470).isActive = true
        containerView3.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -360).isActive = true
        containerView3.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        containerView3.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        
        
        
        
        let checkbox3 = Checkbox(frame: CGRect(x: 25, y: 21, width: 25, height: 25))
        checkbox3.checkmarkStyle = .tick
        checkbox3.borderStyle = .square
        checkbox3.checkmarkSize = 0.8
        checkbox3.checkboxFillColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        checkbox3.checkmarkColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        checkbox3.borderCornerRadius = 3
        
        
        containerView3.addSubview(checkbox3)
        
        //____________________Container View 3 Label________________________
        
        let containerView3Label = UILabel()
        containerView3Label.translatesAutoresizingMaskIntoConstraints = false
        containerView3Label.clipsToBounds = true
        
        
        containerView3Label.text = " Tractari Camioane"
        containerView3Label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        containerView3Label.font = myHeadingFont2
        containerView3.addSubview(containerView3Label)
        
        
        containerView3Label.topAnchor.constraint(equalTo: containerView3.topAnchor, constant: 10).isActive = true
        containerView3Label.leftAnchor.constraint(equalTo: containerView3.leftAnchor, constant: 80).isActive = true
        
        containerView3Label.rightAnchor.constraint(equalTo: containerView3.rightAnchor, constant: -10).isActive = true
        
        containerView3Label.bottomAnchor.constraint(equalTo: containerView3.bottomAnchor, constant: -2).isActive = true
        
        
        
        
        containerView2Label.heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
        containerView2Label.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)
        
        
   
        
        //________________________Container View 4 By FRAME____________________
        
        //containerView.frame = CGRect(x: 20, y: 330, width: self.frame.maxX, height: 80)
        
        
        //________________________Container View 4 By Constraints____________________
        containerView4.layer.cornerRadius = 22
        containerView4.layer.borderWidth = 1
        self.addSubview(containerView4)
        
        
        /*containerView.heightAnchor.constraint(greaterThanOrEqualToConstant: 50)
         containerView.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)
         
         containerView.bottomAnchor.*/
        
        containerView4.topAnchor.constraint(equalTo: self.topAnchor, constant: 540).isActive = true
        containerView4.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -290).isActive = true
        containerView4.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        containerView4.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        
        
        
        
        let checkbox4 = Checkbox(frame: CGRect(x: 25, y: 21, width: 25, height: 25))
        checkbox4.checkmarkStyle = .tick
        checkbox4.borderStyle = .square
        checkbox4.checkmarkSize = 0.8
        checkbox4.checkboxFillColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        checkbox4.checkmarkColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        checkbox4.borderCornerRadius = 3
        
        
        containerView4.addSubview(checkbox4)
        
        //____________________Container View 4 Label________________________
        
        let containerView4Label = UILabel()
        containerView4Label.translatesAutoresizingMaskIntoConstraints = false
        containerView4Label.clipsToBounds = true
        
        
        containerView4Label.text = " Tractari utilaje"
        containerView4Label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        containerView4Label.font = myHeadingFont2
        containerView4.addSubview(containerView4Label)
        
        
        containerView4Label.topAnchor.constraint(equalTo: containerView4.topAnchor, constant: 10).isActive = true
        containerView4Label.leftAnchor.constraint(equalTo: containerView4.leftAnchor, constant: 80).isActive = true
        
        containerView4Label.rightAnchor.constraint(equalTo: containerView4.rightAnchor, constant: -10).isActive = true
        
        containerView4Label.bottomAnchor.constraint(equalTo: containerView4.bottomAnchor, constant: -2).isActive = true
        
        
        
        
        containerView4Label.heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
        containerView4Label.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)

        
        
        
        //________________________Container View 5 By FRAME____________________
        
        //containerView.frame = CGRect(x: 20, y: 330, width: self.frame.maxX, height: 80)
        
        
        //________________________Container View 5 By Constraints____________________
        containerView5.layer.cornerRadius = 22
        containerView5.layer.borderWidth = 1
        self.addSubview(containerView5)
        
        
        /*containerView.heightAnchor.constraint(greaterThanOrEqualToConstant: 50)
         containerView.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)
         
         containerView.bottomAnchor.*/
        
        containerView5.topAnchor.constraint(equalTo: self.topAnchor, constant: 610).isActive = true
        containerView5.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -220).isActive = true
        containerView5.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        containerView5.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        
        
        
        
        let checkbox5 = Checkbox(frame: CGRect(x: 25, y: 21, width: 25, height: 25))
        checkbox5.checkmarkStyle = .tick
        checkbox5.borderStyle = .square
        checkbox5.checkmarkSize = 0.8
        checkbox5.checkboxFillColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        checkbox5.checkmarkColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        checkbox5.borderCornerRadius = 3
        
        
        containerView5.addSubview(checkbox5)
        
        //____________________Container View 5 Label________________________
        
        let containerView5Label = UILabel()
        containerView5Label.translatesAutoresizingMaskIntoConstraints = false
        containerView5Label.clipsToBounds = true
        
        
        containerView5Label.text = " Transporturi multiple"
        containerView5Label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        containerView5Label.font = myHeadingFont2
        containerView5.addSubview(containerView5Label)
        
        
        containerView5Label.topAnchor.constraint(equalTo: containerView5.topAnchor, constant: 10).isActive = true
        containerView5Label.leftAnchor.constraint(equalTo: containerView5.leftAnchor, constant: 80).isActive = true
        
        containerView5Label.rightAnchor.constraint(equalTo: containerView5.rightAnchor, constant: -10).isActive = true
        
        containerView5Label.bottomAnchor.constraint(equalTo: containerView5.bottomAnchor, constant: -2).isActive = true
        
        
        
        
        containerView5Label.heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
        containerView5Label.widthAnchor.constraint(greaterThanOrEqualToConstant: 100)

        
        
        
        
        
        
        
        let rangeSlider = RangeSlider()
        rangeSlider.frame = CGRect(x: 10, y: 800, width: 400, height: 50)
        rangeSlider.trackTintColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        self.addSubview(rangeSlider)
        
        
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
        
    }

}
