//
//  ViewController.swift
//  TripApplication
//
//  Created by kashee on 29/06/19.
//  Copyright © 2019 kashee. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter email"
        return textField
    }()
    
    lazy var passWordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.placeholder = "Enter password"
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(didLoginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var context:NSManagedObjectContext? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        context = appDelegate.persistentContainer.viewContext
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    private func setupViews() {
        view.addSubview(loginButton)
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passWordTextField])
        stackView.setStackProperties()
        view.addSubview(stackView)
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant:-50).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        loginButton.backgroundColor = .purple
        loginButton.anchor(top: stackView.bottomAnchor, leading: stackView.leadingAnchor, bottom: nil, trailing: stackView.trailingAnchor, padding: .init(top: 32, left: 16, bottom: 0, right: 16), size: .init(width: 0, height: 46))
    }
    
    @objc private func didLoginButtonTapped() {
        
        if let email = emailTextField.text, let pass = passWordTextField.text {
        
            if (email.count) == 0 {
                showValidationAlert(message: "Please enter email id",presentVc : self) {
                }
            }
            else if (pass.count) == 0 {
                showValidationAlert(message: "Please enter password",presentVc : self) {
                }
            } else if (email.count) > 0 && (pass.count) > 0 {
                if  isValidEmail(testStr: email) {

                    saveUserDetailsToCoreData()
                    let tripDetailsController = TripDetailsController()
                    tripDetailsController.emailId = email
                    navigationController?.pushViewController(tripDetailsController, animated: true)

                }else {
                    showValidationAlert(message: "Please enter a valid email address",presentVc : self) {
                    }
                }
            }else {

            }
        }
        
    }
    
    private func saveUserDetailsToCoreData() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.resultType = .dictionaryResultType
        request.propertiesToFetch = ["email"]
        
        do{
            if let results = try context?.fetch(request) as! [[String:Any]]? {
                let idSet = Set<String>(results.compactMap({ (dict) -> String? in
                    return dict["email"] as? String
                }))
                
                    if let emailId = emailTextField.text, let password = passWordTextField.text {
                        if !idSet.contains(emailId) {
                            let user = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context!)
                            user.setValue(emailId, forKey: "email")
                            user.setValue(password, forKey: "password")
                            do{
                                try context?.save()
                                print("User details save successfully")
                            }catch let Error {
                                print(Error)
                            }
                        } else {
                            print("This email id is already stored in local storage")
                        }
                    }
//                }
                
            }
            
        }catch{
            
        }
        
    }
    
    
    // Fetching data from Core Data by making Query
//    func fetchDataFromCoreData(){
//
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
//        request.returnsObjectsAsFaults = false
//
//        do{
//            let results = try context?.fetch(request) as NSArray?
//
//            if (results?.count)! > 0{
//                for result in results as! [NSManagedObject]{
//
//                    print("email: \(result.value(forKey: "email") as? String)")
//                    print("password: \(result.value(forKey: "password") as? String)")
//
//                }
//            }
//
//        }catch{
//
//        }
//    }

}

