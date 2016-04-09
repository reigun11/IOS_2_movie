`//
//  MovieListViewController.h
//  MovieList
//
//  Created by Trainning Educational on 09/04/16.
//  Copyright © 2016 Valter Abranches. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieListViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *movieListLabel;

@property (weak, nonatomic) IBOutlet UITextField *movieNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *yearTextField;


@end
