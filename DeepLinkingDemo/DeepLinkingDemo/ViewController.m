//
//  ViewController.m
//  DeepLinkingDemo
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)openReceiverApp:(id)sender {
    // Opens the Receiver app if installed, otherwise displays an error
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *URLEncodedText = [self.textField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *ourPath = [@"arunabhdasapp://" stringByAppendingString:URLEncodedText];
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    if ([ourApplication canOpenURL:ourURL]) {
        [ourApplication openURL:ourURL options:nil completionHandler:nil];
    }
    else {
        //Display error
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Receiver Not Found" message:@"The Receiver App is not installed. It must be installed to send text." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];

    }
}

- (IBAction)openMaps:(id)sender {
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"http://maps.google.com/maps?ll=37.4133183,-122.1162864";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
    
}

- (IBAction)openYouTubeApp:(id)sender {
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"http://www.youtube.com/watch?v=TFFkK2SmPg4";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

@end
