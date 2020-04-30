//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//


final class ___VARIABLE_moduleName___Presenter {

    // MARK: - Private properties -

    private let wireframeInterface: ___VARIABLE_moduleName___WireframeInterface
    private unowned let viewInterface: ___VARIABLE_moduleName___ViewInterface
    private let interactorInterface: ___VARIABLE_moduleName___InteractorInterface

    // MARK: - Lifecycle -

    init(wireframe: ___VARIABLE_moduleName___WireframeInterface, view: ___VARIABLE_moduleName___ViewInterface, interactor: ___VARIABLE_moduleName___InteractorInterface) {
        wireframeInterface = wireframe
        viewInterface = view
        interactorInterface = interactor
    }
}

// MARK: - Extensions -

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterInterface {
}
