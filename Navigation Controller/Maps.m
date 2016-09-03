//
//  Maps.m
//  Navigation Controller
//
//  Created by Carlos E. Villalpando on 9/2/16.
//  Copyright © 2016 OG. All rights reserved.
//

#import "Maps.h"
@import GoogleMaps;


@interface Maps ()

@property NSMutableArray *cedisName;
@property NSMutableArray *cedisAddress;
@property NSMutableArray *coorLatitude;
@property NSMutableArray *coorLongitude;


@property double *Latitude;
@property double *Longitude;


@end

@implementation Maps {
GMSMapView *mapView_;
}

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.5439579
                                                            longitude:-103.396334
                                                                 zoom:8];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(20.617240, -103.342776);
    marker.appearAnimation = kGMSMarkerAnimationPop;
    marker.icon = [UIImage imageNamed:@"logo.png"];
    marker.title = @"Guadalajara";
    marker.snippet = @"Av. Experiencia No. 2997";
    marker.map = mapView_;
    
    GMSMarker *marker2 = [[GMSMarker alloc] init];
    marker2.position = CLLocationCoordinate2DMake(20.856124, -102.697329);
    marker2.appearAnimation = kGMSMarkerAnimationPop;
    marker2.icon = [UIImage imageNamed:@"logo.png"];
    marker2.title = @"Tepatitlan";
    marker2.snippet = @"Calle Moctezuma No. 980";
    marker2.map = mapView_;
    
    GMSMarker *marker3 = [[GMSMarker alloc] init];
    marker3.position = CLLocationCoordinate2DMake(20.4628746,-103.4553685);
    marker3.appearAnimation = kGMSMarkerAnimationPop;
    marker3.icon = [UIImage imageNamed:@"logo.png"];
    marker3.title = @"Tlajomulco de Zúñiga";
    marker3.snippet = @"Av. Revolucion No. 445";
    marker3.map = mapView_;
    
    GMSMarker *marker4 = [[GMSMarker alloc] init];
    marker4.position = CLLocationCoordinate2DMake(20.681767, -103.423096);
    marker4.appearAnimation = kGMSMarkerAnimationPop;
    marker4.icon = [UIImage imageNamed:@"logo.png"];
    marker4.title = @"Zapopan";
    marker4.snippet = @"Plaza Andares, Locales 12 y 13";
    marker4.map = mapView_;
    
    GMSMarker *marker5 = [[GMSMarker alloc] init];
    marker5.position = CLLocationCoordinate2DMake(20.609788, -103.311089);
    marker5.appearAnimation = kGMSMarkerAnimationPop;
    marker5.icon = [UIImage imageNamed:@"logo.png"];
    marker5.title = @"Tlaquepaque";
    marker5.snippet = @"Marcelino Garcia Barragan No. 132 ";
    marker5.map = mapView_;
    
    GMSMarker *marker6 = [[GMSMarker alloc] init];
    marker6.position = CLLocationCoordinate2DMake(20.628053, -103.243745);
    marker6.appearAnimation = kGMSMarkerAnimationPop;
    marker6.icon = [UIImage imageNamed:@"logo.png"];
    marker6.title = @"Tonalá";
    marker6.snippet = @"Calle Las Huertas No. 1500";
    marker6.map = mapView_;
    
    // Do any additional setup after loading the view, typically from a nib.
}


//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
