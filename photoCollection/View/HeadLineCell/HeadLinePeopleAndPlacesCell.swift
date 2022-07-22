//
//  HeadLinePeopleAndPlacesCell.swift
//  photoCollection
//
//  Created by Роман Назаров on 10.07.2022.
//

import Foundation
import UIKit

class HeadLinePeopleAndPlacesCell: UICollectionReusableView {
    
    // MARK: - Properties
    
    private var label: UILabel = {
        var label = UILabel()
        label.text = "Люди и места"
        label.textColor = .black
        label.font = MetricHeaderCellMyAlbums.labelFont
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
            label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: MetricPeopleAndPlaces.labelTopAnchorConstant),
            label.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: MetricPeopleAndPlaces.labelLeadingAnchorConstant),
            ])
    }
}

    // MARK: - Metrics

struct MetricPeopleAndPlaces {
    static let labelFont: UIFont = .boldSystemFont(ofSize: 20)
    
    static let labelTopAnchorConstant: CGFloat = 10
    static let labelLeadingAnchorConstant: CGFloat = 5
}
