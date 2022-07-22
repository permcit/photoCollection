//
//  HeadLineTypesOfMediaCell.swift
//  photoCollection
//
//  Created by Роман Назаров on 10.07.2022.
//

import Foundation
import UIKit

class HeadLineTypesOfMediaCell: UICollectionReusableView {
    
    // MARK: - Properties
    
    private var label: UILabel = {
        var label = UILabel()
        label.text = "Типы медиафайлов"
        label.textColor = .black
        label.font = MetricsTypesOfMedia.labelFont
        label.textAlignment = .left
        
       return label
    }()
    
    // MARK: - Setup Layout
    
    public func configure() {
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: MetricsTypesOfMedia.labelTopAnchorConstant),
            label.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: MetricsTypesOfMedia.labelLeadingAnchorConstant),
            ])
    }
}

    // MARK: - Metrics

struct MetricsTypesOfMedia {
    static let labelFont: UIFont = .boldSystemFont(ofSize: 20)
    
    static let labelTopAnchorConstant: CGFloat = 10
    static let labelLeadingAnchorConstant: CGFloat = 5
}
