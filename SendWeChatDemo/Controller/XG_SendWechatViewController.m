//
//  SendWechatViewController.m
//  WeChat
//
//  Created by Xiaogang on 2018/5/1.
//  Copyright © 2018年 Xiaogang. All rights reserved.
//

#import "XG_SendWechatViewController.h"
#import "XG_SendImageCollectionView.h"
#import "QBImagePickerController.h"
#import "Masonry.h"

static int const MaxImagesCount = 9; //表示能够选择的最大图片数
@interface XG_SendWechatViewController ()

@property (nonatomic,strong) XG_SendImageCollectionView *collectionView;
@end

@implementation XG_SendWechatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"发表朋友圈";
    [self initUI];
    // Do any additional setup after loading the view.
}
-(void)initUI{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancelButtonlick)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"发表" style:UIBarButtonItemStylePlain target:self action:@selector(sendButtonlick)];
    
    [self.view addSubview:self.collectionView];
    [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        if (@available(iOS 11.0, *)) {
            make.edges.mas_equalTo(self.view.safeAreaInsets);
        } else {
            make.edges.mas_equalTo(self.view);
        }
    }];
}
-(void)cancelButtonlick{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)sendButtonlick{
    
}
#pragma mark -XG_SendImageCollectionViewDelegate
-(void)needSelectSendImages{

}
-(void)needShowCurrentImageWithIndex:(NSIndexPath *)indexPath{
    
}
#pragma mark -Lazy
-(XG_SendImageCollectionView *)collectionView{
    if(!_collectionView){
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[XG_SendImageCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    }
    return _collectionView;
}

@end
