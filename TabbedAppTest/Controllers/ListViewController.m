//
//  ListViewController.m.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ChartDSDS.h"
#import "ChartDSDSSchemaItem.h"
#import "DatasourceManager.h"
#import "ListDSDSItem.h"
#import "ListViewController.h"
#import "NSNumber+RO.h"
#import "ROListDataLoader.h"
#import "ROOptionsFilter.h"
#import "RORefreshBehavior.h"
#import "ROStringFilter.h"
#import "ROUtils.h"
#import "SearchDSDSItem.h"

@interface ListViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@end

@implementation ListViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.layoutType = ROLayoutChartLines;

        self.dataLoader = [[ROListDataLoader alloc] initWithDatasource:[[DatasourceManager sharedInstance] chartDSDS]
                                                         optionsFilter:self.optionsFilter];
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"List"];
    
    [self.optionsFilter addDesignFilter:[ROStringFilter filterWithFieldName:kChartDSDSSchemaItemMonth
                                                                      value:self.searchDSDSItem.month]];

	self.navigationItem.title = NSLocalizedString(@"Chart", nil);

    self.chartViewDelegate = self;

    self.xAxis = [[ROChartSerie alloc] initWithLabel:@"Month"];
    self.serie1 = [[ROChartSerie alloc] initWithLabel:@"Incomes" atColorHexString:@"#17B9ED"];
    self.serie2 = [[ROChartSerie alloc] initWithLabel:@"Outcomes" atColorHexString:@"#EF5E57"];

    [self.behaviors addObject:[RORefreshBehavior behaviorViewController:self]];

    for (id<ROBehavior> behavior in self.behaviors) {
        [behavior viewDidLoad];
    }

    [self loadData];
}

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {

        _optionsFilter = [ROOptionsFilter new];
    }
    return _optionsFilter;
}

#pragma mark - Data delegate

- (void)loadData {

    [super loadData];
}

- (void)loadDataSuccess:(id)dataObject {

    [super loadDataSuccess:dataObject];
}

- (void)loadDataError:(ROError *)error {

    [super loadDataError:error];
}

#pragma mark - ROChartViewDelegate

- (void)configureSeriesAtIndex:(NSInteger)index {

    ChartDSDSSchemaItem *item = self.items[index];
    [self.xAxis.values addObject:(item.month != nil ? item.month : @"")];
    [self.serie1.values addObject:([item.incomes ro_stringValue] != nil ? [item.incomes ro_stringValue] : @0)];
    [self.serie2.values addObject:([item.outcomes ro_stringValue] != nil ? [item.outcomes ro_stringValue] : @0)];

}

@end

