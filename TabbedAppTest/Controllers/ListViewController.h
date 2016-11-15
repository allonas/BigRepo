//
//  ListViewController.h
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ROChartViewController.h"
#import "RODataDelegate.h"


@class ListDSDSItem;

@class SearchDSDSItem;
@interface ListViewController : ROChartViewController <ROChartViewDelegate, RODataDelegate>

@property (nonatomic, strong) ListDSDSItem *listDSDSItem;

@property (nonatomic, strong) SearchDSDSItem *searchDSDSItem;

@end
