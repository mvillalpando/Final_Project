//
//  Description.h
//  Navigation Controller
//
//  Created by Mariela Villalpando on 7/1/16.
//  Copyright © 2016 OG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Maps.h"
#import "PayPalMobile.h"

@interface DescriptionCity : UIViewController
@property NSString *dTitles;
@property NSString *dDescriptions;
@property NSString *dPrice;
@property NSString *dPhotos;
@property NSString *dImages;

@property (strong, nonatomic) IBOutlet UILabel *lblDescription;
@property (strong, nonatomic) IBOutlet UILabel *lblCity;
@property (strong, nonatomic) IBOutlet UIImageView *imgDescription;

@property (strong, nonatomic) IBOutlet UIButton *btnBuy;
- (IBAction)btnBuyPressed:(id)sender;


@end
