//
//  NavFromListViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//
#import "DatasourceManager.h"
#import "NavFromListViewController.h"
#import "ROBehavior.h"
#import "ROItemCell.h"
#import "RONavigationAction.h"
#import "ROStyle.h"
#import "ROTableViewCell.h"
#import "ROUtils.h"
#import "ToChartViewController.h"
#import "ToCustomViewController.h"
#import "ToListViewController.h"
#import "ToMapViewController.h"
#import "ToMenuViewController.h"

@interface NavFromListViewController ()

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end

@implementation NavFromListViewController

static NSString * const kReuseIdentifier = @"Cell";

- (instancetype)init {

    self = [super init];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] log:@"NavFromList"];

	self.navigationItem.title = NSLocalizedString(@"Nav From List", nil);
	
    self.items = @[                       
                       [[ROItemCell alloc] initWithText1:@"To List"
                                         atImageResource:@"DefaultMenuIcon.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[ToListViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"To Map"
                                         atImageResource:@"DefaultMenuIcon.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[ToMapViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"To Chart"
                                         atImageResource:@"DefaultMenuIcon.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[ToChartViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"To Custom"
                                         atImageResource:@"DefaultMenuIcon.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[ToCustomViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"To Menu"
                                         atImageResource:@"DefaultMenuIcon.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[ToMenuViewController class]]]
                  ];

    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {

        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    if([self.tableView respondsToSelector:@selector(setCellLayoutMarginsFollowReadableWidth:)]) {

        self.tableView.cellLayoutMarginsFollowReadableWidth = NO;
    }
    

    for (id<ROBehavior> behavior in self.behaviors) {
        [behavior viewDidLoad];
    }
    [self updateViewConstraints];
}

#pragma mark - Private methods

- (void)configureCell:(ROTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {

    ROItemCell *item = self.items[(NSUInteger)indexPath.row];
    cell.titleLabel.text = item.text1;

    cell.userInteractionEnabled = NO;
    cell.accessoryView = nil;
    cell.accessoryType = UITableViewCellAccessoryNone;
    if (item.action && [item.action canDoAction]) {

        cell.userInteractionEnabled = YES;
        // You can customize the accessory icon ...
        UIImage *accessoryImage = [[UIImage imageNamed:@"arrow"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        UIImageView *accessoryImageView = [[UIImageView alloc] initWithImage:accessoryImage];
        accessoryImageView.tintColor = [[ROStyle sharedInstance] accentColor];
        cell.accessoryView = accessoryImageView;
    }
}

#pragma mark - <UITableViewDataSource>

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ROTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier];
    if (cell == nil) {
        
        cell = [[ROTableViewCell alloc] initWithROStyle:ROTableViewCellStyleTitle
                                        reuseIdentifier:kReuseIdentifier]; 
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
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {

        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ROItemCell *item = self.items[(NSUInteger)indexPath.row];
    if (item.action && [item.action canDoAction]) {
    
        [item.action doAction];
    }
}

@end

