//
//  ViewController.swift
//  homeworksamata
//
//  Created by Mac on 2/5/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var icon = true
    private var lable:UILabel = {
        let view = UILabel()
        view.text = "Welcome"
        view.font = UIFont(name: "Kailasa", size: 30)
        view.tintColor = .white
        view.textColor = .white
        view.numberOfLines = 0
        return view
    }()
    private var lablewelcome:UILabel = {
        let view = UILabel()
        view.text = "Login to your account"
        view.font = UIFont(name: "Front", size: 16)
        view.tintColor = .white
        view.textColor = .gray
        view.font = UIFont.boldSystemFont(ofSize: 19)
        view.numberOfLines = 0
        return view
    }()
    private var image:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "1")
        return image
    }()
    private var textfildlogin:UITextField = {
        let textlogin = UITextField()
        textlogin.placeholder = "Email"
        textlogin.font = UIFont.boldSystemFont(ofSize: 20)
        textlogin.backgroundColor = .white
        textlogin.layer.cornerRadius = 15
        textlogin.clipsToBounds = true
        textlogin.layer.borderColor = UIColor.blue.cgColor
        textlogin.layer.borderWidth = 1
        return textlogin
    }()
    private var textpass:UITextField = {
        let textpass = UITextField()
        textpass.placeholder = "Password"
        textpass.font = UIFont.boldSystemFont(ofSize: 15)
        textpass.backgroundColor = .white
        textpass.layer.cornerRadius = 15
        textpass.clipsToBounds = true
        textpass.layer.borderColor = UIColor.blue.cgColor
        textpass.layer.borderWidth = 1
        textpass.isSecureTextEntry = true
        return textpass
    }()
    private var button:UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        button.tintColor = .white
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .cyan
        button.titleLabel?.textColor = .white
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont(name: "Kailasa", size: 30)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        return button
    }()
    private var lableregister:UILabel = {
        let view = UILabel()
        view.text = "Don’t have account? "
        view.font = UIFont(name: "Front", size: 16)
        view.tintColor = .white
        view.textColor = .gray
        view.font = UIFont.boldSystemFont(ofSize: 19)
        view.numberOfLines = 0
        return view
    }()
    private var buttomcreateacc:UIButton = {
        var button = UIButton()
        button.tintColor = .white
        button.setTitle("Create now", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont(name: "Kailasa", size: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.addTarget(self, action: #selector(cret1e), for: .touchUpInside)
        return button
    }()
    private var esebitton:UIButton = {
        let eie = UIButton()
        eie.setBackgroundImage(UIImage(systemName: "eye.fill"), for: .normal)
        eie.setTitleColor(.gray, for: .normal)
        eie.addTarget(self, action: #selector(eie1), for: .touchUpInside)
        return eie
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        addsubviews()
        setupconstrant()
        // Do any additional setup after loading the view.
    }
    
    func addsubviews(){
        view.addSubview(image)
        view.addSubview(lable)
        view.addSubview(lablewelcome)
        view.addSubview(textfildlogin)
        view.addSubview(textpass)
        view.addSubview(button)
        view.addSubview(lableregister)
        view.addSubview(buttomcreateacc)
        view.addSubview(esebitton)
        
    }
    
    func setupconstrant(){
        image.snp.makeConstraints { make in
            make.top.equalToSuperview()
            //            make.center.equalToSuperview()
            make.width.equalTo(400)
            make.height.equalTo(200)
        }
        lable.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(200)
            make.left.equalToSuperview().offset(138)
            //            make.center.equalTo(view.snp.center).offset(100)
            make.width.height.equalTo(150)
        }
        lablewelcome.snp.makeConstraints { make in
            make.top.equalTo(lable.snp.bottom).offset(70)
            make.center.equalTo(lable.snp.center).offset(30)
            //            make.left.equalToSuperview().
            make.width.equalTo(280)
            make.height.equalTo(100)
        }
        textfildlogin.snp.makeConstraints { make in
            make.center.equalTo(lablewelcome.snp.center).offset(50)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
            make.width.equalTo(170)
        }
        textpass.snp.makeConstraints { make in
            make.center.equalTo(textfildlogin.snp.center).offset(50)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
            make.width.equalTo(170)
            
        }
        button.snp.makeConstraints { make in
            make.center.equalTo(textpass.snp.center).offset(150)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(60)
            make.width.equalTo(170)
        }
        lableregister.snp.makeConstraints { make in
            make.center.equalTo(button.snp.center).offset(90)
            make.left.equalToSuperview().offset(80)
            //            make.center.equalTo(view.snp.center).offset(100)
            make.width.height.equalTo(100)
            
        }
        buttomcreateacc.snp.makeConstraints { make in
            make.center.equalTo(button.snp.center).offset(90)
            make.left.equalToSuperview().offset(250)
            make.right.equalToSuperview().offset(-30)
            //            make.center.equalTo(view.snp.center).offset(100)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
        esebitton.snp.makeConstraints { make in
            make.top.equalTo(textfildlogin.snp.top).offset(55)
            make.right.equalToSuperview().offset(-30)
            make.width.equalTo(40)
            make.height.equalTo(30)
        }
        
    }
        func ad1(){
            textpass.isSecureTextEntry = false
            
        }
    
    
    @objc func eie1(){
        if icon == true{
            textpass.isSecureTextEntry = false
        }else{
            textpass.isSecureTextEntry = true
        }
        icon = !icon
   
    }
    @objc func login() -> Bool {
        guard let text = textfildlogin.text else { return false }
        if text .isEmpty{
            textfildlogin.layer.borderColor = UIColor.red.cgColor
            textpass.layer.borderColor = UIColor.red.cgColor
            textpass.layer.borderWidth = 2
            textfildlogin.layer.borderWidth = 2
            
            return false
        }else {
            text == ""
            textfildlogin.layer.borderColor = UIColor.green.cgColor
            textpass.layer.borderColor = UIColor.green.cgColor
            
            
            return true
            //        }else if text.isEmpty {
            //
            //            textfildlogin.layer.borderColor = UIColor.red.cgColor
            //            textpass.layer.borderColor = UIColor.red.cgColor
        }
    }
        @objc func cret1e(){
            let vc = view2()
            navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
    

