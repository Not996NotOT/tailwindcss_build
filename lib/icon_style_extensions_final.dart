import 'package:flutter/material.dart';

import 'base_styles.dart';

/// Icon组件的样式扩展 - 重构版
/// 使用BaseStyles避免重复代码
extension IconStyleExt on Icon {
  
  // ===== 私有辅助方法 =====
  Icon _applyProperty({
    double? size,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) {
    return Icon(
      icon,
      size: size ?? this.size,
      color: color ?? this.color,
      semanticLabel: semanticLabel ?? this.semanticLabel,
      textDirection: textDirection ?? this.textDirection,
    );
  }

  // ===== 基础样式方法 =====
  Icon iconColor(Color color) => _applyProperty(color: color);
  Icon iconSize(double size) => _applyProperty(size: size);

  // ===== 语义大小（使用BaseStyles常量） =====
  Icon iconXs() => iconSize(BaseStyles.iconXs);
  Icon iconSm() => iconSize(BaseStyles.iconSm);
  Icon iconBase() => iconSize(BaseStyles.iconBase);
  Icon iconLg() => iconSize(BaseStyles.iconLg);
  Icon iconXl() => iconSize(BaseStyles.iconXl);
  Icon icon2Xl() => iconSize(BaseStyles.icon2Xl);
  Icon icon3Xl() => iconSize(BaseStyles.icon3Xl);
  Icon icon4Xl() => iconSize(BaseStyles.icon4Xl);
  Icon icon5Xl() => iconSize(BaseStyles.icon5Xl);
  Icon icon6Xl() => iconSize(BaseStyles.icon6Xl);

  // ===== 颜色系统（使用BaseStyles常量） =====
  
  // 基础颜色
  Icon iconWhite() => iconColor(BaseStyles.white);
  Icon iconBlack() => iconColor(BaseStyles.black);
  
  // 灰色系
  Icon iconSlate50() => iconColor(BaseStyles.slate50);
  Icon iconSlate100() => iconColor(BaseStyles.slate100);
  Icon iconSlate200() => iconColor(BaseStyles.slate200);
  Icon iconSlate300() => iconColor(BaseStyles.slate300);
  Icon iconSlate400() => iconColor(BaseStyles.slate400);
  Icon iconSlate500() => iconColor(BaseStyles.slate500);
  Icon iconSlate600() => iconColor(BaseStyles.slate600);
  Icon iconSlate700() => iconColor(BaseStyles.slate700);
  Icon iconSlate800() => iconColor(BaseStyles.slate800);
  Icon iconSlate900() => iconColor(BaseStyles.slate900);
  Icon iconSlate950() => iconColor(BaseStyles.slate950);

  Icon iconGray50() => iconColor(BaseStyles.gray50);
  Icon iconGray100() => iconColor(BaseStyles.gray100);
  Icon iconGray200() => iconColor(BaseStyles.gray200);
  Icon iconGray300() => iconColor(BaseStyles.gray300);
  Icon iconGray400() => iconColor(BaseStyles.gray400);
  Icon iconGray500() => iconColor(BaseStyles.gray500);
  Icon iconGray600() => iconColor(BaseStyles.gray600);
  Icon iconGray700() => iconColor(BaseStyles.gray700);
  Icon iconGray800() => iconColor(BaseStyles.gray800);
  Icon iconGray900() => iconColor(BaseStyles.gray900);
  Icon iconGray950() => iconColor(BaseStyles.gray950);

  // 红色系
  Icon iconRed50() => iconColor(BaseStyles.red50);
  Icon iconRed100() => iconColor(BaseStyles.red100);
  Icon iconRed200() => iconColor(BaseStyles.red200);
  Icon iconRed300() => iconColor(BaseStyles.red300);
  Icon iconRed400() => iconColor(BaseStyles.red400);
  Icon iconRed500() => iconColor(BaseStyles.red500);
  Icon iconRed600() => iconColor(BaseStyles.red600);
  Icon iconRed700() => iconColor(BaseStyles.red700);
  Icon iconRed800() => iconColor(BaseStyles.red800);
  Icon iconRed900() => iconColor(BaseStyles.red900);
  Icon iconRed950() => iconColor(BaseStyles.red950);

  // 蓝色系
  Icon iconBlue50() => iconColor(BaseStyles.blue50);
  Icon iconBlue100() => iconColor(BaseStyles.blue100);
  Icon iconBlue200() => iconColor(BaseStyles.blue200);
  Icon iconBlue300() => iconColor(BaseStyles.blue300);
  Icon iconBlue400() => iconColor(BaseStyles.blue400);
  Icon iconBlue500() => iconColor(BaseStyles.blue500);
  Icon iconBlue600() => iconColor(BaseStyles.blue600);
  Icon iconBlue700() => iconColor(BaseStyles.blue700);
  Icon iconBlue800() => iconColor(BaseStyles.blue800);
  Icon iconBlue900() => iconColor(BaseStyles.blue900);
  Icon iconBlue950() => iconColor(BaseStyles.blue950);

  // 绿色系
  Icon iconGreen50() => iconColor(BaseStyles.green50);
  Icon iconGreen100() => iconColor(BaseStyles.green100);
  Icon iconGreen200() => iconColor(BaseStyles.green200);
  Icon iconGreen300() => iconColor(BaseStyles.green300);
  Icon iconGreen400() => iconColor(BaseStyles.green400);
  Icon iconGreen500() => iconColor(BaseStyles.green500);
  Icon iconGreen600() => iconColor(BaseStyles.green600);
  Icon iconGreen700() => iconColor(BaseStyles.green700);
  Icon iconGreen800() => iconColor(BaseStyles.green800);
  Icon iconGreen900() => iconColor(BaseStyles.green900);
  Icon iconGreen950() => iconColor(BaseStyles.green950);
}


