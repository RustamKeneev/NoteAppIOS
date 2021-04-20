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
        view.backgroundColor = .blue
       
        return view
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
    }

}

