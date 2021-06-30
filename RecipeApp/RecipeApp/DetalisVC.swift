//
//  DetalisVC.swift
//  RecipeApp
//
//  Created by DCS on 29/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class DetalisVC: UIViewController {

    var image = UIImage()
    var lbl = ""
    var desc = ""
    
    private let myLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
 }()
    
    private let myImageview : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let myTextView : UITextView = {
        let textview = UITextView()
        textview.textAlignment = .center
        return textview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Details"
        view.addSubview(myLabel)
        myLabel.text = lbl
        view.addSubview(myImageview)
        myImageview.image = image
        view.addSubview(myTextView)
        myTextView.text = desc
        view.backgroundColor = .white
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 80, width: view.width-40, height: 60)
        myImageview.frame = CGRect(x: 20, y: myLabel.bottom + 20, width: view.width-40, height: 200)
        myTextView.frame = CGRect(x: 20, y: myImageview.bottom + 20, width: view.width-40, height: view.height-40)
    }

}
