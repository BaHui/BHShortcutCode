##Xcode快捷代码

----------

####简介
>   **开发中Xcode常用的快捷代码块, 提高开发效率.** 

#### 添加:  
1. 关闭Xcode;
2. 将Demo中的 `CodeSnippets` 文件夹下的文件拷贝到 **~/Library/Developer/Xcode/UserData/CodeSnippets**, 若本地没有`CodeSnippets`文件夹,  则新建一个文件夹, 名字为`CodeSnippets` 然后把文件拷贝在这个文件夹下.
3. 重新启动Xcode, 可以看到工具栏多出来新增的代码块.

#### 自定义内容:  
```objectivec
// 静态字符: static_string
static NSString *const <#StringName#> = <#StringValue#>;

// 静态数值: static_basic
static const <#BasicType#> <#BasicName#> = <#BasicValue#>;
```
```objectivec
// Strong 类型属性: property_strong
@property (nonatomic, strong) <#Class#> *<#object#>;

// Assign 类型属性: property_assign
@property (nonatomic, assign) <#Class#> <#property#>;

// Copy 类型属性: property_copy
@property (nonatomic, copy) <#Class#> *<#name#>;

// Weak 类型属性: property_weak
@property (nonatomic, weak) <#Class#> *<#object#>;

// Delegate 类型属性: property_delegate
@property (nonatomic, weak) id <<#protocol#>> delegate;
```

```objectivec
// Mark生命周期: mark_VCLifeCycle
#pragma mark - ViewController LifeCycle

// Mark按钮点击: mark_IBAction
#pragma mark - IBAction Methods

// Mark公开方法: mark_Public Methods
#pragma mark - Public Methods

// Mark私有方法: mark_Private Methods
#pragma mark - Private Methods

// Mark自定义: mark_Normal
#pragma mark - <#description#>

// Mark滚动视图代理: mark_UIScrollViewDelegate

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

}
*/

// Mark表代理: mark_UITableViewDelegate
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
```

```objectivec
// GCD回到主线程: gcd_main_queue
dispatch_async(dispatch_get_main_queue(), ^{
<#code#>
});

// GCD延时: gcd_after
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(<#delayInSeconds#> * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
<#code to be executed after a specified delay#>
});

// GCD单例: gcd_onceToken
+ (instancetype)sharedInstance {
static <#Class#> *<#object#> = nil;

static dispatch_once_t onceToken;
dispatch_once(&onceToken, ^{
<#object#> = [[<#Class#> alloc] init];
});

return <#object#>;
}
```
```objectivec
// 枚举: type_enum
typedef NS_ENUM(NSInteger, Type) {
Type = 0, // <#description#>
Type = 1, // <#description#>
Type = 2, // <#description#>
};

// 有返回值的Block: block_return
typedef void (^<#BlockName#>) (<#Class#> *<#object#>);

// 无返回的Block: block_void
typedef void (^<#BlockName#>) (void);


// 表内容偏移: tableView_inset
self.tableView.contentInset = UIEdgeInsetsMake(<#CGFloat top#>, <#CGFloat left#>, <#CGFloat bottom#>, <#CGFloat right#>);
```
> 提示: 快捷方式的命名可以自定义,  将Demo中的文件快捷方式名称改为符合自己编码习惯的名称. 

####使用举例:
以定义一个有返回值得Block为例子:
在Xcode中输入 `block`

回车快捷方式便可得到:
`typedef void (^<#BlockName#>) (<#Class#> *<#object#>);`


#### 交流与建议
- GitHub：<https://github.com/BaHui>
- 邮  箱：<qiaobahuiyouxiang@163.com>
