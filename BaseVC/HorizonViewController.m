

#import "HorizonViewController.h"

@interface HorizonViewController ()

@end

@implementation HorizonViewController

-(void) backAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self createNavWithTitle:@"横屏显示" selectNavBgImgIndex:3 selectedTitleColorIndex:3 createMenuItem:^UIView *(int nIndex) {
        
        if(nIndex == 0) {
            
            //可添加控件 比如返回按钮。。。
            
            UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            backBtn.frame = CGRectMake(0, 0, 70, 44);
            [backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
            [backBtn setTitle:@"返回" forState:UIControlStateNormal];
            [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            backBtn.titleLabel.font = [UIFont systemFontOfSize:14];
            return backBtn;
            
        }
        if(nIndex == 1) {
            //同上
        }
        
        return nil;
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 横屏处理
- (BOOL) shouldAutorotateToInterfaceOrientation:
(UIInterfaceOrientation)toInterfaceOrientation {
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeRight;
}

@end
