
#import "GIViewController.h"

@interface GIViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *simTxtField;
@property (strong, nonatomic) IBOutlet UISegmentedControl *installationType;
@property (strong, nonatomic) IBOutlet UIButton *submitBtn;
@property (strong, nonatomic) IBOutlet UIImageView *companyTelImg;


@end

@implementation GIViewController
@synthesize simTxtField;
@synthesize installationType;
@synthesize submitBtn;
@synthesize companyTelImg;

- (void)viewDidLoad
{
    [super viewDidLoad];
    simTxtField.delegate = self;
	
}

- (IBAction)textChanged:(id)sender {
    
    if ([simTxtField.text isEqualToString:@"+30690"] ||
        [simTxtField.text isEqualToString:@"+30693"] ||
        [simTxtField.text isEqualToString:@"+30699"]) {
        
      companyTelImg.image = [UIImage imageNamed:@"wind.png"];
        
    }
    else if ([simTxtField.text isEqualToString:@"+30694"] ||
             [simTxtField.text isEqualToString:@"+30695"]) {
        NSLog(@"success!!!");
        companyTelImg.image = [UIImage imageNamed:@"Vodafone-icon.png"];
}
    else if ([simTxtField.text isEqualToString:@"+30697"] ||
             [simTxtField.text isEqualToString:@"+30698"]) {
        NSLog(@"success!!!");
        companyTelImg.image = [UIImage imageNamed:@"cosmote.jpg"];
    }

}

@end
