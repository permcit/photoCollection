//
//  ModelCellAlbums.swift
//  photoCollection
//
//  Created by Роман Назаров on 10.07.2022.
//

import Foundation
import UIKit

struct ModelCellAlbums {
    let type: ModelCellType
    let titleImage: UIImageView
    let titleLabel: String
    let titleCount: String
}

struct Sections {
    let title: String
    let cells: [ModelCellAlbums]
}
