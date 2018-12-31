//
//  ReactNativeModule.swift
//  ReactNativeWithNativeDemo
//
//  Created by manikanta on 12/30/17.
//  Copyright © 2017 Credencys. All rights reserved.
//

import UIKit
import React
import Foundation

///
class ReactNativeModule: NSObject {
    /// Shared instance for react module
    static let sharedInstance = ReactNativeModule()
   
    ///
    private override init() {
        print("ReactNativeModule initialized")
    }

    ///
    deinit {
        print("ReactNativeModule deinit")
    }
    
    /// Bridge object to handle callbacks and data passing between React and Native.
    var bridge: RCTBridge?
    
    ///
    func createBridgeIfNeeded() -> RCTBridge {
        if bridge == nil {
            bridge = RCTBridge.init(delegate: self, launchOptions: nil)
        }
        return bridge!
    }
    
    /// Returns view for module with the same name as specified in React.
    /// - Parameters:
    ///   - moduleName: Name of the module used in react.
    ///   - initialProperties: Props to be set from native code which are used in native view.
    /// - Returns: Object of react view.
    func viewForModule(_ moduleName: String, initialProperties: [String: Any]?) -> RCTRootView {
        let viewBridge = createBridgeIfNeeded()
        let rootView: RCTRootView = RCTRootView(
            bridge: viewBridge, 
            moduleName: moduleName,
            initialProperties: initialProperties)
        return rootView
    }
}

///
extension ReactNativeModule: RCTBridgeDelegate {
    /// Returns the source URL to be used for main bundle.
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        //RELEASE/
//        return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        //DEBUG
        return URL(string: "http://192.168.5.156:8081/index.bundle?platform=ios")
//         return URL(string: "http://localhost:8081/index.bundle?platform=ios")
    }
}
