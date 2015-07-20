//
//  CollectionViewController.m
//  UICollectionView
//
//  Created by Tyler Yan on 2015-07-19.
//  Copyright (c) 2015 Tyler. All rights reserved.
//

#import "CollectionViewController.h"
#import "Song.h"
#import "SongViewCellCollectionViewCell.h"
#import "DetailViewController.h"
@interface CollectionViewController ()
@property (nonatomic) NSMutableArray *songArray;


@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    Song *song1 = [[Song alloc] initWithTitle:@"We Are Never Ever Getting Back Together" withArtist:@"Taylor Swift" withimage:[UIImage imageNamed:@"taylor_swift"]];
    Song *song2 = [[Song alloc] initWithTitle:@"Baby" withArtist:@"Justin Bieber" withimage:[UIImage imageNamed:@"justin_bieber"]];
    Song *song3 = [[Song alloc] initWithTitle:@"Lego House" withArtist:@"Ed Sheeran" withimage:[UIImage imageNamed:@"ed_sheeran"]];
    
    self.songArray = [NSMutableArray array];
    
    [self.songArray addObjectsFromArray:@[song1,song2,song3]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        DetailViewController *item = (DetailViewController*)sender;
        
        DetailViewController *dVC = [segue destinationViewController];
        
        dVC.detailTitle.text = item.song.title;
        dVC.detailImage.image = item.song.image;
        dVC.detailArtist.text = item.song.artist;
    }
    
    
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete method implementation -- Return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete method implementation -- Return the number of items in the section
    return self.songArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SongViewCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"songCell" forIndexPath:indexPath];
    Song *song = [self.songArray objectAtIndex:indexPath.row];
    cell.artistLabel.text = song.artist;
    cell.titleLabel.text = song.title;
    cell.artistImage.image = song.image;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
