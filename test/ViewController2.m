//
//  ViewController2.m
//  test
//
//  Created by Veronica Baldys on 2016-04-30.
//  Copyright © 2016 Veronica Baldys. All rights reserved.
//

#import "ViewController2.h"
#import <BuddyBuildSDK/BuddyBuildSDK.h>
#import "CatCell.h"
#import "Glimpse.h"

enum {
    GG,
    Jacob,
	BBandGG, 
    Theo,
	KaneAndJacob,
};

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UICollectionView *catCollectionView;
@property (weak, nonatomic) IBOutlet UITextField *privateTextField;
@property (nonatomic, strong) NSArray *catNames;
@property (nonatomic, strong) NSArray *catImageNames;

@property (nonatomic) NSInteger *selectedCatCellIndex;

@property (nonatomic, strong) Glimpse *glimpse;

@end

@implementation ViewController2 

static const NSString *NameKey = @"CatName";
static const NSString *ImageNameKey = @"CatImageName";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [BuddyBuildSDK showScreenshotTutorial];

	self.catNames = @[@"GG",@"GG & BB",@"Jacob",@"Kane & Jacob",@"Theo"];
	self.catImageNames = @[@"GG",@"GG_BB",@"Jacob",@"Kane_Jacob",@"Theo"];

	_selectedCatCellIndex = 0;
}

- (NSDictionary*)catDictionaryWithIndex:(NSInteger)index {
	return @{NameKey:self.catNames[index], ImageNameKey:self.catImageNames[index]};
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	// Create a new Glimpse object.
//	self.glimpse = [[Glimpse alloc] init];
//
//	// Start recording and tell Glimpse what to do when you are finished
//	[self.glimpse startRecordingView:self.view onCompletion:^(NSURL *fileOuputURL) {
//		NSLog(@"DONE WITH OUTPUT: %@", fileOuputURL.absoluteString);
//	}];

}
- (void) viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
//	[self.glimpse stop];

    
}
- (IBAction)dontTouchMe:(id)sender {
    strcpy(0,"This is a bad bug");
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

	NSString *cellID = @"Meow";

	UIColor *bgColor = [UIColor magentaColor];

	if (indexPath.item==0) {
		bgColor = [UIColor greenColor];

	}
	if (indexPath.item==1) {
		bgColor = [UIColor blueColor];

	}
	if (indexPath.item==2) {
		bgColor = [UIColor redColor];

	}
	if (indexPath.item==3) {
		bgColor = [UIColor darkGrayColor];

	}
	if (indexPath.item==4) {
		bgColor = [UIColor darkTextColor];

	}
	if (indexPath.item==5) {
		bgColor = [UIColor redColor];
		
	}


    CatCell *catCell = (CatCell*)[collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];


	[catCell setTitle:self.catNames[indexPath.item] imageName:self.catImageNames[indexPath.item]];


	catCell.backgroundColor = bgColor;
    return catCell;
}

#pragma mark - UICollectionViewDataSource methods
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
	return 1;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
	UICollectionViewCell *selectedCell = [collectionView cellForItemAtIndexPath:indexPath];



    NSLog(@"selected item");
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
