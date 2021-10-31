//
//  RickyMortyTableViewCell.swift
//  HW4_EmreKeskin
//
//  Created by Emre Keskin on 23.10.2021.
//

import UIKit
import SnapKit
import AlamofireImage

class RickyMortyTableViewCell: UITableViewCell {
    
    private let customImage: UIImageView = UIImageView()
    private let title: UILabel = UILabel()
    private let customDescription: UILabel = UILabel()
    
    private let RandomImage: String = "https://picsum.photos/200/300"
    
    enum Identifier: String {
        case custom = "Rick and Morty"
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        addSubview(customImage)
        addSubview(title)
        addSubview(customDescription)
        title.font = .boldSystemFont(ofSize: 20)
        title.textColor = .green
        title.backgroundColor = .black
        customDescription.font = .italicSystemFont(ofSize: 20)
        customDescription.textColor = .green
        
        customImage.snp.makeConstraints { (make) in
            make.height.equalTo(200)
            make.top.equalTo(contentView)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        title.snp.makeConstraints { (make) in
            make.top.equalTo(customImage.snp.bottom).offset(-20)
            make.right.left.equalTo(contentView)
        }
        
        customDescription.snp.makeConstraints { (make) in
            make.top.equalTo(title).offset(-20)
            make.right.equalTo(contentView)
            make.bottom.equalToSuperview()
        }
    }
    
    func saveModel(model: Result) {
        title.text = model.name
        customDescription.text = model.status
        customImage.af.setImage(withURL: URL(string: model.image ?? RandomImage) ?? URL(string: RandomImage)!)
    }
    
}
