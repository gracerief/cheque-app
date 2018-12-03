//
//  GroupCollectionViewCell.swift
//  Cheque!
//
//  Created by Riya Jaggi on 12/2/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class GroupCollectionViewCell: UICollectionViewCell {
    var nameLabel: InsetLabel!
    var adminLabel: UILabel!
    
    let myRed = UIColor(red: 255/255, green: 14/255, blue: 17/255, alpha: 1)
    let myPink = UIColor(red: 255/255, green: 118/255, blue: 127/255, alpha: 1)
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = UIColor.white
        
        //background gradient
        let layer = CAGradientLayer()
        layer.colors = [myRed.cgColor, myPink.cgColor]
        layer.frame = CGRect(x: 0, y: 0, width: 135, height: 125)
        contentView.layer.addSublayer(layer)
        
        nameLabel = InsetLabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        nameLabel.textColor = UIColor.black
        contentView.addSubview(nameLabel)
        
        adminLabel = InsetLabel()
        adminLabel.translatesAutoresizingMaskIntoConstraints = false
        adminLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        adminLabel.textColor = UIColor.black
        contentView.addSubview(adminLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
