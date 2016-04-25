# CustomSeperatorInsetTableView
解决难以统一配置`UITableView`的`seperatorInset`问题


### before

以往可能需要在UIViewController里写：

```
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    // Remove seperator inset
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    // Prevent the cell from inheriting the Table View's margin settings
    if ([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)]) {
        [cell setPreservesSuperviewLayoutMargins:NO];
    }
    
    // Explictly set your cell's layout margins
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}
```

### now

现在只需继承`CustomSeperatorInsetTableView`，代码配置`mySeparatorInset`为你希望的值，默认值`UIEdgeInsetsZero`，

另外你也可以在`IB`里面修改UITableView的Class改为`CustomSeperatorInsetTableView`，右侧填入你希望的`insetLeft`和`insetRight`值，不填默认为0

![](https://res.cloudinary.com/boolron/image/upload/v1461575625/bgihsoba17lcdh7fhhaz.png)


### install

add this to Podfile

```
pod 'CustomSeperatorInsetTableView', '~> 0.0.2'
```




