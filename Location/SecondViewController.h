//
//  SecondViewController.h
//  Location
//
//  Created by emanuele on 01/08/13.
//  Copyright (c) 2013 emanuele. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textField;
@property (nonatomic,strong)CLGeocoder* geocoder;
@property (nonatomic,strong) CLLocationManager* locationManager;
- (IBAction)getGeocodeButtonPressed:(id)sender;

@end
