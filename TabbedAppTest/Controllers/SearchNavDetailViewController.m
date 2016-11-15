//
//  SearchNavDetailViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "BooksViewController.h"
#import "CustomViewController.h"
#import "DatasourceManager.h"
#import "ListViewController.h"
#import "MapViewController.h"
#import "MenuViewController.h"
#import "RODeleteItemBehavior.h"
#import "RONavigationAction.h"
#import "ROOptionsFilter.h"
#import "RORefreshBehavior.h"
#import "ROShareBehavior.h"
#import "ROSingleDataLoader.h"
#import "ROTextStyle.h"
#import "ROUpdateItemBehavior.h"
#import "ROUtils.h"
#import "SearchDSDS.h"
#import "SearchDSDSItem.h"
#import "SearchNavDetailViewController.h"
#import "SearchNavFormViewController.h"

@interface SearchNavDetailViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@property (nonatomic, strong) UILabel *textLabel1;
@property (nonatomic, strong) UIButton *textLabel1Button;
@property (nonatomic, strong) UILabel *textLabel2;
@property (nonatomic, strong) UIButton *textLabel2Button;
@property (nonatomic, strong) UILabel *textLabel3;
@property (nonatomic, strong) UIButton *textLabel3Button;
@property (nonatomic, strong) UILabel *textLabel4;
@property (nonatomic, strong) UIButton *textLabel4Button;
@property (nonatomic, strong) UILabel *textLabel5;
@property (nonatomic, strong) UIButton *textLabel5Button;

@property (nonatomic, assign) BOOL didSetupConstraints;

- (void)setupConstraints;

@end

@implementation SearchNavDetailViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:(NSObject<RODatasource> *)[[DatasourceManager sharedInstance] searchDSDS]
                                                           optionsFilter:self.optionsFilter];
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"SearchNavDetail"];
	
	self.textLabel1 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel1];

	self.textLabel1Button = [self createButtonWithResource:@"arrow"];
    [self addSubview:self.textLabel1Button];

	
	self.textLabel2 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel2];

	self.textLabel2Button = [self createButtonWithResource:@"arrow"];
    [self addSubview:self.textLabel2Button];

	
	self.textLabel3 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel3];

	self.textLabel3Button = [self createButtonWithResource:@"arrow"];
    [self addSubview:self.textLabel3Button];

	
	self.textLabel4 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel4];

	self.textLabel4Button = [self createButtonWithResource:@"arrow"];
    [self addSubview:self.textLabel4Button];

	
	self.textLabel5 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel5];

	self.textLabel5Button = [self createButtonWithResource:@"arrow"];
    [self addSubview:self.textLabel5Button];


    [self.behaviors addObject:[ROShareBehavior behaviorViewController:self]];
    [self.behaviors addObject:[ROUpdateItemBehavior behaviorViewController:self crudControllerClass:[SearchNavFormViewController class]]];
    [self.behaviors addObject:[RODeleteItemBehavior behaviorViewController:self]];
    [self.behaviors addObject:[RORefreshBehavior behaviorViewController:self]];

    for (id<ROBehavior> behavior in self.behaviors) {
        [behavior viewDidLoad];
    }

    [self updateViewConstraints];

    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateViewConstraints {

    if (!self.didSetupConstraints) {
        self.didSetupConstraints = YES;
        [self setupConstraints];
    }
    [super updateViewConstraints];
}

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {

        _optionsFilter = [ROOptionsFilter new];
    
    }
    return _optionsFilter;
}

#pragma mark -Private methods

- (void)setupConstraints {

    NSDictionary *views = @{
							@"scrollView": self.scrollView,
							@"contentView": self.contentView,
							@"textLabel1": self.textLabel1,
							@"textLabel1Button": self.textLabel1Button,
							@"textLabel2": self.textLabel2,
							@"textLabel2Button": self.textLabel2Button,
							@"textLabel3": self.textLabel3,
							@"textLabel3Button": self.textLabel3Button,
							@"textLabel4": self.textLabel4,
							@"textLabel4Button": self.textLabel4Button,
							@"textLabel5": self.textLabel5,
							@"textLabel5Button": self.textLabel5Button,
    					  };

    NSDictionary *metrics = @{
        					  @"margin": @16,
        					  @"buttonSize": @25
    						};

    [self.contentView removeConstraints:self.contentConstraints];
    [self.scrollView removeConstraints:self.scrollConstraints];
    [self.view removeConstraints:self.mainConstraints];

	self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.mainConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[scrollView]|"
                                                                                      options:NSLayoutFormatDirectionLeadingToTrailing
                                                                                      metrics:metrics
                                                                                        views:views]];
    
    [self.mainConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollView]|"
                                                                                      options:NSLayoutFormatDirectionLeadingToTrailing
                                                                                      metrics:metrics
                                                                                        views:views]];
    
    self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[contentView(scrollView)]|"
																						options:NSLayoutFormatDirectionLeadingToTrailing
																						metrics:metrics
																						  views:views]];
    
    [self.scrollConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[contentView]|"
																						options:NSLayoutFormatDirectionLeadingToTrailing
																						metrics:metrics
																						  views:views]];

	self.textLabel1.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel1]-margin-[textLabel1Button(buttonSize)]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];


	self.textLabel1Button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textLabel1Button(buttonSize)]"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	[self.contentConstraints addObject:[NSLayoutConstraint constraintWithItem:self.textLabel1Button
																	attribute:NSLayoutAttributeCenterY
																	relatedBy:NSLayoutRelationEqual
																	   toItem:self.textLabel1
																	attribute:NSLayoutAttributeCenterY
																   multiplier:1.0
																	 constant:0]];

	self.textLabel2.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel2]-margin-[textLabel2Button(buttonSize)]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];


	self.textLabel2Button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textLabel2Button(buttonSize)]"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	[self.contentConstraints addObject:[NSLayoutConstraint constraintWithItem:self.textLabel2Button
																	attribute:NSLayoutAttributeCenterY
																	relatedBy:NSLayoutRelationEqual
																	   toItem:self.textLabel2
																	attribute:NSLayoutAttributeCenterY
																   multiplier:1.0
																	 constant:0]];

	self.textLabel3.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel3]-margin-[textLabel3Button(buttonSize)]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];


	self.textLabel3Button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textLabel3Button(buttonSize)]"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	[self.contentConstraints addObject:[NSLayoutConstraint constraintWithItem:self.textLabel3Button
																	attribute:NSLayoutAttributeCenterY
																	relatedBy:NSLayoutRelationEqual
																	   toItem:self.textLabel3
																	attribute:NSLayoutAttributeCenterY
																   multiplier:1.0
																	 constant:0]];

	self.textLabel4.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel4]-margin-[textLabel4Button(buttonSize)]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];


	self.textLabel4Button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textLabel4Button(buttonSize)]"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	[self.contentConstraints addObject:[NSLayoutConstraint constraintWithItem:self.textLabel4Button
																	attribute:NSLayoutAttributeCenterY
																	relatedBy:NSLayoutRelationEqual
																	   toItem:self.textLabel4
																	attribute:NSLayoutAttributeCenterY
																   multiplier:1.0
																	 constant:0]];

	self.textLabel5.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel5]-margin-[textLabel5Button(buttonSize)]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];


	self.textLabel5Button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textLabel5Button(buttonSize)]"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	[self.contentConstraints addObject:[NSLayoutConstraint constraintWithItem:self.textLabel5Button
																	attribute:NSLayoutAttributeCenterY
																	relatedBy:NSLayoutRelationEqual
																	   toItem:self.textLabel5
																	attribute:NSLayoutAttributeCenterY
																   multiplier:1.0
																	 constant:0]];

    [self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[textLabel1]-margin-[textLabel2]-margin-[textLabel3]-margin-[textLabel4]-margin-[textLabel5]-(>=margin)-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

    [self.view addConstraints:self.mainConstraints];
    [self.contentView addConstraints:self.contentConstraints];
    [self.scrollView addConstraints:self.scrollConstraints];
}

#pragma mark - <RODataDelegate>

- (void)loadData {
    [super loadData];
}

- (void)loadDataSuccess:(SearchDSDSItem *)item {
    [super loadDataSuccess:item];

    
	self.textLabel1.text = item.month;

	ListViewController *listViewController = [ListViewController new];
    listViewController.searchDSDSItem = item;
    RONavigationAction *listViewControllerAction = [RONavigationAction navigationActionWithRootViewController:self destinationValue:listViewController];

	[self setAction:listViewControllerAction view: self.textLabel1];
	[self setAction:listViewControllerAction view: self.textLabel1Button];

	self.textLabel2.text = item.location;

	MapViewController *mapViewController = [MapViewController new];
    mapViewController.searchDSDSItem = item;
    RONavigationAction *mapViewControllerAction = [RONavigationAction navigationActionWithRootViewController:self destinationValue:mapViewController];

	[self setAction:mapViewControllerAction view: self.textLabel2];
	[self setAction:mapViewControllerAction view: self.textLabel2Button];

	self.textLabel3.text = item.editorial;

	BooksViewController *booksViewController = [BooksViewController new];
    booksViewController.searchDSDSItem = item;
    RONavigationAction *booksViewControllerAction = [RONavigationAction navigationActionWithRootViewController:self destinationValue:booksViewController];

	[self setAction:booksViewControllerAction view: self.textLabel3];
	[self setAction:booksViewControllerAction view: self.textLabel3Button];

	self.textLabel4.text = @"Go to Menu";

	MenuViewController *menuViewController = [MenuViewController new];
    menuViewController.searchDSDSItem = item;
    RONavigationAction *menuViewControllerAction = [RONavigationAction navigationActionWithRootViewController:self destinationValue:menuViewController];

	[self setAction:menuViewControllerAction view: self.textLabel4];
	[self setAction:menuViewControllerAction view: self.textLabel4Button];

	self.textLabel5.text = [NSString stringWithFormat:@"Go to Custom + \"%@\"", item.custom];

	CustomViewController *customViewController = [CustomViewController new];
    customViewController.searchDSDSItem = item;
    RONavigationAction *customViewControllerAction = [RONavigationAction navigationActionWithRootViewController:self destinationValue:customViewController];

	[self setAction:customViewControllerAction view: self.textLabel5];
	[self setAction:customViewControllerAction view: self.textLabel5Button];

}

- (void)loadDataError:(ROError *)error {
    [super loadDataError:error];
}

@end

