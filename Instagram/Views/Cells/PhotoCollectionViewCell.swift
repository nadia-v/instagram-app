//
//  PhotoCollectionViewCell.swift
//  Instagram
//
//  Created by Nadia Vedeneyeva on 5/21/21.
//

import SDWebImage
import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    
    private let photoImageView: UIImageView = {
        let photoImageView = UIImageView()
        photoImageView.clipsToBounds = true
        photoImageView.contentMode = .scaleAspectFill
        return photoImageView
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        photoImageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoImageView.image = nil
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubview(photoImageView)
        contentView.clipsToBounds = true
        accessibilityLabel = "User post image"
        accessibilityHint = "Double-tap to open post"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: UserPost) {
        let url = model.thumbnailImage
        //if you want to do it yourself you'll have to take care of hashing
//        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, _, _ in
//            self.photoImageView.image = UIImage(data: data!)
//        })
        photoImageView.sd_setImage(with: url, completed: nil)    }
    
    public func configure(debug imageName: String) {
        photoImageView.image = UIImage(named: imageName)
    }
}
