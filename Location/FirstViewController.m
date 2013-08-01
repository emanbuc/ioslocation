 //
//  FirstViewController.m
//  Location
//
//  Created by emanuele on 01/08/13.
//  Copyright (c) 2013 emanuele. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize textField;
@synthesize locationManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.locationManager= [[CLLocationManager alloc]init];
    self.locationManager.delegate=self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    
    textField.text=newLocation.description;
    
}

- (IBAction)startTrackingLocation:(id)sender {
    [self.locationManager startUpdatingLocation];
}

- (IBAction)stopTrackingLocation:(id)sender {
    [self.locationManager stopUpdatingLocation];
}
@end
