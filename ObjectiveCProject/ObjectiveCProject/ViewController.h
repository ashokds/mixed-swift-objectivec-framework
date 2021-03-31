#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *loadSwiftVC;
@property (weak, nonatomic) IBOutlet UIButton *loadObjectiveCVC;

- (IBAction)loadSwiftVCTapped:(id)sender;
- (IBAction)loadObjectiveCVC:(id)sender;


@end

