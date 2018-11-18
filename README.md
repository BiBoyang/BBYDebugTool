# BBYDebugTool
0.1版本，用来打印对象的继承方法，控制器的属性和方法列表。
```
    NSLog(@"-----%@",[[strA class]BBY_SuperClassLine]);
    NSLog(@"-----%@",[[strB class]BBY_SuperClassLine]);
    NSLog(@"-----%@",[[strC class]BBY_SuperClassLine]);
    
    [self BBY_LogProperty];
    [self BBY_LogMethod];
```

打印结果为
```
2018-10-18 18:42:32.610513+0800 BBYDebugTool[27329:30599820] ----- -> NSTaggedPointerString -> NSString -> NSObject
2018-10-18 18:42:32.610818+0800 BBYDebugTool[27329:30599820] ----- -> __NSCFConstantString -> __NSCFString -> NSMutableString -> NSString -> NSObject
2018-10-18 18:42:32.610983+0800 BBYDebugTool[27329:30599820] ----- -> __NSCFString -> NSMutableString -> NSString -> NSObject
2018-10-18 18:42:32.611415+0800 BBYDebugTool[27329:30599820] Property is @property (nonatomic, copy) Block play
2018-10-18 18:42:32.611769+0800 BBYDebugTool[27329:30599820] Property is @property (nonatomic, copy) NSString* string
2018-10-18 18:42:32.612052+0800 BBYDebugTool[27329:30599820] Property is @property (nonatomic, strong) UIButton* button
2018-10-18 18:42:32.612405+0800 BBYDebugTool[27329:30599820] Method List is (
    "setPlay:",
    ".cxx_destruct",
    "setString:",
    string,
    viewDidLoad,
    play,
    "setButton:",
    button
)
```

或者在LLDB中直接po对应的方法
```
(lldb) po [[strA class]BBY_SuperClassLine]
 -> NSTaggedPointerString -> NSString -> NSObject
```