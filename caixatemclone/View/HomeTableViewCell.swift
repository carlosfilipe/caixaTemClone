//
//  HomeTableViewCell.swift
//  caixatemclone
//
//  Created by retina on 24/06/21.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    static let idenfier = "HomeTableViewCell"
    
    var itemMenu: homeOptions = homeOptions(image: "", title: "", subTitle: "", timeAgo: "")

    public let image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pix")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    
    public let title: UILabel = {
        let label = UILabel()
        label.text = "TITULO"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.9)

//        label.backgroundColor = .yellow
        return label;
    }()
    
    public let subTitle: UILabel = {
        let label = UILabel()
        label.text = "Consulte seu informe anual de rendimentos as as sdfiijs jsijap fpsodsjw"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)

        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        label.numberOfLines = 0
//        label.backgroundColor = .green
        return label;
    }()
    
    public let timeAgo: UILabel = {
        let label = UILabel()
        label.text = "12:20"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.38)
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .red
        return label;
    }()
    
    public let infoContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .gray
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        contentView.backgroundColor = .orange

        setupViews()
    }
    
    private func setupViews() {
        
        separatorInset = UIEdgeInsets(top: 0, left: 84, bottom: 0, right: 0)
        addSubview(image)
        addSubview(infoContainer)
        infoContainer.addSubview(title)
        infoContainer.addSubview(subTitle)
        infoContainer.addSubview(timeAgo)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageConstraints = [
            image.centerYAnchor.constraint(equalTo: centerYAnchor),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            image.widthAnchor.constraint(equalToConstant: 60),
            image.heightAnchor.constraint(equalToConstant: 60),
        ]
        NSLayoutConstraint.activate(imageConstraints)
        
        let infoContainerConstraints = [
            infoContainer.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            infoContainer.topAnchor.constraint(equalTo: topAnchor),
            infoContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            infoContainer.trailingAnchor.constraint(equalTo: trailingAnchor)
        ]
        NSLayoutConstraint.activate(infoContainerConstraints)
        
        let titleConstraints = [
            title.leadingAnchor.constraint(equalTo: infoContainer.leadingAnchor),
            title.topAnchor.constraint(equalTo: infoContainer.topAnchor, constant: 16),
            title.trailingAnchor.constraint(equalTo: infoContainer.trailingAnchor, constant: -8),
        ]
        NSLayoutConstraint.activate(titleConstraints)
        
        let subtitleConstraints = [
            subTitle.leadingAnchor.constraint(equalTo: infoContainer.leadingAnchor),
            subTitle.topAnchor.constraint(equalTo: title.bottomAnchor),
            subTitle.trailingAnchor.constraint(equalTo: infoContainer.trailingAnchor, constant: -8),
        ]
        NSLayoutConstraint.activate(subtitleConstraints)
        
        let timeAgoConstraints = [
            timeAgo.topAnchor.constraint(equalTo: infoContainer.topAnchor, constant: 8),
            timeAgo.trailingAnchor.constraint(equalTo: infoContainer.trailingAnchor, constant: -8),
        ]
        NSLayoutConstraint.activate(timeAgoConstraints)
    }
    
}
