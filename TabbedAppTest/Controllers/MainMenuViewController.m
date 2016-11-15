//
//  MainMenuViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "BooksViewController.h"
#import "CloudantViewController.h"
#import "CustomViewController.h"
#import "DSViewController.h"
#import "EXListViewController.h"
#import "GDListViewController.h"
#import "GSListViewController.h"
#import "ListViewController.h"
#import "MainMenuViewController.h"
#import "MapViewController.h"
#import "MenuViewController.h"
#import "NavFromListViewController.h"
#import "ROStyle.h"
#import "SearchNavViewController.h"
#import "UIImage+RO.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

- (instancetype)init {

    self = [super init];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

	MenuViewController *tab1 = [MenuViewController new];
	tab1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Menu" image:[UIImage imageNamed:@"DefaultMenuIcon.png"] tag:0];
 
	BooksViewController *tab2 = [BooksViewController new];
	tab2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"List" image:[UIImage imageNamed:@"NEWS859436.png"] tag:1];
 
	CustomViewController *tab3 = [CustomViewController new];
	tab3.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Custom" image:[UIImage imageNamed:@"FxVqzV0cWO614.png"] tag:2];
 
	ListViewController *tab4 = [ListViewController new];
	tab4.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Chart" image:[UIImage imageNamed:@"STATUS126124.png"] tag:3];
 
	MapViewController *tab5 = [MapViewController new];
	tab5.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Map" image:[UIImage imageNamed:@"DefaultMenuIcon.png"] tag:4];
 
	SearchNavViewController *tab6 = [SearchNavViewController new];
	tab6.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"SearchNav" image:[UIImage imageNamed:@"DefaultMenuIcon.png"] tag:4];
 
	NavFromListViewController *tab7 = [NavFromListViewController new];
	tab7.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Nav From List" image:[UIImage imageNamed:@"DefaultMenuIcon.png"] tag:4];
 
	DSViewController *tab8 = [DSViewController new];
	tab8.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"DataSources" image:[UIImage imageNamed:@"DefaultMenuIcon.png"] tag:4];
 

	self.viewControllers = @[
		[[UINavigationController alloc] initWithRootViewController:tab1],
		[[UINavigationController alloc] initWithRootViewController:tab2],
		[[UINavigationController alloc] initWithRootViewController:tab3],
		[[UINavigationController alloc] initWithRootViewController:tab4],
		[[UINavigationController alloc] initWithRootViewController:tab5],
		[[UINavigationController alloc] initWithRootViewController:tab6],
		[[UINavigationController alloc] initWithRootViewController:tab7],
		[[UINavigationController alloc] initWithRootViewController:tab8],
        
	];

	if (![UITabBar instancesRespondToSelector:@selector(unselectedItemTintColor)]) {
    
    	// Tint unselected item for iOS minor than 10
		for(UITabBarItem *item in self.tabBar.items) {
            
			item.image = [[item.selectedImage ro_tintColor:[[ROStyle sharedInstance] notSelectedColor]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
		}
	}
		
     
}
@end

