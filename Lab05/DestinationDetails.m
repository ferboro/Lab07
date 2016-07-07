//
//  DestinationDetails.m
//  Lab05
//
//  Created by Fer on 6/30/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import "DestinationDetails.h"
#import "Google/Analytics.h"
@import GoogleMaps;

@interface DestinationDetails ()

@end

@implementation DestinationDetails{
    GMSMapView *mapView_;
}
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
//    [self createMap];
    [self initController];
//    self.lblTitle.text          = self.destinationTitle;
//    self.lblDescription.text    = self.destinationDescription;
//    self.imgDestination.image   = [UIImage imageNamed:self.destinationPhoto];
//    
//    self.lblDescription.numberOfLines = 0;
//    [self.lblDescription sizeToFit];
}
//-------------------------------------------------------------------------------

- (void)viewWillAppear:(BOOL)animated{
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"DestinationDetails"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    //self.lblDestinationTitle.text          = self.destinationTitle;
    if([self.destinationTitle  isEqual: @"Chapala"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.287008
                                                                longitude:-103.191311
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.287008, -103.191311);
        marker.title = @"Chapala";
        marker.snippet = @"Chapala, Jalisco";
        marker.map = mapView_;
    }
    else if ([self.destinationTitle  isEqual: @"Mazamitla"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:19.915606
                                                                longitude:-103.020143
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(19.915606, -103.020143);
        marker.title = @"Mazamitla";
        marker.snippet = @"Mazamitla, Jalisco";
        marker.map = mapView_;
    }
    else if ([self.destinationTitle  isEqual: @"Tapalpa"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:19.947793
                                                                longitude:-103.760261
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(19.947793, -103.760261);
        marker.title = @"Tapalpa";
        marker.snippet = @"Tapalpa, Jalisco";
        marker.map = mapView_;
    }
    else if ([self.destinationTitle  isEqual: @"Puerto Vallarta"])
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.611417
                                                                longitude:-105.234441
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.611417, -105.234441);
        marker.title = @"Puerto Vallarta";
        marker.snippet = @"Puerto Vallarta, Jalisco";
        marker.map = mapView_;
    }
    else
    {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.881915
                                                                longitude:-103.832149
                                                                     zoom:17];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(20.881915, -103.832149);
        marker.title = @"Tequila";
        marker.snippet = @"Tequila, Jalisco";
        marker.map = mapView_;
    }
}


- (void)createMap {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.6947103
                                                            longitude:-103.4203145
                                                                 zoom:17];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(20.6947103, -103.4203145);
    marker.title = @"UAG";
    marker.snippet = @"Clase de Maestría";
    marker.map = mapView_;
}

@end