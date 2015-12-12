//
//  ViewController.m
//  ObjCDevelopment
//
//  Created by Thwin Htoo Aung on 12/10/15.
//  Copyright © 2015 Thwin Htoo Aung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) change_current_player_name{
    if([[self getPlayer] isEqualToString:@"O"])
    {
        self.currentPlayerTrackLabel.text = @"Player : Two";
    }else
    {
        self.currentPlayerTrackLabel.text = @"Player : One";
    }
}

- (void) trigger_outOfPlaceAlert{
    
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"It's a draw" message:@"Play Again?" delegate:self cancelButtonTitle:nil otherButtonTitles:@"yes" ,@"Menu", nil ];
    [alert show];
}
- (void) trigger_playerOWinsAlert{
    
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Player O Wins" message:@"Play Again?" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Yes", @"Menu", nil ];
    [alert show];
}
- (void) trigger_playerXWinsAlert{
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Player X Wins" message:@"Play Again?" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Yes", @"Menu", nil];
    [alert show];
}
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if([[alertView title] isEqualToString:@"Player O Wins"])
    {
        if(buttonIndex == 0)
        {
            [self setup_fields];
            return;
        }else
        {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }else if([[alertView title] isEqualToString:@"Player X Wins"])
    {
        if(buttonIndex == 0)
        {
            [self setup_fields];
            return ;
        }else
        {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }else if([[alertView title] isEqualToString:@"It's a draw"])
    {
        if(buttonIndex == 0)
        {
            [self setup_fields];
            return;
        }else
        {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }
}
- (void) timeToTriggerOutOfPlaceAlert{
    
    [self incrementPlaceCount];
    if(self.placeCount == 9)
    {
        [self trigger_outOfPlaceAlert];
    }
}
- (void) timeToTriggerAllAlert{
    
}
- (void) setup_fields{
    self.currentPlayer = @"first";
    self.placeCount = 0;
    [self.buttonOfIndex1 setTitle:@" " forState:normal];
    [self.buttonOfIndex2 setTitle:@" " forState:normal];
    [self.buttonOfIndex3 setTitle:@" " forState:normal];
    [self.buttonOfIndex4 setTitle:@" " forState:normal];
    [self.buttonOfIndex5 setTitle:@" " forState:normal];
    [self.buttonOfIndex6 setTitle:@" " forState:normal];
    [self.buttonOfIndex7 setTitle:@" " forState:normal];
    [self.buttonOfIndex8 setTitle:@" " forState:normal];
    [self.buttonOfIndex9 setTitle:@" " forState:normal];
    for(int i = 0 ; i < 9; i++)
    {
        self->statesOfButtons[i] = ' ';
    }
}
- (void) triggerCurrentPlayer{
    if([self.currentPlayer isEqualToString:@"first"])
    {
        self.currentPlayer = @"second";
    }else
    {
        self.currentPlayer = @"first";
    }
}
- (BOOL) playerOneOrTwo {
    BOOL result = NO;
    @autoreleasepool {
        if([self.currentPlayer isEqualToString : @"first" ])
        {
            result = YES;
        }else
        {
            result = NO;
        }
    }
    return result;
}
- (NSString *)getPlayer{
    
    NSString *playerName;
    if([self playerOneOrTwo] == YES)
    {
        playerName = @"O";
    }else
    {
        playerName = @"X";
    }
    return playerName;
}
-(void) incrementPlaceCount{
    
    self.placeCount++;
}














- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup_fields];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}



















- (IBAction)btn1_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:0];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }

        [self triggerCurrentPlayer];
    }
}

- (IBAction)btn2_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:1];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }


        [self triggerCurrentPlayer];
    }
}

- (IBAction)btn3_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:2];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }


        [self triggerCurrentPlayer];

    }
}

- (IBAction)btn4_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:3];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }


        [self triggerCurrentPlayer];
    }
}

- (IBAction)btn5_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:4];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }


        [self triggerCurrentPlayer];
    }
}

- (IBAction)btn6_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:5];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }


        [self triggerCurrentPlayer];
    }
}

- (IBAction)btn7_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:6];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }


        [self triggerCurrentPlayer];
    }
}

- (IBAction)btn8_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:7];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }


        [self triggerCurrentPlayer];
    }
}

- (IBAction)btn9_click:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@" "])
    {
        [sender setTitle:[self getPlayer] forState:normal];
        [self setChar:8];
        if([self logicForBothPlayer] == NO)
        {
            [self timeToTriggerOutOfPlaceAlert];
        }


        [self triggerCurrentPlayer];
    }
}

- (IBAction)resetEveryThing:(UIButton *)sender {
    [self setup_fields];
}

- (IBAction)back_to_menu:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)restart:(UIButton *)sender {
}

- (BOOL) logicForPlayerOne{
    
    if([self getChar:0] == 'o' && [self getChar:1] == 'o' && [self getChar:2] == 'o')
    {
        [self trigger_playerOWinsAlert];
        return YES;
    }else if([self getChar:3] == 'o' && [self getChar:4] == 'o' && [self getChar:5] == 'o')
    {
        [self trigger_playerOWinsAlert];
        return YES;
    }else if([self getChar:6] == 'o' && [self getChar:7] == 'o' && [self getChar:8] == 'o')
    {
        [self trigger_playerOWinsAlert];
        return YES;
    }else if([self getChar:0] == 'o' && [self getChar:3] == 'o' && [self getChar:6] == 'o')
    {
        [self trigger_playerOWinsAlert];
        return YES;
    }else if([self getChar:1] == 'o' && [self getChar:4] == 'o' && [self getChar:7] == 'o')
    {
        [self trigger_playerOWinsAlert];
        return YES;
    }else if([self getChar:2] == 'o' && [self getChar:5] == 'o' && [self getChar:8] == 'o')
    {
        [self trigger_playerOWinsAlert];
        return YES;
    }else if([self getChar:0] == 'o' && [self getChar:4] == 'o' && [self getChar:8] == 'o')
    {
        [self trigger_playerOWinsAlert];
        return YES;
    }else if([self getChar:2] == 'o' && [self getChar:4] == 'o' && [self getChar:6] == 'o')
    {
        [self trigger_playerOWinsAlert];
        return YES;
    }
    return NO;
}
- (BOOL) logicForPlayerTwo{
    
    if([self getChar:0] == 'x' && [self getChar:1] == 'x' && [self getChar:2] == 'x')
    {
        [self trigger_playerXWinsAlert];
        return YES;
    }else if([self getChar:3] == 'x' && [self getChar:4] == 'x' && [self getChar:5] == 'x')
    {
        [self trigger_playerXWinsAlert];
        return YES;
    }else if([self getChar:6] == 'x' && [self getChar:7] == 'x' && [self getChar:8] == 'x')
    {
        [self trigger_playerXWinsAlert];
        return YES;
    }else if([self getChar:0] == 'x' && [self getChar:3] == 'x' && [self getChar:6] == 'x')
    {
        [self trigger_playerXWinsAlert];
        return YES;
    }else if([self getChar:1] == 'x' && [self getChar:4] == 'x' && [self getChar:7] == 'x')
    {
        [self trigger_playerXWinsAlert];
        return YES;
    }else if([self getChar:2] == 'x' && [self getChar:5] == 'x' && [self getChar:8] == 'x')
    {
        [self trigger_playerXWinsAlert];
        return YES;
    }else if([self getChar:0] == 'x' && [self getChar:4] == 'x' && [self getChar:8] == 'x')
    {
        [self trigger_playerXWinsAlert];
        return YES;
    }else if([self getChar:2] == 'x' && [self getChar:4] == 'x' && [self getChar:6] == 'x')
    {
        [self trigger_playerXWinsAlert];
        return YES;
    }
    return NO;

}
- (BOOL) logicForBothPlayer{
    BOOL result = NO;
    if([[self getPlayer] isEqualToString:@"O"])
    {
        for(int i = 0 ; i < 9; i++)
        {
            printf("%c" , [self getChar:i]);
        }
        printf("first player\n");
        result = [self logicForPlayerOne];
    }else
    {
        for(int i = 0 ; i < 9; i++)
        {
            printf("%c" , [self getChar:i]);
        }
        printf("second player\n");
        result = [self logicForPlayerTwo];
    }
    return result;
}

- (void) setChar: (int)index{
    [self change_current_player_name];
    if([self playerOneOrTwo])
    {
        self->statesOfButtons[index] = 'o';
    }else
    {
        self->statesOfButtons[index] = 'x';
    }
}
- (char) getChar:(int)index{
    
    return self->statesOfButtons[index];
}
@end