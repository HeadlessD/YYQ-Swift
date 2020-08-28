//
//  DBoardCCell.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/8/24.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

class DBoardCCell: DBaseCollectionViewCell {
        private lazy var iconView: UIImageView = {
            let iw = UIImageView()
            iw.contentMode = .scaleAspectFill
            iw.clipsToBounds = true
            return iw
        }()
        
        private lazy var titleLabel: UILabel = {
            let tl = UILabel()
            tl.textColor = UIColor.black
            tl.font = UIFont.systemFont(ofSize: 14)
            tl.textAlignment = .center
            return tl
        }()
        
        override func configUI() {
            clipsToBounds = true
            
            contentView.addSubview(iconView)
            iconView.snp.makeConstraints {
                $0.top.equalToSuperview().offset(10)
                $0.centerX.equalToSuperview()
                $0.width.height.equalTo(40)
            }
            
            contentView.addSubview(titleLabel)
            titleLabel.snp.makeConstraints {
                $0.top.equalTo(iconView.snp.bottom)
                $0.left.right.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10))
                $0.height.equalTo(20)
            }
        }
        
        var model: ComicModel? {
            didSet {
                guard let model = model else { return }
                iconView.kf.setImage(urlString: model.cover)
                titleLabel.text = model.name
            }
        }
    }
