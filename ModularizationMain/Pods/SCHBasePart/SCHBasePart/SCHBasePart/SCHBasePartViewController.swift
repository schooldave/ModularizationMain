//
//  SCHBasePartViewController.swift
//  SCHBasePart
//
//  Created by schooldave on 5/12/20.
//  Copyright © 2020 schooldave. All rights reserved.
//

import UIKit
public
class SCHBasePartViewController: UIViewController {
    
    public var labelText:String?
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        title = "SCHBaseViewControllerTest"

        let lable = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        lable.text = labelText
        lable.sizeToFit()
        view.addSubview(lable)
        // Do any additional setup after loading the view.
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
