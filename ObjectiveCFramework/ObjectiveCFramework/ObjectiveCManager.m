#import <Foundation/Foundation.h>
#import "ObjectiveCManager.h"
#import "ObjectiveCTypes.h"
#import "ObjectiveCViewController.h"
#import <ObjectiveCFramework/ObjectiveCFramework-Swift.h>

@implementation ObjectiveCManager

+ (NSString *)name {
    return @"DocuSign-Native-iOS-SDK";
}

+ (NSString *)swiftEnum {
    SignerType type = SignerTypeRemote;
    return [NSString stringWithFormat:@"%ld", (long)type];
}

+ (NSString *)objCEnum {
    TabType type = SignHere;
    return [NSString stringWithFormat:@"%ld", (long)type];
}

+ (NSString *)swiftClass {
    return [[[Signer alloc] init] classFunction];
}

+ (void)presentObjectiveCViewController:(NSString *)customMessage presentingController:(UIViewController *)presentingController completion:(DSMViewControllerErrorBlock)completion {
    ObjectiveCViewController *viewController = [ObjectiveCViewController createViewController:customMessage];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [presentingController presentViewController:navigationController animated:YES completion:^{
        if (completion) {
            completion(viewController, nil);
        }
    }];
}

+ (void)presentSwiftViewController:(NSString *)customMessage presentingController:(UIViewController *)presentingController completion:(DSMViewControllerErrorBlock)completion {
    
    SwiftViewController *viewController = [SwiftViewController createViewController:customMessage];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [presentingController presentViewController:navigationController animated:YES completion:^{
        if (completion) {
            completion(viewController, nil);
        }
    }];
}

@end
