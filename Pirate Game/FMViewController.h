//
//  FMViewController.h
//  Pirate Game
//
//  Created by Fredrick Myers on 2/13/14.
//  Copyright (c) 2014 Fredrick Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMCharacter.h"
#import "FMBoss.h"

@interface FMViewController : UIViewController

#pragma mark - Properties
@property (strong, nonatomic) IBOutlet UILabel *labelHealth;
@property (strong, nonatomic) IBOutlet UILabel *labelDamage;
@property (strong, nonatomic) IBOutlet UILabel *labelWeaponName;
@property (strong, nonatomic) IBOutlet UILabel *labelArmorName;
@property (strong, nonatomic) IBOutlet UILabel *labelStoryText;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (nonatomic) CGPoint location;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) FMCharacter *character;
@property (strong, nonatomic) FMBoss *boss;

#pragma mark - Actions
- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)resetButtonPressed:(UIButton *)sender;



@end
