//
//  TripDetailsCell.swift
//  TripApplication
//
//  Created by kashee on 29/06/19.
//  Copyright © 2019 kashee. All rights reserved.
//

import UIKit

class TripDetailsCell: UITableViewCell {

    lazy var carrierImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "drvier"))
        image.contentMode = .scaleAspectFill
//        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var carrierNameLabel: UILabel = {
        let label = UILabel()
        label.text = "NA"
        return label
    }()
    
    lazy var truckTypeImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "Truck TYPE"))
        image.contentMode = .scaleAspectFill
//        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var truckTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "U1"
        return label
    }()
    
    lazy var nAImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "Number plate"))
        image.contentMode = .scaleAspectFill
//        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var nALabel: UILabel = {
        let label = UILabel()
        label.text = "NA"
        return label
    }()
    
    
    
    
    lazy var distanceImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "distance"))
        image.contentMode = .scaleAspectFill
//        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    lazy var distanceLabel: UILabel = {
        let label = UILabel()
        label.text = "NA"
        return label
    }()

    lazy var drivingTimeImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "TIME"))
        image.contentMode = .scaleAspectFill
//        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    lazy var drivingTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "U1"
        return label
    }()

    lazy var weightImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "weight"))
        image.contentMode = .scaleAspectFill
//        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    lazy var weightLabel: UILabel = {
        let label = UILabel()
        label.text = "NA"
        return label
    }()

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        self.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
//        addBottomBorderWithColor(self, color: .red, width: 2.0)
        
        separatorInset.left = 0
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupViews() {
        let leftImagestackView = UIStackView(arrangedSubviews: [carrierImage, truckTypeImage, nAImage])
        leftImagestackView.setStackProperties()

        let leftLabelStackView = UIStackView(arrangedSubviews: [carrierNameLabel, truckTypeLabel, nALabel])
        leftLabelStackView.setStackProperties()
        
        let rightImagestackView = UIStackView(arrangedSubviews: [distanceImage, drivingTimeImage, weightImage])
        rightImagestackView.setStackProperties()
        
        let rightLabelStackView = UIStackView(arrangedSubviews: [distanceLabel, drivingTimeLabel, weightLabel])
        rightLabelStackView.setStackProperties()
        
        addSubview(leftImagestackView)
        addSubview(leftLabelStackView)
        addSubview(rightImagestackView)
        addSubview(rightLabelStackView)
        
        leftImagestackView.topAnchor.constraint(equalTo: topAnchor,constant:16).isActive = true
        leftImagestackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant:16).isActive = true
        leftImagestackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        leftImagestackView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        leftLabelStackView.topAnchor.constraint(equalTo: topAnchor,constant:16).isActive = true
        leftLabelStackView.leadingAnchor.constraint(equalTo: leftImagestackView.trailingAnchor, constant:10).isActive = true
        leftLabelStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        let width = (UIScreen.main.bounds.width / 2) - 46
        leftLabelStackView.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        rightImagestackView.topAnchor.constraint(equalTo: topAnchor,constant:16).isActive = true
        rightImagestackView.leadingAnchor.constraint(equalTo: leftLabelStackView.trailingAnchor, constant:2).isActive = true
        rightImagestackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        rightImagestackView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        rightLabelStackView.topAnchor.constraint(equalTo: topAnchor,constant:16).isActive = true
        rightLabelStackView.leadingAnchor.constraint(equalTo: rightImagestackView.trailingAnchor, constant:10).isActive = true
        rightLabelStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
//        let width = (UIScreen.main.bounds.width / 2) - 46
        rightLabelStackView.widthAnchor.constraint(equalToConstant: width).isActive = true

    }

}


extension UIStackView {
    func setStackProperties() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.axis = .vertical
        self.spacing = 8
        self.distribution = .fillEqually
    }
    
    func setHStackProperties() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.axis = .horizontal
        self.spacing = 40
        self.distribution = .fillEqually
    }
}
