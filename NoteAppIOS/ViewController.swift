//
//  ViewController.swift
//  NoteAppIOS
//
//  Created by Rustam Keneev on 4/20/21.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
  
    private lazy var bottomView: UIView = {
        var view = UIView()
        view.backgroundColor = .darkGray
       
        return view
    }()
    
    
    private lazy var fabButton: UIButton = {
       var fab = UIButton()
        fab.layer.cornerRadius = 34
        fab.backgroundColor = .systemOrange
        fab.setTitle("+", for: .normal)
        fab.setTitleColor(UIColor.white, for: .normal)
       return fab
    }()
    
    private lazy var plusButton: UIButton = {
        var plus = UIButton()
        plus.backgroundColor = .blue
        plus.setTitle("+", for: .normal)
        plus.layer.cornerRadius = 20
        plus.setTitleColor(UIColor.white, for: .normal)

        return plus
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI(){
        
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints{(make) in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(view.frame.height * 0.1)
        }
        
        view.addSubview(fabButton)
        fabButton.snp.makeConstraints{(make) in
            make.bottom.equalTo(bottomView).offset(-30)
            make.right.equalTo(view.frame.width * -0.1)
            make.height.width.equalTo(view.frame.height * 0.1)
        }
        
        view.addSubview(plusButton)
        plusButton.snp.makeConstraints{(make) in
            make.bottom.equalToSuperview().offset(-15)
            make.left.equalToSuperview().offset(15)
            make.height.width.equalTo(40)
        }
    }

}

