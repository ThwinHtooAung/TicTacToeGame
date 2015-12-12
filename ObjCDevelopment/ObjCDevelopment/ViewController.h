//
//  ViewController.h
//  ObjCDevelopment
//
//  Created by Thwin Htoo Aung on 12/10/15.
//  Copyright © 2015 Thwin Htoo Aung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    char statesOfButtons[9];
}
@property (weak, nonatomic) IBOutlet UILabel *currentPlayerTrackLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex1;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex2;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex3;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex4;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex5;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex6;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex7;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex8;
@property (weak, nonatomic) IBOutlet UIButton *buttonOfIndex9;
@property (nonatomic) NSInteger placeCount;

@property (strong, nonatomic) UIAlertView * outOfPlaceAlert;

- (void) change_current_player_name;

- (void) trigger_outOfPlaceAlert;
- (void) trigger_playerOWinsAlert;
- (void) trigger_playerXWinsAlert;

- (void) setup_fields;
- (void) timeToTriggerOutOfPlaceAlert;
- (void) timeToTriggerAllAlert;

- (BOOL) logicForPlayerOne;
- (BOOL) logicForPlayerTwo;
- (BOOL) logicForBothPlayer;

- (void) setChar: (int)index;
- (char) getChar: (int)index;
- (void) incrementPlaceCount;

@property (weak, nonatomic) NSString *currentPlayer;
- (void) triggerCurrentPlayer;
- (BOOL) playerOneOrTwo;
- (NSString *)getPlayer;

- (IBAction)btn1_click:(UIButton *)sender;
- (IBAction)btn2_click:(UIButton *)sender;
- (IBAction)btn3_click:(UIButton *)sender;
- (IBAction)btn4_click:(UIButton *)sender;
- (IBAction)btn5_click:(UIButton *)sender;
- (IBAction)btn6_click:(UIButton *)sender;
- (IBAction)btn7_click:(UIButton *)sender;
- (IBAction)btn8_click:(UIButton *)sender;
- (IBAction)btn9_click:(UIButton *)sender;
- (IBAction)resetEveryThing:(UIButton *)sender;


- (IBAction)back_to_menu:(UIButton *)sender;

@end
