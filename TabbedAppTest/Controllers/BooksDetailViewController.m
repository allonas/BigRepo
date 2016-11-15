//
//  BooksDetailViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "BooksDetailViewController.h"
#import "BooksFormViewController.h"
#import "DatasourceManager.h"
#import "ListDSDS.h"
#import "ListDSDSItem.h"
#import "ListViewController.h"
#import "NSDate+RO.h"
#import "NSNumber+RO.h"
#import "RODeleteItemBehavior.h"
#import "RONavigationAction.h"
#import "ROOptionsFilter.h"
#import "RORefreshBehavior.h"
#import "ROShareBehavior.h"
#import "ROSingleDataLoader.h"
#import "ROTextStyle.h"
#import "ROUpdateItemBehavior.h"
#import "ROUtils.h"

@interface BooksDetailViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@property (nonatomic, strong) UILabel *textLabel1;
@property (nonatomic, strong) UIButton *textLabel1Button;
@property (nonatomic, strong) UILabel *textLabel2;
@property (nonatomic, strong) UILabel *textLabel3;
@property (nonatomic, strong) UILabel *textLabel4;
@property (nonatomic, strong) UILabel *textLabel5;
@property (nonatomic, strong) UILabel *textLabel6;
@property (nonatomic, strong) UILabel *textLabel7;
@property (nonatomic, strong) UILabel *textLabel8;
@property (nonatomic, strong) UILabel *textLabel9;
@property (nonatomic, strong) UILabel *textLabel10;
@property (nonatomic, strong) UILabel *textLabel11;

@property (nonatomic, assign) BOOL didSetupConstraints;

- (void)setupConstraints;

@end

@implementation BooksDetailViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:(NSObject<RODatasource> *)[[DatasourceManager sharedInstance] listDSDS]
                                                           optionsFilter:self.optionsFilter];
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"BooksDetail"];
	
	self.textLabel1 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel1];

	self.textLabel1Button = [self createButtonWithResource:@"arrow"];
    [self addSubview:self.textLabel1Button];

	
	self.textLabel2 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel2];

	
	self.textLabel3 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel3];

	
	self.textLabel4 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel4];

	
	self.textLabel5 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel5];

	
	self.textLabel6 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel6];

	
	self.textLabel7 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel7];

	
	self.textLabel8 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel8];

	
	self.textLabel9 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel9];

	
	self.textLabel10 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel10];

	
	self.textLabel11 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel11];


    [self.behaviors addObject:[ROShareBehavior behaviorViewController:self]];
    [self.behaviors addObject:[ROUpdateItemBehavior behaviorViewController:self crudControllerClass:[BooksFormViewController class]]];
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
							@"textLabel3": self.textLabel3,
							@"textLabel4": self.textLabel4,
							@"textLabel5": self.textLabel5,
							@"textLabel6": self.textLabel6,
							@"textLabel7": self.textLabel7,
							@"textLabel8": self.textLabel8,
							@"textLabel9": self.textLabel9,
							@"textLabel10": self.textLabel10,
							@"textLabel11": self.textLabel11,
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
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel2]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel3.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel3]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel4.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel4]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel5.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel5]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel6.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel6]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel7.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel7]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel8.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel8]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel9.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel9]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel10.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel10]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel11.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel11]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						  views:views]];

    [self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[textLabel1]-margin-[textLabel2]-margin-[textLabel3]-margin-[textLabel4]-margin-[textLabel5]-margin-[textLabel6]-margin-[textLabel7]-margin-[textLabel8]-margin-[textLabel9]-margin-[textLabel10]-margin-[textLabel11]-(>=margin)-|"
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

- (void)loadDataSuccess:(ListDSDSItem *)item {
    [super loadDataSuccess:item];

    
	self.textLabel1.text = [item.fECHA ro_datetimeStringValue];

	ListViewController *listViewController = [ListViewController new];
    listViewController.listDSDSItem = item;
    RONavigationAction *listViewControllerAction = [RONavigationAction navigationActionWithRootViewController:self destinationValue:listViewController];

	[self setAction:listViewControllerAction view: self.textLabel1];
	[self setAction:listViewControllerAction view: self.textLabel1Button];

	self.textLabel2.text = item.aUTOR;

	self.textLabel3.text = item.tITULO;

	self.textLabel4.text = item.eDITORIAL;

	self.textLabel5.text = item.eDICION;

	self.textLabel6.text = item.sOLICITANTE;

	self.textLabel7.text = item.cORREO;

	self.textLabel8.text = item.tELEFONO;

	self.textLabel9.text = item.iNSTITUTO;

	self.textLabel10.text = item.aSIGNATURA;

	self.textLabel11.text = [item.aLUMNOS ro_stringValue];

}

- (void)loadDataError:(ROError *)error {
    [super loadDataError:error];
}

@end

