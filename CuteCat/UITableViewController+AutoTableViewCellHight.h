//
//  UITableViewController+AutoTableViewCellHight.h
//  CuteCat
//
//  Created by 朱海芳 on 16/3/18.
//  Copyright © 2016年 朱海芳. All rights reserved.
//

#import "BaseTableViewController.h"
#import <UIKit/UIKit.h>

@class SDCellAutoHeightManager;

#define kSDModelCellTag 199206

@interface UITableViewController_AutoTableViewCellHight : BaseTableViewController

@property(nonatomic,strong)SDCellAutoHeightManager *cellAutoHeightManager;

-(CGFloat)cellHeightForIndexPath:(NSIndexPath *)indexPath model:(id)model keyPath:(NSString *)keyPath cellClass:(Class)cellClass contentViewWith:(CGFloat)contenViewWith;

-(void)startAutoCellHeightWithCellClass:(Class)cellClass contentViewWith:(CGFloat)contentViewWitdh NS_DEPRECATED(10_0,10_4,6_0,6_0);
-(CGFloat)cellHeightForIndexPath:(NSIndexPath *)indexPath model:(id)model keyPath:(NSString *)keyPath  NS_DEPRECATED(10_0,10_4,6_0,6_0);
@end




//库内使用

@interface SDCellAutoHeightManager : NSObject

@property (nonatomic, assign) CGFloat contentViewWidth;

@property (nonatomic, assign) Class cellClass;

@property (nonatomic, assign) CGFloat cellHeight;

@property (nonatomic, strong) UITableViewCell *modelCell;

- (void)clearHeightCache;

- (void)clearHeightCacheOfIndexPaths:(NSArray *)indexPaths;

- (NSNumber *)heightCacheForIndexPath:(NSIndexPath *)indexPath;

- (CGFloat)cellHeightForIndexPath:(NSIndexPath *)indexPath model:(id)model keyPath:(NSString *)keyPath;

- (CGFloat)cellHeightForIndexPath:(NSIndexPath *)indexPath model:(id)model keyPath:(NSString *)keyPath cellClass:(Class)cellClass;

- (instancetype)initWithCellClass:(Class)cellClass;
+ (instancetype)managerWithCellClass:(Class)cellClass;
@end

