//
//  ViewController.swift
//  ForTest
//
//  Created by Tuychiev Toir on 23/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Hello"
        view.backgroundColor = .white
        
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        btn.setTitle("Hello", for: .normal)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        view.addSubview(btn)
        
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Start Over", style: .plain, target: self, action: #selector(rightBarButtonItemClicked))
    }
    
    @objc func tappedButton(){
        let pinkViewCtrl = PinkViewController()
        navigationController?.pushViewController(pinkViewCtrl, animated: true)
    }
    
    @objc func rightBarButtonItemClicked() {
        print("rightBarButtonItemClicked")
    }
}

