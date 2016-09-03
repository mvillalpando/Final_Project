//
//  Maps.m
//  Navigation Controller
//
//  Created by Carlos E. Villalpando on 9/2/16.
//  Copyright © 2016 OG. All rights reserved.
//

#import "Maps.h"

@interface Maps ()

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
    self.destinationTitles   = [[NSMutableArray alloc] initWithObjects: @"Café & Té", @"Nutracéuticos", @"Cuidado personal", /*@"Suplementos alimenticios",*/ nil];
    self.destinationPhotos   = [[NSMutableArray alloc] initWithObjects: @"coffe.jpg", @"natraceuticos.jpg", @"cuidadopersonal.jpg", /*@"alimenticios.jpg",*/ nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.destinationTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 190;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    
    cell.lblDestination.text = self.destinationTitles[indexPath.row];
    cell.imgDestination.image = [UIImage imageNamed:self.destinationPhotos[indexPath.row]];
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.MySelection = self.destinationTitles[indexPath.row];
    [self performSegueWithIdentifier:@"DestinationDetails" sender:self];
}


@end
