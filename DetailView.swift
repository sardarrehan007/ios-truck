//
//  DetailView.swift
//  Bursa
//
//  Created by Shawal's Mac on 16/12/2019.
//  Copyright © 2019 Shawal's Mac. All rights reserved.
//

import UIKit

class DetailView: UIView, UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout  {
    
   
    
    var stringArray = ["Culoare","Cutie de viteze", "An de fabricatie","Combustible","Rulaj (km)", "Caroserie","Capacitate motor (cm3)","Stare", "Ordoneaza dupa","Capacitate motor (cm3)","Stare", "Ordoneaza dupa"]
    
    
    var culoareArray = ["Alb","Negru", "Gri","Argintiu","Albastru"]
    var culoareSelectedArray = [String]()
    
    lazy var centerCollection: UICollectionView = {
        var lay = UICollectionViewFlowLayout()
        lay.scrollDirection = .vertical
        lay.minimumLineSpacing = 0
        var cc = UICollectionView(frame: .zero, collectionViewLayout: lay)
        cc.translatesAutoresizingMaskIntoConstraints = false
        
        cc.dataSource = self
        cc.delegate = self
        cc.register(myCollectionViewCell.self, forCellWithReuseIdentifier: "cellMy")
        cc.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        return cc
    }()

    
    //___________________________OVERLAY_And________ITS_NAV_BAR____________________
    let topView2 = UIView() //Nav Bar of SlideOverView
    var newView: PostInteractionView! //SlideOverParentView
    
    var greyOverlay: UIView! //GreyView
    
    
    
    
    lazy var SliderViewCollection: UICollectionView = {
        var lay = UICollectionViewFlowLayout()
        lay.scrollDirection = .vertical
        lay.minimumLineSpacing = 0
        var cc = UICollectionView(frame: .zero, collectionViewLayout: lay)
        
        cc.dataSource = self
        cc.delegate = self
        cc.register(RangeTableViewCell.self, forCellWithReuseIdentifier: "cell2")
        cc.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        return cc
    }()
    
    var header: UIView = {
        var hView = UIView()
        hView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return hView
    }()
    
    
    var bottomSegmentParentView: UIView = {
        var bSPView = UIView()
        bSPView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return bSPView
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
        
    }
    
    func setUpView(){
        
        
        //_____________________________Header______________________________
        header.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        //____________Important with Constraints___________
        header.translatesAutoresizingMaskIntoConstraints = false
        header.clipsToBounds = true
        self.addSubview(header)
        
        header.widthAnchor.constraint(equalToConstant: 410).isActive = true
        header.heightAnchor.constraint(equalToConstant: 160).isActive = true
        header.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        header.topAnchor.constraint(equalTo: self.topAnchor, constant: 85).isActive = true
        
        
        
        
        
        topSegmentControl()
        middleSegmentControl()
        
        
        
        
        bottomSegmentParentView.translatesAutoresizingMaskIntoConstraints = false
        bottomSegmentParentView.clipsToBounds = true
        self.addSubview(bottomSegmentParentView)
        
        bottomSegmentParentView.widthAnchor.constraint(equalToConstant: 410).isActive = true
        bottomSegmentParentView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        bottomSegmentParentView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        bottomSegmentParentView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -105).isActive = true
        
        lowerSegmentControl()
        
        let lowerSegmentHeading =  UILabel()
        
            lowerSegmentHeading.text = "Persoana fizica sa firma"
            lowerSegmentHeading.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
            let myHeadingFont = UIFont(name: "AlNile-Bold", size: 16)
            lowerSegmentHeading.font = myHeadingFont
            lowerSegmentHeading.textAlignment = .left
        
        
        bottomSegmentParentView.addSubview(lowerSegmentHeading)
        lowerSegmentHeading.translatesAutoresizingMaskIntoConstraints = false
        lowerSegmentHeading.clipsToBounds = true
        
        lowerSegmentHeading.widthAnchor.constraint(equalToConstant: 200).isActive = true
        lowerSegmentHeading.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lowerSegmentHeading.leftAnchor.constraint(equalTo: bottomSegmentParentView.leftAnchor, constant: 20).isActive = true
        lowerSegmentHeading.topAnchor.constraint(equalTo: bottomSegmentParentView.topAnchor, constant: 8).isActive = true
        
        
        
        
        //----------------------------- Footer ----------------------------------
        let starIcon: UILabel = {
            let sIcon = UILabel()
                sIcon.text = "⭐︎"
                sIcon.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            let myHeadingFont = UIFont(name: "AlNile-Bold", size: 25)
            sIcon.font = myHeadingFont
            return sIcon
        }()
        
        let footerHeading: UILabel = {
            let fH = UILabel()
            fH.text = "Vezi anunturile"
            fH.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            let myHeadingFont = UIFont(name: "AlNile-Bold", size: 22)
            fH.font = myHeadingFont
            fH.textAlignment = .center
            return fH
        }()
        
        let footerSubHeading: UILabel = {
            let fSH = UILabel()
            fSH.text = "25000 anunturi"
            fSH.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            fSH.textAlignment = .center
            let myHeadingFont = UIFont(name: "AlNile-Bold", size: 16)
            fSH.font = myHeadingFont
            return fSH
        }()
        
        
        let footer = UIView()
        
        //_______________________Footer_Star_________________________
        footer.addSubview(starIcon)
        starIcon.translatesAutoresizingMaskIntoConstraints = false
        starIcon.clipsToBounds = true
        
        starIcon.widthAnchor.constraint(equalToConstant: 40).isActive = true
        starIcon.heightAnchor.constraint(equalToConstant: 40).isActive = true
        starIcon.bottomAnchor.constraint(equalTo: footer.bottomAnchor, constant: -10).isActive = true
        starIcon.leftAnchor.constraint(equalTo: footer.leftAnchor, constant: 15).isActive = true
        
        //_______________________Footer_Heading_________________________
        footer.addSubview(footerHeading)
        footerHeading.translatesAutoresizingMaskIntoConstraints = false
        footerHeading.clipsToBounds = true
        
        footerHeading.widthAnchor.constraint(equalToConstant: 200).isActive = true
        footerHeading.heightAnchor.constraint(equalToConstant: 30).isActive = true
        footerHeading.bottomAnchor.constraint(equalTo: footer.bottomAnchor, constant: -20).isActive = true
        
        
        footerHeading.centerXAnchor.constraint(equalTo: footer.centerXAnchor).isActive = true
        
        //_______________________Footer_Sub_Heading_________________________
        
        
        
        footer.addSubview(footerSubHeading)
        footerSubHeading.translatesAutoresizingMaskIntoConstraints = false
        footerSubHeading.clipsToBounds = true
        
        footerSubHeading.widthAnchor.constraint(equalToConstant: 150).isActive = true
        footerSubHeading.heightAnchor.constraint(equalToConstant: 30).isActive = true
        footerSubHeading.bottomAnchor.constraint(equalTo: footer.bottomAnchor, constant: -2).isActive = true
        
        
        footerSubHeading.centerXAnchor.constraint(equalTo: footer.centerXAnchor).isActive = true
        
        
        
        
        
        
        
        footer.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        
        //____________Important with Constraints___________
        footer.translatesAutoresizingMaskIntoConstraints = false
        footer.clipsToBounds = true
        self.addSubview(footer)
        footer.layer.cornerRadius = 10
        
        footer.widthAnchor.constraint(equalToConstant: self.frame.width + 10 ).isActive = true
        footer.heightAnchor.constraint(equalToConstant: 70).isActive = true
        footer.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        footer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        
        //--------------------------- Top View ----------------------------------
        
        
        let topView = UIView()
        
        topView.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        
        //____________Important with Constraints___________
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.clipsToBounds = true
        self.addSubview(topView)
        
        
        topView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        
        
        
        self.addSubview(centerCollection)
        
        centerCollection.topAnchor.constraint(equalTo: self.topAnchor, constant: 249).isActive = true
        centerCollection.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -180).isActive = true
        centerCollection.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        centerCollection.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -0).isActive = true
        
        
        
        
        self.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        

        
        
        
  
        
        
        
        let firstbtn = UIButton(frame: CGRect(x: 10, y: 40, width: 100, height: 40))
        firstbtn.setTitle("Anuleaza", for: .normal)
        firstbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        firstbtn.titleColor(for: .normal)
        
        topView.addSubview(firstbtn)
        
        
        let Secondbtn = UIButton(frame: CGRect(x: 160, y: 40, width: 100, height: 40))
         Secondbtn.setTitle("Filtre", for: .normal)
         Secondbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
         Secondbtn.titleColor(for: .normal)
        
         topView.addSubview(Secondbtn)
        
        
        let thirdbtn = UIButton(frame: CGRect(x: 300, y: 40, width: 100, height: 40))
         thirdbtn.setTitle("Confirma", for: .normal)
         thirdbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
         thirdbtn.titleColor(for: .normal)
        
         topView.addSubview(thirdbtn)
        
        
        
        
        
        
        
 //--------------------------- TextFields --------------------------------
       
        
        
        let FirstTextField  = UITextField()
        
        FirstTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        FirstTextField.layer.borderWidth = 2
        FirstTextField.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.addSubview(FirstTextField)
        
        FirstTextField.translatesAutoresizingMaskIntoConstraints = false
        FirstTextField.clipsToBounds = true
        
        FirstTextField.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10).isActive = true
        FirstTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        FirstTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 142)
            .isActive = true
        FirstTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 27).isActive = true
        
        
        
        
 
        //------------------------- Second TextField ------------------------------
        
        
        let SecondTextField  = UITextField()
        
        SecondTextField.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        SecondTextField.layer.borderWidth = 2
        SecondTextField.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.addSubview(SecondTextField)
        
        SecondTextField.translatesAutoresizingMaskIntoConstraints = false
        SecondTextField.clipsToBounds = true
        
        SecondTextField.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10).isActive = true
        SecondTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        SecondTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 142)
            .isActive = true
        SecondTextField.leftAnchor.constraint(equalTo: FirstTextField.rightAnchor, constant: 5).isActive = true
      
        
        //---------------------- BottomView ------------------------
        
        let bottomView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 80))
               topView.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
               self.addSubview(topView)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == SliderViewCollection{
            return culoareArray.count
        }
        else{
            return stringArray.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == SliderViewCollection{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! RangeTableViewCell
            
            
            cell.pointsLabel.text = culoareArray[indexPath.row]
            cell.emojiLabel.isHidden = true
            
            
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellMy", for: indexPath) as! myCollectionViewCell
            
            
            cell.lbl.text = stringArray[indexPath.row]
            cell.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            
            
            return cell
        }
        
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        if collectionView == SliderViewCollection{
            return CGSize(width: collectionView.frame.width, height: 50)
        }
        else{
            return CGSize(width: collectionView.frame.width, height: 50)
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == SliderViewCollection{
            //return CGSize(width: collectionView.frame.width, height: 40)
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! RangeTableViewCell
            
            
            if cell.isSelected == true{
                cell.isAlreadySelected = true
            }
            
            culoareSelectedArray.append(culoareArray[indexPath.row])
        }
        else{
            
            if(indexPath.row == 0)
            {
            
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellMy", for: indexPath) as! myCollectionViewCell
                
                    cell.lbl.text = stringArray[indexPath.row]
                
                //__________________________OVERLAY__________________________
                
                greyOverlay = UIView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
               
                
                
                
                
                
                greyOverlay.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.5457471391)
                self.addSubview(greyOverlay)
                
                
                
                //__________________________OVERLAY__________________________
                newView = PostInteractionView(frame: CGRect(x: 0, y: 900, width: self.bounds.width, height: self.bounds.height / 3))
                
                newView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                
                
                
                //__________________________SlidedView__________________________
                
                topView2.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                //____________Important with Constraints___________
                topView2.translatesAutoresizingMaskIntoConstraints = false
                topView2.clipsToBounds = true
                
                
                newView.addSubview(topView2)
                
                
                topView2.widthAnchor.constraint(equalTo: newView.widthAnchor).isActive = true
                topView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
                topView2.topAnchor.constraint(equalTo: newView.topAnchor, constant: 0).isActive = true
                
                
                let firstbtn = UIButton(frame: CGRect(x: 3, y: 5, width: 100, height: 40))
                firstbtn.setTitle("Anuleaza", for: .normal)
                firstbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                firstbtn.titleColor(for: .normal)
                firstbtn.setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: .normal)
                
                topView2.addSubview(firstbtn)
                
                
                let Secondbtn = UIButton(frame: CGRect(x: 155, y: 5, width: 100, height: 40))
                Secondbtn.setTitle("Culoare", for: .normal)
                Secondbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                Secondbtn.titleColor(for: .normal)
                Secondbtn.setTitleColor(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
                
                topView2.addSubview(Secondbtn)
                
                
                let thirdbtn = UIButton(frame: CGRect(x: 305, y: 5, width: 100, height: 40))
                thirdbtn.setTitle("Confirma", for: .normal)
                thirdbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                thirdbtn.titleColor(for: .normal)
                thirdbtn.setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: .normal)
                
                topView2.addSubview(thirdbtn)
                
                thirdbtn.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
                thirdbtn.tag = 1
                
                
                
                
                
                
                newView.addSubview(SliderViewCollection)
                SliderViewCollection.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                SliderViewCollection.translatesAutoresizingMaskIntoConstraints = false
                SliderViewCollection.clipsToBounds = true
                SliderViewCollection.topAnchor.constraint(equalTo: newView.topAnchor, constant: 52).isActive = true
                SliderViewCollection.bottomAnchor.constraint(equalTo: newView.bottomAnchor, constant: 0).isActive = true
                SliderViewCollection.leftAnchor.constraint(equalTo: newView.leftAnchor, constant: 0).isActive = true
                SliderViewCollection.rightAnchor.constraint(equalTo: newView.rightAnchor, constant: -0).isActive = true
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                self.addSubview(newView)
                
                //__________________Animate_SlideOver_to_Move_On_Screen_________________
                UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                    
                    self.newView.center.y = self.newView.center.y - 300
                    
                }, completion: { finished in
                    print("Slided")
                })
                
            }
        }
        
        
        
        
        
        
    }
    
    
    func topSegmentControl(){
        let heading = ["Pret","Schimb"]
        let segmentedControl = UISegmentedControl(items : heading)
        segmentedControl.frame = CGRect()
     
        segmentedControl.selectedSegmentIndex = 0
           
        segmentedControl.layer.cornerRadius = 5.0
        segmentedControl.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        segmentedControl.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        segmentedControl.layer.borderColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        segmentedControl.layer.borderWidth = 1

        self.addSubview(segmentedControl)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.clipsToBounds = true
        
        segmentedControl.widthAnchor.constraint(equalToConstant: self.frame.width).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        segmentedControl.topAnchor.constraint(equalTo: self.topAnchor, constant: 90)
            .isActive = true
        segmentedControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        
        
        let separator1 = UIView()
        
        separator1.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        header.addSubview(separator1)
        separator1.translatesAutoresizingMaskIntoConstraints = false
        
        separator1.widthAnchor.constraint(equalToConstant: self.frame.width).isActive = true
        separator1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separator1.topAnchor.constraint(equalTo: header.topAnchor, constant: 45).isActive = true
        separator1.centerXAnchor.constraint(equalTo: header.centerXAnchor).isActive = true
    }
    
    
    func middleSegmentControl(){
        //---------------------- Second SegmentControlle ------------------------
        let heading2 = ["€","lei"]
        let segmentedControl = UISegmentedControl(items : heading2)
        segmentedControl.frame = CGRect()
        
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.layer.cornerRadius = 5.0
        segmentedControl.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        segmentedControl.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        segmentedControl.layer.borderColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        segmentedControl.layer.borderWidth = 1
        
        self.addSubview(segmentedControl)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.clipsToBounds = true
        
        segmentedControl.widthAnchor.constraint(equalToConstant: self.frame.width).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        segmentedControl.topAnchor.constraint(equalTo: self.topAnchor, constant: 199)
            .isActive = true
        segmentedControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        
        
        let separator2 = UIView()
        
        separator2.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        header.addSubview(separator2)
        separator2.translatesAutoresizingMaskIntoConstraints = false
        
        separator2.widthAnchor.constraint(equalToConstant: self.frame.width).isActive = true
        separator2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separator2.topAnchor.constraint(equalTo: header.topAnchor, constant: 106).isActive = true
        separator2.centerXAnchor.constraint(equalTo: header.centerXAnchor).isActive = true
    }
    
    func lowerSegmentControl(){
        //---------------------- Third SegmentControlle ------------------------
        
        
        let heading3 = ["Toate","Privat", "Firma"]
        let segmentedControl2 = UISegmentedControl(items : heading3)
        segmentedControl2.frame = CGRect()
        
        segmentedControl2.selectedSegmentIndex = 0
        
        segmentedControl2.layer.cornerRadius = 5.0
        segmentedControl2.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        segmentedControl2.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        segmentedControl2.layer.borderColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        segmentedControl2.layer.borderWidth = 1
        
        self.addSubview(segmentedControl2)
        
        
        segmentedControl2.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl2.clipsToBounds = true
        
        segmentedControl2.widthAnchor.constraint(equalToConstant: self.frame.width).isActive = true
        segmentedControl2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        segmentedControl2.topAnchor.constraint(equalTo: self.topAnchor, constant: 750)
            .isActive = true
        segmentedControl2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        
        
        
    }
    
    @objc func buttonAction(sender: UIButton!)
    {
        print("€")
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            print(self.newView.center.y )
            self.newView.center.y = self.newView.center.y + 300
        }, completion: { finished in
            print("Slided")
            self.removeAllOverlayViews()
            
            let cell = self.centerCollection.cellForItem(at: IndexPath(item: 0, section: 0)) as! myCollectionViewCell
            
            
            
            let joined = self.culoareSelectedArray.joined(separator: ", ")
            
            cell.selectedText.text = joined
            
            
        })
        
        
        
    }
    
    func removeAllOverlayViews()
    {
        if(self.newView.center.y > 1000)
        {
            newView.removeFromSuperview()
        }
        self.greyOverlay.removeFromSuperview()
    }
    
    
    
    
}
