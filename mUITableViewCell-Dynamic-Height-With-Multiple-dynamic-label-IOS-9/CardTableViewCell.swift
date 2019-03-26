//
//  CardTableViewCell.swift
//  mUITableViewCell-Dynamic-Height-With-Multiple-dynamic-label-IOS-9
//
//  Created by DKHT on 3/26/19.
//  Copyright © 2019 DKHT. All rights reserved.
//

import Foundation
import UIKit

class CardTableViewCell: UITableViewCell{
    static let identifier = "CardTableViewCell"
    
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var descLb: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    @IBOutlet weak var cardView: UIView!
    
    func configCell(model: TempModel){
        self.titleLb.text = model.title
        self.descLb.text  = model.desc
        
        self.cardView.backgroundColor = UIColor.white
        
        self.cardView.layer.shadowColor = UIColor(hexString: "#000000").cgColor
        self.cardView.layer.shadowOpacity = 0.1
        self.cardView.layer.shadowRadius = 5
        self.cardView.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        
        self.cardView.layer.cornerRadius  = 10
    }
    
    static func registerCell(tableView: UITableView){
        tableView.register(UINib(nibName: CardTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CardTableViewCell.identifier)
    }
}


extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
