//
//  PostInteractionView.swift
//  BursaDetractari
//
//  Created by Tahir Awan on 12/18/19.
//  Copyright © 2019 tahir. All rights reserved.
//

import UIKit

class PostInteractionView: UIView, UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
    
    
    var stringArray = ["Toate","Privat", "Firma","Toate","Privat", "Firma","Toate","Privat", "Firma","Firma","Toate","Privat", "Firma"]
    
    lazy var centerCollection: UICollectionView = {
        var lay = UICollectionViewFlowLayout()
        lay.scrollDirection = .vertical
        lay.minimumLineSpacing = 0
        var cc = UICollectionView(frame: .zero, collectionViewLayout: lay)
        
        cc.dataSource = self
        cc.delegate = self
        cc.register(myCollectionViewCell.self, forCellWithReuseIdentifier: "cellMy")
        cc.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        
        return cc
    }()
    
   
    
    /*override init(frame: CGRect) {
        super.init(frame: .zero)
        setUpView()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }*/
    
    
    
    func setUpView(){
        //--------------------------- Top View ----------------------------------
        
        
        
        let topView = UIView()
        topView.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        
        //____________Important with Constraints___________
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.clipsToBounds = true
        self.addSubview(topView)
        
        
        topView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        topView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        
        
        
        self.addSubview(centerCollection)
        centerCollection.translatesAutoresizingMaskIntoConstraints = false
        centerCollection.clipsToBounds = true
        centerCollection.topAnchor.constraint(equalTo: self.topAnchor, constant: 35).isActive = true
        centerCollection.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        centerCollection.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        centerCollection.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -0).isActive = true
        
        
        
        
        
        
        
        
        
        
        
        
        
        let firstbtn = UIButton(frame: CGRect(x: 10, y: 40, width: 100, height: 40))
        firstbtn.setTitle("Anuleaza", for: .normal)
        firstbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        firstbtn.titleColor(for: .normal)
        
        topView.addSubview(firstbtn)
        
        
        let Secondbtn = UIButton(frame: CGRect(x: 160, y: 40, width: 100, height: 40))
        Secondbtn.setTitle("Culoare", for: .normal)
        Secondbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        Secondbtn.titleColor(for: .normal)
        
        topView.addSubview(Secondbtn)
        
        
        let thirdbtn = UIButton(frame: CGRect(x: 300, y: 40, width: 100, height: 40))
        thirdbtn.setTitle("Confirma", for: .normal)
        thirdbtn.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        thirdbtn.titleColor(for: .normal)
        
        topView.addSubview(thirdbtn)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stringArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellMy", for: indexPath) as! myCollectionViewCell
        
        
        cell.lbl.text = stringArray[indexPath.row]
        cell.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
