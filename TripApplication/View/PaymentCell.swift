//
//  PaymentCell.swift
//  TripApplication
//
//  Created by kashee on 29/06/19.
//  Copyright © 2019 kashee. All rights reserved.
//

import UIKit

class PaymentCell: UITableViewCell {
    
    lazy var cardView:CardView = {
        let view = CardView()
//        view.backgroundColor = Colors.cardViewBGR
        view.backgroundColor = .white
        return view
    }()
    
    lazy var dollorImage1: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "money"))
        image.contentMode = .scaleToFill
        //        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var receivableLabel: UILabel = {
        let label = UILabel()
        label.text = "Receivable"
        return label
    }()
    
    lazy var receivableAmountLabel: UILabel = {
        let label = UILabel()
        label.text = "INR0.000"
        return label
    }()
    
    lazy var dollorImage2: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "money"))
        image.contentMode = .scaleToFill
        //        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var payableLabel: UILabel = {
        let label = UILabel()
        label.text = "Payable"
        return label
    }()
    
    lazy var payableAmountLabel: UILabel = {
        let label = UILabel()
        label.text = "INR0.000"
        return label
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
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
        self.addSubview(cardView)
        cardView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 20, left: 0, bottom: 20, right: 0))
        [dollorImage1, receivableLabel, receivableAmountLabel, dollorImage2, payableLabel, payableAmountLabel].forEach({ addSubview($0)})
        dollorImage1.anchor(top: cardView.topAnchor, leading: cardView.leadingAnchor, bottom: cardView.bottomAnchor, trailing: nil, padding: .init(top: 20, left: 16, bottom: 20, right: 0), size: .init(width: 40, height: 0))
        
        let width = (UIScreen.main.bounds.width / 2) - 52
        receivableLabel.anchor(top: cardView.topAnchor, leading: dollorImage1.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 12, bottom: 0, right: 0),size: .init(width: width, height: 20))
        receivableAmountLabel.anchor(top: receivableLabel.bottomAnchor, leading: receivableLabel.leadingAnchor, bottom: nil, trailing: receivableLabel.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
        dollorImage2.anchor(top: cardView.topAnchor, leading: receivableLabel.trailingAnchor, bottom: cardView.bottomAnchor, trailing: nil, padding: .init(top: 20, left: 2, bottom: 20, right: 0), size: .init(width: 40, height: 0))
        payableLabel.anchor(top: cardView.topAnchor, leading: dollorImage2.trailingAnchor, bottom: nil, trailing: nil,padding: .init(top: 20, left: 12, bottom: 0, right: 0), size: .init(width: width, height: 20))
        payableAmountLabel.anchor(top: payableLabel.bottomAnchor, leading: payableLabel.leadingAnchor, bottom: nil, trailing: payableLabel.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
//        cardView.addBottomBorderWithColor(cardView, color: .red, width: 4.0)
//        addTopBorderWithColor(cardView, color: UIColor.orange, width: 2)
        
    }
    
}

