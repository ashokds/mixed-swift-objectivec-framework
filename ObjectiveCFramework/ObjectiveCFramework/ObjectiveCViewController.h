#import <UIKit/UIKit.h>
#import "ObjectiveCManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface ObjectiveCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *objectiveCTextField;

+ (instancetype)createViewController:(NSString *)customMessage;

@end

NS_ASSUME_NONNULL_END
