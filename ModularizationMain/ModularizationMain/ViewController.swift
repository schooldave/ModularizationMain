//
//  ViewController.swift
//  ModularizationMain
//
//  Created by schooldave on 5/12/20.
//  Copyright © 2020 schooldave. All rights reserved.
//

import UIKit
import MGJRouter_Swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GlobalModuleRouter.loadPattern()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func jumpToSCHCore(_ sender: Any) {
        //open vc for SCHCore
        MGJRouter.open("sch://Core/PushVC",
                       ["text":"from Core",
                        "navigationVC": self.navigationController as Any] ,
                       nil)
    }
    
    @IBAction func jumpToSCHBase(_ sender: Any) {
        //open vc for SCHBase using return of objectHandle
        navigationController?.pushViewController(MGJRouter.object("sch://Base/PushVC", ["text": "from BaseUseObjectHandle"]) as! UIViewController, animated: true)
    }
    

}

