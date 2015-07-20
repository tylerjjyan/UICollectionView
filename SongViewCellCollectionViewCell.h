//
//  SongViewCellCollectionViewCell.h
//  UICollectionView
//
//  Created by Tyler Yan on 2015-07-19.
//  Copyright (c) 2015 Tyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SongViewCellCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *artistImage;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
