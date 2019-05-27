//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class ___VARIABLE_moduleName___Wireframe: BaseWireframe {

    // MARK: - Module setup -

    init() {
        let moduleViewController = ___VARIABLE_moduleName___ViewController()
        super.init(view: moduleViewController)
        
        let interactor = ___VARIABLE_moduleName___Interactor()
        let presenter = ___VARIABLE_moduleName___Presenter(wireframe: self, view: moduleViewController, interactor: interactor)
        moduleViewController.presenter = presenter
        interactor.presenter = presenter
    }

}

// MARK: - Extensions -

extension ___VARIABLE_moduleName___Wireframe: ___VARIABLE_moduleName___WireframeInterface {

    func navigate(to option: ___VARIABLE_moduleName___NavigationOption) {
    }
}
