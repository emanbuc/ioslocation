//
//  SecondViewController.m
//  Location
//
//  Created by emanuele on 01/08/13.
//  Copyright (c) 2013 emanuele. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize locationManager;
@synthesize geocoder;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.geocoder = [[CLGeocoder alloc]init];
    self.locationManager=[[CLLocationManager alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)getGeocodeButtonPressed:(id)sender {
    CLLocation* lastKnowLocation = self.locationManager.location;
    if(lastKnowLocation){
        
        // reverseGeocodeLocation utilizza un blocco che viene eseguito in modo asincrono.
        
        [self.geocoder reverseGeocodeLocation:lastKnowLocation completionHandler:^(NSArray *placemarks, NSError *error) {
            if(placemarks.count>0){
                CLPlacemark* firstPlacemark = (CLPlacemark*) [placemarks objectAtIndex:0];
                self.textField.text=[firstPlacemark description];
            }else if (error){
                self.textField.text=[NSString stringWithFormat:@"Geocoder returned the following error!%@",error];
            }
            NSLog(@"This theard is %@",[NSThread currentThread]);
        }];
    } else {
        self.textField.text=@"Location manager has no last location";
    }
}
@end
