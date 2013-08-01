//
//  FirstViewController.h
//  Location
//
//  Created by emanuele on 01/08/13.
//  Copyright (c) 2013 emanuele. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FirstViewController : UIViewController <CLLocationManagerDelegate>
- (IBAction)startTrackingLocation:(id)sender;
- (IBAction)stopTrackingLocation:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *textField;
@property (strong, nonatomic)CLLocationManager* locationManager;

@end
