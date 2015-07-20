//
//  Song.m
//  UICollectionView
//
//  Created by Tyler Yan on 2015-07-19.
//  Copyright (c) 2015 Tyler. All rights reserved.
//

#import "Song.h"

@implementation Song
- (instancetype)initWithTitle:(NSString*)title withArtist:(NSString*)artist withimage:(UIImage*)image
{
    self = [super init];
    if (self) {
        self.title = title;
        self.artist = artist;
        self.image = image;
    }
    return self;
}
@end
