
import UIKit
import React

/// Class to receive callbacks from react screen.
@objc (RNInterface)
/// Class to receive callbacks from react screen.
class RNInterface: NSObject {
    /// Update profile details for medical settings.
    ///
    /// - Parameters:
    ///   - reactTag: Tag of the react view.
    ///   - params: Dictionary which holds the updated values.
    @objc(updateProfile::)
    func updateProfile(reactTag: String, params: NSDictionary) {
      
    }
    
    /// Cancel tapped.
    @objc(actionCancelTapped:)
    func actionCancelTapped(isUpdated: String) {
        print(isUpdated)
    }
}
