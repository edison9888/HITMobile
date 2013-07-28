//
//  EndStreamTableViewCell.m
//  iHIT
//
//  Created by keywind on 11-9-18.
//  Copyright 2011年 Hit. All rights reserved.
//

#import "EndStreamTableViewCell.h"
@interface EndStreamTableViewCell()
- (void)addImageView;
@end


@implementation EndStreamTableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
	if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
		[self addImageView];
		self.selectionStyle = UITableViewCellSelectionStyleNone;
	}
	return self;
}

- (void)dealloc{
	[imageView release];
	[super dealloc];
}

- (void)addImageView{
	imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"end.png"]];
	imageView.frame = CGRectMake(0, 0, 12, 12);
	imageView.center = CGPointMake(self.frame.size.width/2.0, self.frame.size.height/2.0);
	imageView.backgroundColor = [UIColor clearColor];
	[self.contentView addSubview:imageView];
}
@end
