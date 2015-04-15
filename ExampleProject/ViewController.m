//
//  ViewController.m
//  ExampleProject
//
//  Created by PFaucon on 3/24/15.
//  Copyright (c) 2015 PFaucon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *nameList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.nameList = @[@"Christophe",@"John",@"Michael Welker",@"Ted", @"Seth Heywood", @"John Radcliffe", @"Andrew Higgins", @"Miguel Lopez"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.nameList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = self.nameList[indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Awesome People";
}


@end
