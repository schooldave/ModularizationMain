//
//  GlobalModuleRouter.swift
//  Modularization
//
//  Created by schooldave on 5/6/20.
//  Copyright © 2020 schooldave. All rights reserved.
//

import UIKit
import MGJRouter_Swift
import SCHCorePart
import SCHBasePart

class GlobalModuleRouter: NSObject {

    ///注册pattern for all
    public class func loadPattern() {
//        //service
//        MGJRouter.registerWithHandler("sch://Service/PushVC") { (routerParameters) in
//            guard let nav:UINavigationController = (routerParameters?[MGJRouterParameterUserInfo] as? [String : Any])?["navigationVC"] as? UINavigationController
//            else {
//                return
//            }
//            let vc = SCHServiceViewController()
//            nav.pushViewController(vc, animated: true)
//
//        }
        //core with textData
        MGJRouter.registerWithHandler("sch://Core/PushVC") { (routerParameters) in
            guard let nav:UINavigationController = (routerParameters?[MGJRouterParameterUserInfo] as? [String : Any])?["navigationVC"] as? UINavigationController
           else {
               return
           }
            let labelText = (routerParameters?[MGJRouterParameterUserInfo] as? [String : Any])?["text"] as? String
            let vc = SCHCorePartViewController()
            vc.labelText = labelText
            
            nav.pushViewController(vc, animated: true)
        
        }

        //base use objcet
        MGJRouter.registerWithObjectHandler("sch://Base/PushVC") { (routerParameters) -> Any? in

            let labelText = (routerParameters?[MGJRouterParameterUserInfo] as? [String : Any])?["text"] as? String
            let vc = SCHBasePartViewController()
            vc.labelText = labelText
            return vc
        }
        
    }
}

