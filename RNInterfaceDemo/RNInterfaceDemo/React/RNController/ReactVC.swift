
import UIKit
import React

/// This class loads react components
class ReactVC: UIViewController {
    
    // MARK: - IBOutlets
    ///
    
    
    // MARK: - Variables
    ///
    var reactRootView: RCTRootView!
    
    
    // MARK: - Lifecycle Methods
    ///
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if reactRootView == nil && ReactNativeModule.sharedInstance.bridge == nil {
            setupUI()
        }
    }
    
    ///
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        reactRootView.removeFromSuperview()
        reactRootView = nil
        ReactNativeModule.sharedInstance.bridge?.invalidate()
        ReactNativeModule.sharedInstance.bridge = nil
    }
    
    ///
    deinit {
        
    }
    
    // MARK: - UIMethods
    /// Setup UI for react screen. Decides which type of screen is to be loaded.
    func setupUI() {
        
        DispatchQueue.main.async {
            self.reactRootView = ReactNativeModule.sharedInstance.viewForModule("Demo", initialProperties: [:])
            self.reactRootView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            self.view.addSubview(self.reactRootView)
        }
        
    }
}
