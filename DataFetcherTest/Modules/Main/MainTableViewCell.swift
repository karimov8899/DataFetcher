//
//  MainTableViewCell.swift
//  DataFetcherTest
//
//  Created by Davron on 11.06.2021.
//

import UIKit

//MARK: Main Table View Cell

class MainTableViewCell: UITableViewCell {
    
    //MARK: UI Elements
    
    var backView: UIView = {
        let view = UIView()
        return view
    }()
    
    var title: UILabel = {
        let title = UILabel()
        title.text = "Title"
        title.font = .systemFont(ofSize: 20, weight: .bold)
        title.numberOfLines = 0
        return title
    }()
    
    var body: UILabel = {
        let body = UILabel()
        body.text = "Body"
        body.font = .systemFont(ofSize: 16, weight: .regular)
        body.numberOfLines = 0
        return body
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
        setUpCOnstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //Setting up Views
    
    func setUpViews() {
        contentView.addSubview(backView)
        backView.addSubview(title)
        backView.addSubview(body)
    }
    
    //Setting up Constraints
    
    func setUpCOnstraints() {
        
        backView.snp.makeConstraints{(make) in
            make.bottom.top.left.right.equalToSuperview()
        }
        
        title.snp.makeConstraints {(make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset(5)
        }
        
        body.snp.makeConstraints {(make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(title.snp.bottom).offset(5)
            make.bottom.equalToSuperview().inset(5)
        }
        
    }
}
