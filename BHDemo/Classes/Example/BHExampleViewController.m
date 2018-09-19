//
//  BHExampleViewController.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/9/18.
//  Copyright © 2018年 QiaoBaHui. All rights reserved.
//

#import "BHExampleViewController.h"

static NSString *const DEMO_VIEWS_STORYBOARD_NAME = @"DemoViews";

@implementation BHExampleViewController

+ (instancetype)create {
  UIStoryboard *demoViewsStoryboard = [UIStoryboard storyboardWithName:DEMO_VIEWS_STORYBOARD_NAME bundle:nil];
  return [demoViewsStoryboard instantiateViewControllerWithIdentifier:NSStringFromClass([BHExampleViewController class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
  [super viewDidLoad];

//  添加路径 : ~/Library/Developer/Xcode/UserData/CodeSnippets


// ####################### Static ##############################

  /* 静态字符: static_string
   * static NSString *const <#StringName#> = <#StringValue#>;
   */

  /* 静态数值: static_basic
   * static const <#BasicType#> <#BasicName#> = <#BasicValue#>;
   */


// ############################## Property ###########################

  /* Strong 类型属性: property_strong
   * @property (nonatomic, strong) <#Class#> *<#object#>;
   */


  /* Assign 类型属性: property_assign
   * @property (nonatomic, assign) <#Class#> <#property#>;
   */


  /* Copy 类型属性: property_copy
   * @property (nonatomic, copy) <#Class#> *<#name#>;
   */


  /* Weak 类型属性: property_weak
   * @property (nonatomic, weak) <#Class#> *<#object#>;
   */


  /* Delegate 类型属性: property_delegate
   * @property (nonatomic, weak) id <<#protocol#>> delegate;
   */

// ############################## Mark ################################

  /* Mark生命周期: mark_VCLifeCycle
   * #pragma mark - ViewController LifeCycle
   */


  /* Mark按钮点击: mark_IBAction
   * #pragma mark - IBAction Methods
   */


  /* Mark公开方法: mark_Public Methods
   * #pragma mark - Public Methods
   */


  /* Mark私有方法: mark_Private Methods
   * #pragma mark - Private Methods
   */


  /* Mark自定义: mark_Normal
   * #pragma mark - <#description#>
   */


  /* Mark滚动视图代理: mark_UIScrollViewDelegate
   #pragma mark - UIScrollViewDelegate

   - (void)scrollViewDidScroll:(UIScrollView *)scrollView {

   }
   */


  /* Mark表代理: mark_UITableViewDelegate

   #pragma mark - UITableViewDataSource

   - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   return <#Sections#>;
   }

   - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   return <#RowCount#>;
   }

   - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   <#CellClass#> *<#cellObject#> = [tableView dequeueReusableCellWithIdentifier:<#CellIdentifier#> forIndexPath:indexPath];

   return <#cellObject#>;
   }

   #pragma mark - UITableViewDelegate

   - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
   return <#HeaderHight#>;
   }

   - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
   return <#RowHeight#>;
   }

   - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
   return <#HeaderView#>;
   }

   - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   [tableView deselectRowAtIndexPath:indexPath animated:YES];
   }

   */

// ########################## GCD Method ################################


  /* GCD回到主线程: gcd_main_queue
   dispatch_async(dispatch_get_main_queue(), ^{
   <#code#>
   });
   */

  /* GCD延时: gcd_after
   dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(<#delayInSeconds#> * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
   <#code to be executed after a specified delay#>
   });
   */


  /* GCD单例: gcd_onceToken
   + (instancetype)sharedInstance {
   static <#Class#> *<#object#> = nil;

   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
   <#object#> = [[<#Class#> alloc] init];
   });

   return <#object#>;
   }
   */

// ########################## Others ################################

  /* 枚举: type_enum
   typedef NS_ENUM(NSInteger, Type) {
   Type = 0, // <#description#>
   Type = 1, // <#description#>
   Type = 2, // <#description#>
   };
   */

  /* 有返回值的Block: block_return
   typedef void (^<#BlockName#>) (<#Class#> *<#object#>);
   */

  /* 无返回的Block: block_void
   typedef void (^<#BlockName#>) (void);
   */

  /* 表内容偏移: tableView_inset
   self.tableView.contentInset = UIEdgeInsetsMake(<#CGFloat top#>, <#CGFloat left#>, <#CGFloat bottom#>, <#CGFloat right#>);
   */

}

@end
