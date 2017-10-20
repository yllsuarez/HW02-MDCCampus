//
//  ViewController.m
//  HW02-MDCCampus
//
//  Created by Yonny L Leyva Suarez on 10/13/17.
//  Copyright © 2017 Yonny L Leyva Suarez. All rights reserved.
//

#import "ViewController.h"
#import "Campus.h"

@interface ViewController ()
@property (strong,nonatomic) NSMutableArray *campusList;
@property (weak, nonatomic) IBOutlet UIImageView *campusImg;
@property (weak, nonatomic) IBOutlet UILabel *campusName;
@property (weak, nonatomic) IBOutlet UILabel *campusAddress;
@property (weak, nonatomic) IBOutlet UIButton *btnPrevious;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;

@property (getter=getPos,setter=setPos:) int Pos;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.campusList = [[NSMutableArray alloc]init];
    
    Campus* hialeah = [[Campus alloc]initWithName:@"Hialeah" andWithAddress:@"1780 W 49th Street Hialeah, Florida 33012" andWithImage:@"hialeah"];
    [self.campusList addObject:hialeah];
    
    Campus* homestead = [[Campus alloc]initWithName:@"Homestead" andWithAddress:@"500 College Terrace Homestead, Florida 33030" andWithImage:@"homestead"];
    [self.campusList addObject:homestead];
    
    Campus* interamerican = [[Campus alloc]initWithName:@"InterAmerican" andWithAddress:@"627 SW 27th Ave. Miami, FL 33135" andWithImage:@"iac"];
    [self.campusList addObject:interamerican];
    
    Campus* kendall = [[Campus alloc]initWithName:@"Kendall" andWithAddress:@"11011 SW 104 Street Miami, FL 33176-3393" andWithImage:@"kendall"];
    [self.campusList addObject:kendall];
    
    Campus* medical = [[Campus alloc]initWithName:@"Medical" andWithAddress:@"950 NW 20th St. Miami, FL 33127" andWithImage:@"medical"];
    [self.campusList addObject:medical];

    Campus* north = [[Campus alloc]initWithName:@"North" andWithAddress:@"11380 NW 27th Ave. Miami, FL 33167-3495" andWithImage:@"north"];
    [self.campusList addObject:north];
    
    Campus* west = [[Campus alloc]initWithName:@"West" andWithAddress:@"3800 NW 115th Ave. Doral, FL 33178" andWithImage:@"west-campus"];
    [self.campusList addObject:west];
    
    Campus* Wolfson = [[Campus alloc]initWithName:@"Wolfson" andWithAddress:@"300 NE Second Ave. Miami, FL 33132" andWithImage:@"wolfson"];
    [self.campusList addObject:Wolfson];
    
    [self setPos:0];
    
    [self.btnPrevious setEnabled:true];
    [self.btnNext setEnabled:true];
    
    [self componentsUpdate];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPreviousPressed:(id)sender {
    self.Pos--;
    [self componentsUpdate];
}
- (IBAction)btnNextPressed:(id)sender {
    self.Pos++;
    [self componentsUpdate];
}

-(void)componentsUpdate{
    if(self.Pos == 0)
        [self.btnPrevious setEnabled:false];
    else if (self.Pos == self.campusList.count-1)
        [self.btnNext setEnabled:false];
    else
    {
        [self.btnPrevious setEnabled:true];
        [self.btnNext setEnabled:true];
    }
    
    Campus *campus = [self.campusList objectAtIndex:self.Pos];
    
    [self.campusName setText:campus.getName];
    [self.campusAddress setText:campus.getAddress];
    
    UIImage* img = [UIImage imageNamed:campus.getImage];
    
    [self.campusImg setImage:img];
}

@end
