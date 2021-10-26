//
//  PinkViewController.swift
//  ForTest
//
//  Created by Tuychiev Toir on 23/10/21.
//

import UIKit

class PinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Pink"
        view.backgroundColor = .systemPink
        
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        btn.setTitle("Hello", for: .normal)
        btn.backgroundColor = .blue
        btn.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    @objc func tappedButton(){
        let blueViewCtrl = BlueViewController()
        navigationController?.pushViewController(blueViewCtrl, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
