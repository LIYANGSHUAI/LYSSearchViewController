//
//  LYSSearchViewController.m
//  LYSSearchViewController
//
//  Created by HENAN on 2018/5/12.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "LYSSearchViewController.h"

@interface LYSSearchViewController ()<UISearchBarDelegate>

@property (nonatomic,strong)UISearchBar *searchBar;

@end

@implementation LYSSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    [self.navigationItem setHidesBackButton:YES];
    
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(5, 7, CGRectGetWidth(self.view.frame) - 10, 30)];
    
    titleView.backgroundColor = [UIColor redColor];
    self.navigationItem.titleView = titleView;

    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(titleView.frame), 30)];
    self.searchBar.showsCancelButton = YES;
    [titleView addSubview:self.searchBar];
    
    

}


- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    [searchBar resignFirstResponder];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
