//
//  ViewController.m
//  FlightTracker
//
//  Created by Oumnya El Jamaly on 4/11/15.
//  Copyright (c) 2015 Oumnya El Jamaly. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation ViewController {
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.53797749, -5.10758677);
    marker.title = @"Lab 7";
    marker.snippet = @"Al Akhawayn University in Ifrane";
    marker.map = mapView_;
}

@end

