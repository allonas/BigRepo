//
//  CustomViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "CustomViewController.h"
#import "DatasourceManager.h"
#import "LocalDSDS.h"
#import "LocalDSDSSchemaItem.h"
#import "ROOptionsFilter.h"
#import "RORefreshBehavior.h"
#import "ROSingleDataLoader.h"
#import "ROStringFilter.h"
#import "ROStyle.h"
#import "ROTextStyle.h"
#import "ROUtils.h"
#import "SearchDSDSItem.h"
#import "UIImageView+RO.h"

@interface CustomViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@property (nonatomic, strong) UILabel *textLabel1;
@property (nonatomic, strong) UIImageView *imageView2;

@property (nonatomic, assign) BOOL didSetupConstraints;

- (void)setupConstraints;

@end

@implementation CustomViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:(NSObject<RODatasource> *)[[DatasourceManager sharedInstance] localDSDS]
                                                           optionsFilter:self.optionsFilter];
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Custom"];
    
    [self.optionsFilter addDesignFilter:[ROStringFilter filterWithFieldName:kLocalDSDSSchemaItemText
                                                                      value:self.searchDSDSItem.custom]];
	
	self.textLabel1 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel1];

	self.imageView2 = [self createImageView];
	[self addSubview:self.imageView2];


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
							@"imageView2": self.imageView2,
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
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel1]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[imageView2]|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						  views:views]];

    [self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[textLabel1]-margin-[imageView2]-(>=margin)-|"
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

- (void)loadDataSuccess:(LocalDSDSSchemaItem *)item {
    [super loadDataSuccess:item];

      
	self.textLabel1.text = item.text;

	[self.imageView2 ro_setImage:item.image imageError:[[ROStyle sharedInstance] noPhotoImage] containerView:self.view];

}

- (void)loadDataError:(ROError *)error {
    [super loadDataError:error];
}

@end

