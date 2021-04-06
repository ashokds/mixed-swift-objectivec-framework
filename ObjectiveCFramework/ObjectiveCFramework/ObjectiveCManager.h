#import <UIKit/UIKit.h>

// importing Swift headers results in issues -- swift code needs to be wrapped with objc methods. 

NS_ASSUME_NONNULL_BEGIN

typedef void(^DSMVoidBlock)(void);
typedef void(^ _Nullable DSMViewControllerErrorBlock)(UIViewController * _Nullable , NSError * _Nullable);

@interface ObjectiveCManager : NSObject

+ (NSString *)name;
+ (NSString *)swiftEnum;
+ (NSString *)objCEnum;

+ (void)presentObjectiveCViewController:(NSString *)customMessage presentingController:(UIViewController *)presentingController completion:(DSMViewControllerErrorBlock)completion;

+ (void)presentSwiftViewController:(NSString *)customMessage presentingController:(UIViewController *)presentingController completion:(DSMViewControllerErrorBlock)completion;

@end

NS_ASSUME_NONNULL_END
