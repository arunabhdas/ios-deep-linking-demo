//
//  ViewController.h
//  DeepLinkingDemo
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)openReceiverApp:(id)sender;
- (IBAction)openMaps:(id)sender;
- (IBAction)openYouTubeApp:(id)sender;

@end

