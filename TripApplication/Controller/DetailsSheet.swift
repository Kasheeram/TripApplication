//
//  DetailsSheet.swift
//  TripApplication
//
//  Created by kashee on 29/06/19.
//  Copyright © 2019 kashee. All rights reserved.
//

import UIKit


class DetailsSheetTopView:UIView {
    
    let pickerView = UIPickerView()
    var leaveLauncher:DetailsSheet?
    
    let textFieldBgrColor = UIColor(red: 251/255, green: 252/255, blue: 253/255, alpha: 1)
    
    lazy var headerView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pickup - MHB-BHIWANDI"
        label.textAlignment = .left
        return label
    }()
    
    lazy var dismissWindow:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "cross icon"), for: .normal)
        button.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        return button
        
    }()
    
    lazy var pickupImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "pick up"))
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var lineView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 0.16)
        return view
    }()
    
    lazy var verticalLineView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 0.16)
        return view
    }()
    
    
    lazy var pickupDateTxtLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pickup date"
        label.textAlignment = .left
        return label
    }()
    
    lazy var pickupDateLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mar 14, 2019"
        label.textAlignment = .left
        return label
    }()
    
    
    lazy var pickupTimeTxtLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pickup time"
        label.textAlignment = .left
        return label
    }()
    
    lazy var pickupTimeLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "07:12 AM"
        label.textAlignment = .left
        return label
    }()
    
    
    
    lazy var locationTxtLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Location"
        label.textAlignment = .left
        return label
    }()
    
    lazy var locationLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BND"
        label.textAlignment = .left
        return label
    }()
    
    
    lazy var dockIdTxtLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dock ID"
        label.textAlignment = .left
        return label
    }()
    
    lazy var dockIdLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ABC"
        label.textAlignment = .left
        return label
    }()
    
    lazy var HTimeLineView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 0.16)
        return view
    }()
    
    
    
    lazy var locationNameLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "LINFOX LOGISTIC (INDIA) PVT"
        label.textAlignment = .left
        return label
    }()
    
    lazy var addressLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "HUL-LINFOX LOGISTIC (INDIA) PVT MHB-BHIWANDI MAHARASTRA-421302"
        label.textAlignment = .left
        label.numberOfLines = 3
        return label
    }()
    
    lazy var HAddressLineView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 0.16)
        return view
    }()
    
    
    let checkList = circularImageView(imageName: "pod icon")
    let documents = circularImageView(imageName: "documents icon")
    let productDetails = circularImageView(imageName: "product details")
    
    
    lazy var checkListLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Checklist"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var documentsLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Documents"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var productDetailsLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Product Details"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var finishButton: UIButton = {
        let button = UIButton()
        button.setTitle("FINISH PICKUP", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.backgroundColor = .clear
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        return button
    }()
    

    @objc func hideView(){
        print("do some action here")
        leaveLauncher?.handleDismiss()
    }
    
    @objc func dismiss(){
        leaveLauncher?.handleDismiss()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        roundCorners(corners: [.topLeft, .topRight], radius: 10.0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        
        self.addSubview(headerView)
        headerView.addSubview(dismissWindow)
        headerView.addSubview(titleLabel)
        headerView.addSubview(pickupImage)

        self.addSubview(lineView)

        self.addSubview(pickupDateTxtLabel)
        self.addSubview(pickupDateLabel)
        self.addSubview(pickupTimeTxtLabel)
        self.addSubview(pickupTimeLabel)
        self.addSubview(verticalLineView)
        
        self.addSubview(locationTxtLabel)
        self.addSubview(locationLabel)
        self.addSubview(dockIdTxtLabel)
        self.addSubview(dockIdLabel)
        
        self.addSubview(HTimeLineView)
        
        self.addSubview(locationNameLabel)
        self.addSubview(addressLabel)
        self.addSubview(HAddressLineView)
        
        self.addSubview(checkList)
        self.addSubview(documents)
        self.addSubview(productDetails)
        
        self.addSubview(documentsLabel)
        self.addSubview(checkListLabel)
        self.addSubview(productDetailsLabel)
        self.addSubview(finishButton)
        
        
        
        

        headerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        headerView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 60).isActive = true

        pickupImage.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        pickupImage.leadingAnchor.constraint(equalTo: headerView.leadingAnchor,constant:5).isActive = true
        pickupImage.widthAnchor.constraint(equalToConstant: 45).isActive = true
        pickupImage.heightAnchor.constraint(equalToConstant: 40).isActive = true

        dismissWindow.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        dismissWindow.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant:-16).isActive = true
        dismissWindow.widthAnchor.constraint(equalToConstant: 20).isActive = true
        dismissWindow.heightAnchor.constraint(equalToConstant: 20).isActive = true

        titleLabel.topAnchor.constraint(equalTo: pickupImage.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: pickupImage.trailingAnchor, constant:8).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: dismissWindow.leadingAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: pickupImage.bottomAnchor).isActive = true
        
        lineView.anchor(top: headerView.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 0, height: 1))
        
        let width = (UIScreen.main.bounds.width / 2) - 20
        
        pickupDateTxtLabel.anchor(top: lineView.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 8, left: 8, bottom: 0, right: 0), size: .init(width: width, height: 30))
        
        pickupDateLabel.anchor(top: pickupDateTxtLabel.bottomAnchor, leading: pickupDateTxtLabel.leadingAnchor, bottom: nil, trailing: pickupDateTxtLabel.trailingAnchor, size: .init(width: 0, height: 30))
        
        pickupTimeTxtLabel.anchor(top: pickupDateLabel.bottomAnchor, leading: pickupDateLabel.leadingAnchor, bottom: nil, trailing: pickupDateLabel.trailingAnchor,padding: .init(top: 8, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 30))
        
        pickupTimeLabel.anchor(top: pickupTimeTxtLabel.bottomAnchor, leading: pickupTimeTxtLabel.leadingAnchor, bottom: nil, trailing: pickupTimeTxtLabel.trailingAnchor, size: .init(width: 0, height: 30))
        
        verticalLineView.anchor(top: pickupDateTxtLabel.topAnchor, leading: pickupDateTxtLabel.trailingAnchor, bottom: pickupTimeLabel.bottomAnchor, trailing: nil, size: .init(width: 1, height: 0))
        
        locationTxtLabel.anchor(top: lineView.bottomAnchor, leading: verticalLineView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 8, left: 8, bottom: 0, right: 0), size: .init(width: width, height: 30))
        
        locationLabel.anchor(top: locationTxtLabel.bottomAnchor, leading: locationTxtLabel.leadingAnchor, bottom: nil, trailing: locationTxtLabel.trailingAnchor, size: .init(width: 0, height: 30))
        
        dockIdTxtLabel.anchor(top: locationLabel.bottomAnchor, leading: locationLabel.leadingAnchor, bottom: nil, trailing: locationLabel.trailingAnchor,padding: .init(top: 8, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 30))
        
        dockIdLabel.anchor(top: dockIdTxtLabel.bottomAnchor, leading: dockIdTxtLabel.leadingAnchor, bottom: nil, trailing: dockIdTxtLabel.trailingAnchor, size: .init(width: 0, height: 30))
        
        HTimeLineView.anchor(top: dockIdLabel.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 16, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
        
        locationNameLabel.anchor(top: HTimeLineView.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 8, left: 8, bottom: 0, right: 8), size: .init(width: 0, height: 30))
        
        addressLabel.anchor(top: locationNameLabel.bottomAnchor, leading: locationNameLabel.leadingAnchor, bottom: nil, trailing: locationNameLabel.trailingAnchor)
        addressLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 50).isActive = true
        
        HAddressLineView.anchor(top: addressLabel.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
        
        checkList.anchor(top: HAddressLineView.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 16, left: 32, bottom: 0, right: 0), size: .init(width: 58, height: 58))
        documents.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        documents.anchor(top: checkList.topAnchor, leading: nil, bottom: nil, trailing: nil, size: .init(width: 58, height: 58))
        productDetails.anchor(top: checkList.topAnchor, leading: nil, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 32), size: .init(width: 58, height: 58))
        
        checkListLabel.anchor(top: checkList.bottomAnchor, leading: checkList.leadingAnchor, bottom: nil, trailing: documents.leadingAnchor, padding: .init(top: 8, left: 0, bottom: 0, right: 16), size: .init(width: 0, height: 30))
        
        documentsLabel.anchor(top: checkListLabel.topAnchor, leading: documents.leadingAnchor, bottom: checkListLabel.bottomAnchor, trailing: productDetails.leadingAnchor, padding: .init(top: 0, left: -2, bottom: 0, right: 16))
        
        productDetailsLabel.anchor(top: documentsLabel.topAnchor, leading: productDetails.leadingAnchor, bottom: documentsLabel.bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: -16, bottom: 0, right: 0))
        
        finishButton.anchor(top: productDetailsLabel.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 16, left: 32, bottom: 0, right: 32), size: .init(width: 0, height: 46))
        
    }
    
    
}


class DetailsSheet:NSObject {
    
    var homeController: TripDetailsController?
    
    let blackView = UIView()
    let whiteView = UIView()
    
    func showSettings() {
        //show menu
        
        if let window = UIApplication.shared.keyWindow {
            
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismiss)))
            
            window.addSubview(blackView)
            
            let height: CGFloat = 520
            let y = window.frame.height - height

            let topViewFrame = CGRect(x: 0, y: 0, width: window.frame.width-20, height: height)
            let topVw = DetailsSheetTopView(frame: topViewFrame)
            topVw.leaveLauncher = self
            whiteView.addSubview(topVw)
            
            window.addSubview(whiteView)
         
            whiteView.frame = CGRect(x: 10, y: window.frame.height, width: window.frame.width-20, height: height)
            
            blackView.frame = window.frame
            blackView.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.blackView.alpha = 1

                self.whiteView.frame = CGRect(x:10, y: y, width: self.whiteView.frame.width-20, height: height)
                
            }, completion: nil)
        }
    }
    
    @objc func handleDismiss() {
        UIView.animate(withDuration: 0.5, animations: {
            self.blackView.alpha = 0
            
            if let window = UIApplication.shared.keyWindow {
                self.whiteView.frame = CGRect(x: 0, y: window.frame.height, width: self.whiteView.frame.width, height: self.whiteView.frame.height)
            }
        }, completion: { (_) in
    
        })
    }
    
    
    override init() {
        super.init()
        
        //  setupView()
    }
    
}



extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
