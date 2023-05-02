//
//  ViewController3.swift
//  homeworksamata
//
//  Created by Mac on 3/5/23.
//

import UIKit
import SnapKit

class ViewController3: UIViewController {
    
    private var lable:UILabel = {
        let view = UILabel()
        view.text = "Forgot Password"
        view.font = UIFont(name: "Kailasa", size: 30)
        view.tintColor = .white
        view.textColor = .white
        view.numberOfLines = 0
        return view
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
    private var image:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "1")
        return image
    }()
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addsubviews()
        setupconstrant()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    
    func addsubviews(){
        view.addSubview(image)
        view.addSubview(lable)
        
        view.addSubview(textfildlogin)
        
        
    }
    
    func setupconstrant(){
        image.snp.makeConstraints { make in
            make.top.equalToSuperview()
            //            make.center.equalToSuperview()
            make.width.equalTo(400)
            make.height.equalTo(200)
            
            
        }
        lable.snp.makeConstraints { make in
            lable.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(200)
                make.left.equalToSuperview().offset(75)
                make.right.equalToSuperview()
                //            make.center.equalTo(view.snp.center).offset(100)
                make.width.height.equalTo(150)
            }
            textfildlogin.snp.makeConstraints { make in
                make.center.equalTo(lable.snp.center).offset(50)
                make.left.equalToSuperview().offset(20)
                make.right.equalToSuperview().offset(-20)
                make.height.equalTo(40)
                make.width.equalTo(170)
            }
        }
    }
}
