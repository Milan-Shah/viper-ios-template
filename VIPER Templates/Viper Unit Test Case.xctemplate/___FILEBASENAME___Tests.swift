//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Quick
import Nimble
@testable import ___PROJECTNAME:identifier___
import OHHTTPStubs

class ___FILEBASENAMEASIDENTIFIER___: QuickSpec {

  override func spec() {
    //add your test case here

    var moduleMainView: <#ModuleUIViewControllerSubclass#>!

    describe("___FILEBASENAMEASIDENTIFIER___ should...") {
      beforeEach {
            let window = UIWindow()
            let view = <#VIPERModule#>.buildDefault()
            let navigationController = UINavigationController(rootViewController: view)
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
            moduleMainView = view as? <#ModuleUIViewControllerSubclass#>
            expect(moduleMainView).toNot(beNil())
            moduleMainView?.viewDidLoad()
        }
      // context("When...",{
      //   it("Should...", closure:{
      //
      //   })
      // })
    }
  }

}
