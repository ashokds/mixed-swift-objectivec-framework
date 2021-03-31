#import "ObjectiveCViewController.h"

@interface ObjectiveCViewController ()

@property (weak, nonatomic) NSString *message;

@end

@implementation ObjectiveCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.objectiveCTextField.text = self.message ?: @"Oh Hi!! default message.";
}

+ (instancetype)createViewController:(NSString *)customMessage {
    NSBundle *resourcesBundle = [NSBundle bundleForClass:[self class]];
    ObjectiveCViewController *objectiveCViewController = [[UIStoryboard storyboardWithName:@"ObjectiveCStoryboard" bundle:resourcesBundle] instantiateViewControllerWithIdentifier:@"ObjectiveCViewController"];
    
    if (customMessage != nil) {
        objectiveCViewController.message = customMessage;
    }
    return objectiveCViewController;
}

@end
