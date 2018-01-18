//
//  LCJConst.h
//  LCJMainProject
//
//  Created by lichuanjun on 2017/10/30.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

#ifndef LCJConst_h
#define LCJConst_h

/**
 字符串
 */


/**
 颜色
 */
#define LCJWhiteColor [UIColor whiteColor] //白色
#define LCJBlackColor [UIColor blackColor] //黑色
#define LCJClearColor [UIColor clearColor] //透明色
#define LCJCommonTextColor LCJHexColor(0x3d4c4f) //一般文字颜色
#define LCJLightTextColor LCJHexColor(0xa1a1a1) //浅色文字
#define LCJDisabledTextColor


/**
 尺寸
 */
#define LCJScreenHeight [UIScreen mainScreen].bounds.size.height //屏幕高度
#define LCJScreenWidth [UIScreen mainScreen].bounds.size.width //屏幕宽度
#define LCJPadding 15 //间隔
#define LCJRadius 6 //圆角
#define LCJHeight(height) (height * LCJScreenHeight / 667) //高度缩放
#define LCJWidth(width) (width * LCJScreenHeight / 667) //宽度缩放


//首页
#define LCJGymInfoViewHeight LCJHeight(315)
#define LCJZoomCycleImageViewHeight LCJHeight(175)
#define LCJFitnessStatusViewHeight LCJHeight(225)
#define LCJGymClassCellHeight LCJHeight(255)
#define LCJHomeTitleHeight LCJHeight(50)


/**
 字体
 */
#define LCJThinFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightUltraLight]
#define LCJCommonFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightRegular]
#define LCJBlodFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightBold]

#define LCJCommonTextFontSize 15
#define LCJLargeTextFontSize 20
#define LCJSmallTextFontSize 11

#endif /* LCJConst_h */
