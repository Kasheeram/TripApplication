//
//  TenderCell.swift
//  TripApplication
//
//  Created by kashee on 29/06/19.
//  Copyright © 2019 kashee. All rights reserved.
//

import UIKit

class TenderCell: UITableViewCell {
    
    lazy var cardView:UIView = {
        let view = UIView()
        //        view.backgroundColor = Colors.cardViewBGR
        view.backgroundColor = .white
        return view
    }()
    
    lazy var statusImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "DROP icon"))
        image.contentMode = .scaleToFill
        //        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var navigationImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "navigation"))
        image.contentMode = .scaleToFill
        //        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var pickupLabel: UILabel = {
        let label = UILabel()
        label.text = "Pickup:"
        return label
    }()
    
    lazy var pickupAddressLabel: UILabel = {
        let label = UILabel()
        label.text = "#505, indiranagar, bangalore 560038"
        return label
    }()
    
    lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Completed"
        return label
    }()
    
    lazy var tripIdLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "Load: 545465654"
        return label
    }()
    
    var trip: Trips? {
        didSet {
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        [statusImage, navigationImage, pickupLabel, pickupAddressLabel, statusLabel, tripIdLabel].forEach({addSubview($0)})
        
        statusImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: nil, padding: .init(top: 20, left: 16, bottom: 20, right: 0), size: .init(width: 40, height: 0))
        
        navigationImage.anchor(top: topAnchor, leading: nil, bottom: nil, trailing: trailingAnchor, padding: .init(top: 16, left: 0, bottom: 0, right: 16), size: .init(width: 10, height: 10))
        
        pickupLabel.anchor(top: statusImage.topAnchor, leading: statusImage.trailingAnchor, bottom: nil, trailing:nil, padding: .init(top: 0, left: 16, bottom: 0, right: 0),size: .init(width: 60, height: 20))
        
        pickupAddressLabel.anchor(top: pickupLabel.topAnchor, leading: pickupLabel.trailingAnchor, bottom: nil, trailing: navigationImage.leadingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 8))
    
        tripIdLabel.anchor(top: pickupLabel.bottomAnchor, leading: nil, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 8, bottom: 0, right: 16), size: .init(width: 150, height: 30))
        
        statusLabel.anchor(top: tripIdLabel.topAnchor, leading: pickupLabel.leadingAnchor, bottom: nil, trailing: tripIdLabel.leadingAnchor, size: .init(width: 0, height: 30))
        
    }
    
}


    //MARK: - Add Border to View -
    func addTopBorderWithColor(_ objView : UIView, color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: 0, width: objView.frame.size.width, height: width)
        objView.layer.addSublayer(border)
    }
    
    func addBottomBorderWithColor(_ objView : UIView, color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: objView.frame.size.height - width, width: objView.frame.size.width, height: width)
        objView.layer.addSublayer(border)
    }
