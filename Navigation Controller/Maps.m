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
    [self initController];
    
}

//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.cedisName   = [[NSMutableArray alloc] initWithObjects: @"Guadalajara", @"Monterrey", @"Tijuana", @"Ciudad de Mexico", @"Pachuca", nil];
    self.cedisAddress   = [[NSMutableArray alloc] initWithObjects: @"Paseo de la Arboleda No. 1122", @"Av. José Eleuterio Gómez No. 315", @"Blvd. Díaz Ordaz No. 14910", @"Av. Insurgentes Sur No. 1666", @"Av. Revolución esq. 16 de enero", nil];
    self.coorLatitude   = [[NSMutableArray alloc] initWithObjects: @"20.6575109", @"25.6796906", @"32.4951589", @"19.361577", @"20.1161821", nil];
    self.coorLongitude   = [[NSMutableArray alloc] initWithObjects: @"-103.3883214", @"-100.3525703", @"-116.9605764", @"-99.1850139", @"-98.7453833", nil];
    
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
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cedisName.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellMaps *cell = (cellMaps *)[tableView dequeueReusableCellWithIdentifier:@"cellMaps"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMaps" bundle:nil] forCellReuseIdentifier:@"cellMaps"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMaps"];
    }
    
    cell.lblCedisName.text = self.cedisName[indexPath.row];
    cell.lblCedisAddress.text = self.cedisAddress[indexPath.row];
//    _Latitude = self.coorLatitude[indexPath.row];
//    Longitude = self.coorLongitude[indexPath.row];
//    cell.imgDestination.image = [UIImage imageNamed:self.destinationPhotos[indexPath.row]];
    return cell;

}



@end
