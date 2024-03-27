//
//  ViewController.swift
//  error-nil-lesson 3. Constraints
//
//  Created by Pavel Barto on 27.03.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var roundPic = {
        let pic = UIImageView()
        pic.layer.cornerRadius = 40
        pic.image = UIImage(named: "photo")
        pic.translatesAutoresizingMaskIntoConstraints = false
        pic.clipsToBounds = true
        return pic
    }()
    
    
    lazy var nameLabel = {
        let name = UILabel()
        name.text = "Pavel B"
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        name.translatesAutoresizingMaskIntoConstraints = false
        name.textAlignment = .center
        return name
    }()
    
    lazy var aboutMeLabel = {
        let label = UILabel()
        label.text = "О себе"
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var photoLabel = {
        let label = UILabel()
        label.text = "Фото"
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var textView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray5
        view.layer.cornerRadius = 14
        return view
    }()
    
    lazy var aboutMeText = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 12)
        text.numberOfLines = 0
        text.text = "Меня зовут Павел и сейчас я прохожу курсы от яндекс практикума по направлению IOS-разработчик расширенный и паралельно смотрю лекции от error nil. "
        return text
    }()
    
    lazy var photo1 = {
        let pic = UIImageView()
        pic.translatesAutoresizingMaskIntoConstraints = false
        pic.image = UIImage(named: "img1")
        pic.layer.cornerRadius = 20
        pic.contentMode = .scaleAspectFill
        pic.clipsToBounds = true
        return pic
    }()
    
    lazy var photo2 = {
        let pic = UIImageView()
        pic.translatesAutoresizingMaskIntoConstraints = false
        pic.image = UIImage(named: "img2")
        pic.layer.cornerRadius = 20
        pic.contentMode = .scaleAspectFill
        pic.clipsToBounds = true
        return pic
    }()
    
    lazy var editButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Редактировать", for: .normal)
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 20
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        textView.addSubview(aboutMeText)
        view.addSubview(roundPic)
        view.addSubview(nameLabel)
        view.addSubview(aboutMeLabel)
        view.addSubview(textView)
        view.addSubview(photoLabel)
        view.addSubview(photo1)
        view.addSubview(photo2)
        view.addSubview(editButton)

        
        NSLayoutConstraint.activate([
            roundPic.heightAnchor.constraint(equalToConstant: 80),
            roundPic.widthAnchor.constraint(equalToConstant: 80),
            roundPic.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            roundPic.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
        
            nameLabel.widthAnchor.constraint(equalToConstant: 141),
            nameLabel.heightAnchor.constraint(equalToConstant: 24),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: roundPic.bottomAnchor, constant: 19),
            
            aboutMeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 33),
            aboutMeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -33),
            aboutMeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 40),
            aboutMeLabel.heightAnchor.constraint(equalToConstant: 15),
            
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textView.topAnchor.constraint(equalTo: aboutMeLabel.bottomAnchor, constant: 7),
            textView.heightAnchor.constraint(equalToConstant: 100),
            
            aboutMeText.leadingAnchor.constraint(equalTo: textView.leadingAnchor, constant: 14),
            aboutMeText.trailingAnchor.constraint(equalTo: textView.trailingAnchor, constant: -14),
            aboutMeText.topAnchor.constraint(equalTo: textView.topAnchor, constant: 20),
            aboutMeText.bottomAnchor.constraint(equalTo: textView.bottomAnchor, constant: -20),
            
            photoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            photoLabel.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 52),
            photoLabel.widthAnchor.constraint(equalToConstant: 32),
            photoLabel.heightAnchor.constraint(equalToConstant: 15),
            
            photo1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            photo1.widthAnchor.constraint(equalToConstant: (view.frame.width/2) - 30),
            photo1.heightAnchor.constraint(equalToConstant: (view.frame.width/2) - 30),
            photo1.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 14),
            
            photo2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            photo2.widthAnchor.constraint(equalToConstant: (view.frame.width/2) - 30),
            photo2.heightAnchor.constraint(equalToConstant: (view.frame.width/2) - 30),
            photo2.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 14),
            
            editButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -56),
            editButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            editButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            editButton.heightAnchor.constraint(equalToConstant: 59)
        ])
    }


}

