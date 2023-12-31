//
//  LMGameCell.swift
//  Limon
//
//  Created by Jarrod Norwell on 10/9/23.
//

import Foundation
import UIKit

class LMGameCell : UICollectionViewCell {
    var label, secondaryLabel: UILabel!
    var imageView: UIImageView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .secondarySystemBackground
        imageView.clipsToBounds = true
        imageView.layer.cornerCurve = .continuous
        imageView.layer.cornerRadius = 15
        addSubview(imageView)
        
        let heightConstraint = imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
        heightConstraint.priority = .defaultHigh
        addConstraints([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            heightConstraint
        ])
        
        
        label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        addConstraints([
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: imageView.layoutMargins.bottom),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        
        
        secondaryLabel = UILabel()
        secondaryLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(secondaryLabel)
        addConstraints([
            secondaryLabel.topAnchor.constraint(equalTo: label.bottomAnchor),
            secondaryLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            secondaryLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            secondaryLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
