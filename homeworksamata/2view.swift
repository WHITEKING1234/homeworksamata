//
//  2view.swift
//  homeworksamata
//
//  Created by Mac on 2/5/23.
//

import UIKit
import SnapKit

class view2: UIViewController {
    var icon = true
    private var lable:UILabel = {
        let view = UILabel()
        view.text = "Register"
        view.font = UIFont(name: "Kailasa", size: 30)
        view.tintColor = .white
        view.textColor = .white
        view.numberOfLines = 0
        return view
    }()
    private var lablewelcome:UILabel = {
        let view = UILabel()
        view.text = "Create a new account"
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
    private var textpass:UITextField = {
        let textpass = UITextField()
        textpass.placeholder = "Username"
        textpass.font = UIFont.boldSystemFont(ofSize: 15)
        textpass.backgroundColor = .white
        textpass.layer.cornerRadius = 15
        textpass.clipsToBounds = true
        textpass.layer.borderColor = UIColor.blue.cgColor
        textpass.layer.borderWidth = 1
        return textpass
    }()
    private var textnumber:UITextField = {
        let textpass = UITextField()
        textpass.placeholder = "Number"
        textpass.font = UIFont.boldSystemFont(ofSize: 15)
        textpass.backgroundColor = .white
        textpass.layer.cornerRadius = 15
        textpass.clipsToBounds = true
        textpass.layer.borderColor = UIColor.blue.cgColor
        textpass.layer.borderWidth = 1
        return textpass
    }()
    private var textemail:UITextField = {
        let textpass = UITextField()
        textpass.placeholder = "Email"
        textpass.font = UIFont.boldSystemFont(ofSize: 15)
        textpass.backgroundColor = .white
        textpass.layer.cornerRadius = 15
        textpass.clipsToBounds = true
        textpass.layer.borderColor = UIColor.blue.cgColor
        textpass.layer.borderWidth = 1
        return textpass
    }()
    private var pass:UITextField = {
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
    //    private var lableregister:UILabel = {
    //        let view = UILabel()
    //        view.text = "Username "
    //        view.font = UIFont(name: "Front", size: 10)
    //        view.tintColor = .white
    //        view.textColor = .white
    //        view.font = UIFont.boldSystemFont(ofSize: 13)
    //        view.numberOfLines = 0
    //        return view
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
    private var eiebitton:UIButton = {
        let eie = UIButton()
        eie.setBackgroundImage(UIImage(systemName: "eye.fill"), for: .normal)
        eie.setTitleColor(.gray, for: .normal)
        eie.addTarget(self, action: #selector(eie12), for: .touchUpInside)
        return eie
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        addsubviews()
        setupconstrant()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    
    func addsubviews(){
        view.addSubview(image)
        view.addSubview(lable)
        view.addSubview(lablewelcome)
        view.addSubview(textpass)
        view.addSubview(textemail)
        view.addSubview(pass)
        view.addSubview(textnumber)
        view.addSubview(button)
        view.addSubview(eiebitton)
        //        view.addSubview(lableregister)
        //
    }
    
    func setupconstrant(){
        lablewelcome.snp.makeConstraints { make in
            make.top.equalTo(lable.snp.bottom).offset(70)
            make.center.equalTo(lable.snp.center).offset(30)
            //            make.left.equalToSuperview().
            make.width.equalTo(280)
            make.height.equalTo(100)
        }
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
        textpass.snp.makeConstraints { make in
            make.center.equalTo(lablewelcome.snp.center).offset(50)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
            make.width.equalTo(170)
            
        }
        textemail.snp.makeConstraints { make in
            make.center.equalTo(textpass.snp.center).offset(50)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
            make.width.equalTo(170)
        }
        textnumber .snp.makeConstraints { make in
            make.center.equalTo(textemail.snp.center).offset(50)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
            make.width.equalTo(170)
        }
        pass.snp.makeConstraints { make in
            make.center.equalTo(textnumber.snp.center).offset(50)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(40)
            make.width.equalTo(170)
        }
        button.snp.makeConstraints { make in
            make.center.equalTo(pass.snp.center).offset(150)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(60)
            make.width.equalTo(170)
            
        }
        eiebitton.snp.makeConstraints { make in
            make.top.equalTo(textnumber.snp.top).offset(55)
            make.right.equalToSuperview().offset(-30)
            make.width.equalTo(40)
            make.height.equalTo(30)
        }
    }
    
    @objc func eie12(){
        if icon == true{
            pass.isSecureTextEntry = false
        }else{
            pass.isSecureTextEntry = true
        }
        icon = !icon
    }
    @objc func login() -> Bool {
        guard let text = textemail.text else { return false }
        if text .isEmpty{
            textemail.layer.borderColor = UIColor.red.cgColor
            pass.layer.borderColor = UIColor.red.cgColor
            textnumber.layer.borderColor = UIColor.red.cgColor
            textpass.layer.borderColor = UIColor.red.cgColor
            textpass.layer.borderWidth = 2
            textnumber.layer.borderWidth = 2
            pass.layer.borderWidth = 2
            textemail.layer.borderWidth = 2
            
            
            return false
        }else{
            text == ""
            let vc = ViewController3()
            navigationController?.pushViewController(vc, animated: true)
        }
        return true
    }
}
