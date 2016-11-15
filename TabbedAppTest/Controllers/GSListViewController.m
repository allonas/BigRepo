//
//  GSListViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "GoogleSheetDS.h"
#import "GSListDetailViewController.h"
#import "GSListFilterViewController.h"
#import "GSListViewController.h"
#import "Hoja1Schema1Item.h"
#import "NSNumber+RO.h"
#import "ROFilterBehavior.h"
#import "ROListDataLoader.h"
#import "RONavigationAction.h"
#import "RONumberFilter.h"
#import "ROOptionsFilter.h"
#import "RORefreshBehavior.h"
#import "ROSearchBehavior.h"
#import "ROStyle.h"
#import "ROTableViewCell.h"
#import "ROTextStyle.h"
#import "ROUtils.h"
#import "SearchDSDSItem.h"
#import "UIImage+RO.h"
#import "UILabel+RO.h"

@interface GSListViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end

@implementation GSListViewController

static NSString * const kReuseIdentifier = @"Cell";

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROListDataLoader alloc] initWithDatasource:[[DatasourceManager sharedInstance] googleSheetDS]
                                                         optionsFilter:self.optionsFilter];
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"GSList"];
    
    [self.optionsFilter addDesignFilter:[RONumberFilter filterWithFieldName:kHoja1Schema1ItemB
                                                                      value:self.searchDSDSItem.valor]];

    self.navigationItem.title = NSLocalizedString(@"GSList", nil);

    self.tableView.dataSource = self;
    self.tableView.delegate = self;

    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    if([self.tableView respondsToSelector:@selector(setCellLayoutMarginsFollowReadableWidth:)]) {
        self.tableView.cellLayoutMarginsFollowReadableWidth = NO;
    }
    
    [self.behaviors addObject:[ROSearchBehavior behaviorViewController:self]];
    [self.behaviors addObject:[ROFilterBehavior behaviorViewController:self filterControllerClass:[GSListFilterViewController class]]];
    [self.behaviors addObject:[RORefreshBehavior behaviorViewController:self]];

    for (id<ROBehavior> behavior in self.behaviors) {
        [behavior viewDidLoad];
    }

    [self updateViewConstraints];

    [self loadData];
}

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {

        _optionsFilter = [ROOptionsFilter new];
        _optionsFilter.sortColumn = kHoja1Schema1ItemC;
        _optionsFilter.sortAscending = NO;
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

#pragma mark - Private methods

- (void)configureCell:(ROTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {

    Hoja1Schema1Item *item = self.items[(NSUInteger)indexPath.row];
    cell.detailLabel.text = [NSString stringWithFormat:@"Valor = %@", [item.b ro_stringValue]];
}

#pragma mark - <UITableViewDataSource>

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    ROTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier];
    if (cell == nil) {

        cell = [[ROTableViewCell alloc] initWithROStyle:ROTableViewCellStyleTitleDescription
                                        reuseIdentifier:kReuseIdentifier];

        [cell.detailLabel ro_style:[ROTextStyle style:ROFontSizeStyleSmall
                                                bold:NO
                                              italic:NO
                                        textAligment:NSTextAlignmentLeft]];

        // You can customize the accessory icon ...
        UIImage *accessoryImage = [[UIImage imageNamed:@"arrow"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        UIImageView *accessoryImageView = [[UIImageView alloc] initWithImage:accessoryImage];
        accessoryImageView.tintColor = [[ROStyle sharedInstance] accentColor];
        cell.accessoryView = accessoryImageView;
    }
    cell.backgroundColor = [UIColor clearColor];

    [self configureCell:cell atIndexPath:indexPath];

    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.items count];
}

#pragma mark - <UITableViewDelegate>

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {

    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        cell.preservesSuperviewLayoutMargins = NO;
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]){
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    Hoja1Schema1Item *item = self.items[(NSUInteger)indexPath.row];
    GSListDetailViewController *destinationViewController = [GSListDetailViewController new];
    destinationViewController.item = item;
	destinationViewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:destinationViewController
                                         animated:YES];
}

@end

