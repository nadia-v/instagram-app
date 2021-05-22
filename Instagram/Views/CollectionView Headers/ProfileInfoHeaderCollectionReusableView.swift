//
//  ProfileInfoHeaderCollectionReusableView.swift
//  Instagram
//
//  Created by Nadia Vedeneyeva on 5/21/21.
//

import UIKit

class ProfileInfoHeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "ProfileInfoHeaderCollerctionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
