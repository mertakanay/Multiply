//
//  ViewController.m
//  Multiply
//
//  Created by Jazz Santiago on 3/9/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundView;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (IBAction)onCalculateButtonPressed:(id)sender
{
    int textValue = [self.numberTextField.text intValue];
    int multiplierValue = [self.multiplierLabel.text intValue];

    if (self.segmentControl.selectedSegmentIndex==0)
    {
    int result = textValue * multiplierValue;

    self.answerLabel.text = [NSString stringWithFormat:@"%i", result];

    if (result >= 20) {
        self.backgroundView.backgroundColor =[UIColor greenColor];
    } else {
        self.backgroundView.backgroundColor =[UIColor whiteColor];
    }
    if (result % 3 == 0 & result % 5 == 0)
    {
        self.answerLabel.text = @"fizzbuzz";
    }else if (result % 3 == 0)
    {
        self.answerLabel.text = @"fizz";
    }else if (result % 5 == 0)
    {
        self.answerLabel.text = @"buzz";
    }else {
        self.answerLabel.text = self.answerLabel.text;
    }//[NSString stringWithFormat:@"%i", result] just in case
    }
    else
    {
        int result = textValue / multiplierValue;

        self.answerLabel.text = [NSString stringWithFormat:@"%i", result];

        if (result >= 20) {
            self.backgroundView.backgroundColor =[UIColor greenColor];
        } else {
            self.backgroundView.backgroundColor =[UIColor whiteColor];
        }
        if (result % 3 == 0 & result % 5 == 0)
        {
            self.answerLabel.text = @"fizzbuzz";
        }else if (result % 3 == 0)
        {
            self.answerLabel.text = @"fizz";
        }else if (result % 5 == 0)
        {
            self.answerLabel.text = @"buzz";
        }else {
            self.answerLabel.text = self.answerLabel.text;
        }//[NSString stringWithFormat:@"%i", result] just in case
    }
[self.view endEditing:YES];

}
- (IBAction)sliderAction:(id)sender {
    self.multiplierLabel.text =[NSString stringWithFormat:@"%f", self.slider.value];
}




@end
