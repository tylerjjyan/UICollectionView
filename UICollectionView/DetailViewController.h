//
//  DetailViewController.h
//  UICollectionView
//
//  Created by Tyler Yan on 2015-07-19.
//  Copyright (c) 2015 Tyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *detailArtist;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;

@end

