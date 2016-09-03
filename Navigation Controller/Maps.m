//
//  Maps.m
//  Navigation Controller
//
//  Created by Carlos E. Villalpando on 9/2/16.
//  Copyright © 2016 OG. All rights reserved.
//

#import "Maps.h"

@interface Maps ()

@property NSMutableArray *cedisName;
@property NSMutableArray *cedisAddress;
@property NSMutableArray *coorLatitude;
@property NSMutableArray *coorLongitude;


@property NSString *MySelection;


@end

@implementation Maps

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view, typically from a nib.
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
//    cell.imgDestination.image = [UIImage imageNamed:self.destinationPhotos[indexPath.row]];
    return cell;
}


@end
