//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class ___VARIABLE_moduleName___Module {
    static func buildDefault() -> UIViewController {
        let storyboard = UIStoryboard(name: "___VARIABLE_moduleName___", bundle: nil)
        let v = storyboard.instantiateViewController(ofType: ___VARIABLE_moduleName___ViewController.self)
        
        let v = ___VARIABLE_moduleName___ViewController()
        let i = ___VARIABLE_moduleName___Interactor()
        let r = ___VARIABLE_moduleName___Wireframe(view: v)
        let p = ___VARIABLE_moduleName___Presenter(wireframe: r, view: v, interactor: i)

        v.presenter = p
        i.presenter = p
        return v
    }
}