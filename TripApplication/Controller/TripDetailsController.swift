//
//  TripDetailsController.swift
//  TripApplication
//
//  Created by kashee on 29/06/19.
//  Copyright © 2019 kashee. All rights reserved.
//

import UIKit


class CardView: UIView {
    
    var cornerRadius: CGFloat = 0
    var shadowOffSetWidth: CGFloat = 0
    var shadowOffSetHeight: CGFloat = 1.0
    var shadowColor: UIColor = UIColor.lightGray
    var shadowRadius : CGFloat = 1.0
    var shadowOpacity: CGFloat = 0.5
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = Float(shadowOpacity)
    }
}


class TripDetailsController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tripDetailCellId = "tripDetailCellId"
    let paymentCellId = "paymentCellId"
    let tenderCellId = "tenderCellId"
    
    var emailId:String?
    
    var tripDetails:Json4Swift_Base?
    
    let tableBackgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
    
    let topView:UIView = {
        let view =  UIView()
        view.backgroundColor = UIColor(red: 0/255, green: 56/255, blue: 86/255, alpha: 1)
        return view
    }()
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Trip Details"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor =  UIColor.white
        
        return label
    }()
    
    lazy var subTitleLabel:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor =  UIColor.white
        return label
    }()
    
    let backButton:UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "backIcon"), for: .normal)
        button.addTarget(self, action: #selector(TripDetailsController.closeThisView), for: .touchUpInside)
        
        return button
    }()
    
    let scanQRLogo:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "qr-code"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    
    
    lazy var tableview: UITableView = {
        let table = UITableView(frame: CGRect.zero, style: UITableView.Style.plain)
        table.translatesAutoresizingMaskIntoConstraints = false
//        table.contentInset = UIEdgeInsets.zero
        table.delegate = self
        table.dataSource = self
//        table.separatorStyle = .none
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        tableview.backgroundColor = tableBackgroundColor
        subTitleLabel.text = emailId ?? "NA"
        getJsonDataFromFile()
        setupViews()
    }
    
    
    private func setupViews() {
        view.addSubview(topView)
        view.addSubview(tableview)
        [backButton, titleLabel, subTitleLabel, scanQRLogo].forEach({topView.addSubview($0)})
        
        topView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, size: .init(width: 0, height: 100))
        
        backButton.anchor(top: topView.topAnchor, leading: topView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 40, left: 0, bottom: 0, right: 0), size: .init(width: 60, height: 40))
        
        scanQRLogo.anchor(top: topView.topAnchor, leading: nil, bottom: nil, trailing: topView.trailingAnchor, padding: .init(top: 45, left: 0, bottom: 0, right: 16), size: .init(width: 30, height: 30))
        
        titleLabel.anchor(top: backButton.topAnchor, leading: backButton.trailingAnchor, bottom: nil, trailing: scanQRLogo.leadingAnchor, padding: .init(top: 0, left: 8, bottom: 8, right: 8), size: .init(width: 0, height: 25))
        subTitleLabel.anchor(top: titleLabel.bottomAnchor, leading: titleLabel.leadingAnchor, bottom: topView.bottomAnchor, trailing: titleLabel.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 8, right: 0))
        
        
        tableview.register(TripDetailsCell.self, forCellReuseIdentifier: tripDetailCellId)
        tableview.register(PaymentCell.self, forCellReuseIdentifier: paymentCellId)
        tableview.register(TenderCell.self, forCellReuseIdentifier: tenderCellId)
        
        tableview.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func getJsonDataFromFile() {
        
        if let path = Bundle.main.path(forResource: "TestJson", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                
                let decoder = JSONDecoder()
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
                self.tripDetails = try decoder.decode(Json4Swift_Base.self, from: data)
        
                print(self.tripDetails?.payload?.round_trip_info?.total_dist)
                
            } catch let err {
                print(err)
                // handle error
            }
        }
        
    }
    
    
    lazy var detailsSheet: DetailsSheet = {
        let launcher = DetailsSheet()
        launcher.homeController = self
        return launcher
    }()
    
//    @objc private func didSearchImageTapped(){
//        detailsSheet.showSettings()
//    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 || section == 1 {
            return 1
        } else {
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableview.dequeueReusableCell(withIdentifier: tripDetailCellId, for: indexPath) as! TripDetailsCell
            return cell
        } else if indexPath.section == 1 {
            let cell = tableview.dequeueReusableCell(withIdentifier: paymentCellId, for: indexPath) as! PaymentCell
            return cell
        } else {
            let cell = tableview.dequeueReusableCell(withIdentifier: tenderCellId, for: indexPath) as! TenderCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 120
        } else if indexPath.section == 1 {
            return 120
        } else {
            return 80
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50 // for example
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        detailsSheet.showSettings()
    }
    
    @objc private func closeThisView() {
        navigationController?.popViewController(animated: true)
    }
}
