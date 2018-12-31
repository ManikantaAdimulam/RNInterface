
#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

/**
 Extern module to receive callbacks from react screens.
 */
@interface RCT_EXTERN_MODULE(RNInterface, NSObject)
RCT_EXTERN_METHOD(updateProfile:: reactTag (NSString *) params (NSDictionary *))
RCT_EXTERN_METHOD(actionCancelTapped: isUpdated (NSString *))

@end
