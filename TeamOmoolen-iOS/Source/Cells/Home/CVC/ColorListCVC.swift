//
//  ColorListCVC.swift
//  TeamOmoolen-iOS
//
//  Created by soyeon on 2021/07/09.
//

import UIKit
import SnapKit

class ColorListCVC: UICollectionViewCell {
    static let identifier = "ColorListCVC"
    
    private lazy var colorImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "lensDescribeGlitter")
        return imageView
    }()
    
    // MARK: - Life Cycle Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUI()
    }

}

extension ColorListCVC {
    func setUI() {
        contentView.layer.cornerRadius = 6
        contentView.layer.masksToBounds = true
    }
    
    func initCell(color: String) {
        switch color {
        case "clear":
            contentView.layer.borderColor = UIColor.omClear.cgColor
        case "black":
            contentView.layer.backgroundColor = UIColor.omMainBlack.cgColor
        case "gray":
            contentView.layer.backgroundColor = UIColor.omSecondGray.cgColor
        case "choco":
            contentView.layer.backgroundColor = UIColor.omChoco.cgColor
        case "green":
            contentView.layer.backgroundColor = UIColor.omMainGreen.cgColor
        case "brown":
            contentView.layer.backgroundColor = UIColor.omBrown.cgColor
        case "purple":
            contentView.layer.backgroundColor = UIColor.omPurple.cgColor
        case "blue":
            contentView.layer.backgroundColor = UIColor.omBlue.cgColor
        case "gold":
            contentView.layer.backgroundColor = UIColor.omGold.cgColor
        case "pink":
            contentView.layer.backgroundColor = UIColor.bubbleGumPink.cgColor
        case "orange":
            contentView.layer.backgroundColor = UIColor.omMainOrange.cgColor
            
        case "glitter":
            contentView.addSubview(colorImageView)
            colorImageView.snp.makeConstraints { make in
                make.centerX.centerY.equalToSuperview()
            }
        default:
            return
        }
    }
}


