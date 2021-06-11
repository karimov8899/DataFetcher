//
//  MainTableViewCell.swift
//  DataFetcherTest
//
//  Created by Davron on 11.06.2021.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {
    
    //MARK: UI Elements
    var backView: UIView = {
        let view = UIView()
        return view
    }()
    
    var name: UILabel = {
        let title = UILabel()
        title.text = "Title"
        title.font = .systemFont(ofSize: 20, weight: .bold)
        title.numberOfLines = 0
        return title
    }()
    
    var email: UILabel = {
        let body = UILabel()
        body.text = "email"
        body.font = .systemFont(ofSize: 16, weight: .semibold)
        body.numberOfLines = 0
        return body
    }()
    
    var body: UILabel = {
        let body = UILabel()
        body.text = "Body"
        body.font = .systemFont(ofSize: 16, weight: .regular)
        body.numberOfLines = 0
        return body
    }()
    
    //MARK: Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
        setUpCOnstraints()
        selectionStyle = .none
        isUserInteractionEnabled = false
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
        backView.addSubview(name)
        backView.addSubview(body)
        backView.addSubview(email)
    }
    
    //Setting up Constants
    
    func setUpCOnstraints() {
        backView.snp.makeConstraints{(make) in
            make.bottom.top.left.right.equalToSuperview()
        }
        
        name.snp.makeConstraints {(make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset(5)
        }
        
        body.snp.makeConstraints {(make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.top.equalTo(name.snp.bottom).offset(5)
            make.bottom.equalTo(email.snp.top).inset(-10)
        }
        
        email.snp.makeConstraints {(make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.bottom.equalToSuperview().inset(10)
        }
        
    }
}
