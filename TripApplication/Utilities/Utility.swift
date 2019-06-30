//
//  Utility.swift
//  TripApplication
//
//  Created by kashee on 29/06/19.
//  Copyright © 2019 kashee. All rights reserved.
//

import UIKit


class MyBetterAlertController : UIAlertController {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
}



public func isValidPassword(test:String) -> Bool {
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[0-9])(?=.*[a-z]).{6,}")
    return passwordTest.evaluate(with: test)
}

public func isValidEmail(testStr:String) -> Bool {
    // print("validate calendar: \(testStr)")
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: testStr)
}


public  func showValidationAlert(message : String, presentVc : UIViewController, completion : @escaping () -> Void ) {
    
    let alertVc = MyBetterAlertController.init(title: "", message: message, preferredStyle: .alert)
    alertVc.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
        completion()
    }))
    
    
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.alignment = NSTextAlignment.left
    
    let messageText = NSMutableAttributedString(
        string: message,
        attributes: [
            
            .font: UIFont.boldSystemFont(ofSize: 13)
        ]
    )
    
    alertVc.setValue(messageText, forKey: "attributedMessage")
    
    presentVc.present(alertVc, animated: true, completion: {
        
        
    })
}



class circularImageView:UIView {
    var image:String?
    let calenderImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    init(imageName:String) {
        super.init(frame: CGRect.zero)
        image = imageName
        calenderImageView.image = UIImage(named: image!)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor(red: 163/255, green: 174/255, blue: 183/255, alpha: 1).cgColor
        self.layer.cornerRadius = 28
        self.clipsToBounds = true
        
        self.addSubview(calenderImageView)
        calenderImageView.topAnchor.constraint(equalTo: self.topAnchor,constant:8).isActive = true
        calenderImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant:8).isActive = true
        calenderImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-8).isActive = true
        calenderImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant:-8).isActive = true
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
