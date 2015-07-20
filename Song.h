//
//  Song.h
//  UICollectionView
//
//  Created by Tyler Yan on 2015-07-19.
//  Copyright (c) 2015 Tyler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Song : NSObject
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *artist;
@property (nonatomic) UIImage *image;

- (instancetype)initWithTitle:(NSString*)title withArtist:(NSString*)artist withimage:(UIImage*)image;
@end
