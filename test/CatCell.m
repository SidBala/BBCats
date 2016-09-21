//
//  CatCell.m
//  test
//
//  Created by Veronica Baldys on 2016-08-18.
//  Copyright © 2016 Veronica Baldys. All rights reserved.
//

#import "CatCell.h"
#import <BuddyBuildSDK/BuddyBuildSDK.h>
@interface CatCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *imageName;

@end

@implementation CatCell

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];

	if (self) {
		self.imageView.buddybuildViewIsPrivate = NO;
		self.nameLabel.text = @"random cat";
		self.imageView.image = [UIImage imageNamed:@"IMG_2978.png"];

	}
	return self;
}

- (instancetype) init {

	self = [super init];
	if (self) {

	}
	return self;
}

- (void) setTitle:(NSString*)title imageName:(NSString *)imageName {
	self.title = title;
	self.nameLabel.text = title;
	self.imageName = imageName;
	self.imageView.image = [UIImage imageNamed:imageName];


}


- (void)setSelected:(BOOL)selected {
	[super setSelected:selected];
	self.imageView.buddybuildViewIsPrivate = selected;
}


@end
