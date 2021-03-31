#import "ViewController.h"
#import <ObjectiveCFramework/ObjectiveCFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)loadObjectiveCVC:(id)sender {
    [ObjectiveCManager presentObjectiveCViewController:@"Presented ObjCVC from app" presentingController:self completion:^(UIViewController * _Nullable viewController, NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.description);
            return;
        }
        NSLog(@"Presented objCVC successfully.");
    }];
}

- (IBAction)loadSwiftVCTapped:(id)sender {
    [ObjectiveCManager presentSwiftViewController:@"Presented Swift VC from app" presentingController:self completion:^(UIViewController * _Nullable viewController, NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.description);
            return;
        }
        NSLog(@"Presented swiftVC successfully.");
    }];
}

@end
