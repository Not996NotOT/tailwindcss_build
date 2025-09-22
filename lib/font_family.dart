import 'package:flutter/material.dart';

/// Tailwind CSS Font Family utilities for Flutter
/// Utilities for controlling the font family of an element.
extension FontFamilyExt on Widget {
  
  // === font-sans ===
  /// font-sans -> font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
  Widget fontSans() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'SF Pro Text', // iOS系统字体
        ),
        child: this,
      );
  
  // === font-serif ===
  /// font-serif -> font-family: Georgia, Cambria, "Times New Roman", Times, serif;
  Widget fontSerif() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Times New Roman',
        ),
        child: this,
      );
  
  // === font-mono ===
  /// font-mono -> font-family: ui-monospace, SFMono-Regular, "SF Mono", Consolas, "Liberation Mono", Menlo, monospace;
  Widget fontMono() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'SF Mono', // 等宽字体
        ),
        child: this,
      );

  // === 常用字体家族 ===
  
  /// Roboto字体 (Android默认字体)
  Widget fontRoboto() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Roboto',
        ),
        child: this,
      );
  
  /// Helvetica字体
  Widget fontHelvetica() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Helvetica',
        ),
        child: this,
      );
  
  /// Arial字体
  Widget fontArial() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Arial',
        ),
        child: this,
      );
  
  /// Georgia字体 (衬线字体)
  Widget fontGeorgia() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Georgia',
        ),
        child: this,
      );
  
  /// Times New Roman字体 (衬线字体)
  Widget fontTimes() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Times New Roman',
        ),
        child: this,
      );
  
  /// Courier New字体 (等宽字体)
  Widget fontCourier() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Courier New',
        ),
        child: this,
      );
  
  /// Verdana字体
  Widget fontVerdana() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Verdana',
        ),
        child: this,
      );
  
  /// Trebuchet MS字体
  Widget fontTrebuchet() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Trebuchet MS',
        ),
        child: this,
      );
  
  /// Impact字体
  Widget fontImpact() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Impact',
        ),
        child: this,
      );
  
  /// Comic Sans MS字体
  Widget fontComicSans() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Comic Sans MS',
        ),
        child: this,
      );

  // === 中文字体 ===
  
  /// 苹方字体 (macOS/iOS中文字体)
  Widget fontPingFang() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'PingFang SC',
        ),
        child: this,
      );
  
  /// 微软雅黑字体 (Windows中文字体)
  Widget fontMicrosoftYaHei() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Microsoft YaHei',
        ),
        child: this,
      );
  
  /// 思源黑体
  Widget fontSourceHanSans() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Source Han Sans SC',
        ),
        child: this,
      );
  
  /// 思源宋体
  Widget fontSourceHanSerif() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Source Han Serif SC',
        ),
        child: this,
      );
  
  /// 华文黑体
  Widget fontSTHeiti() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'STHeiti',
        ),
        child: this,
      );
  
  /// 华文宋体
  Widget fontSTSong() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'STSong',
        ),
        child: this,
      );

  // === Google Fonts 常用字体 ===
  
  /// Poppins字体 (现代无衬线)
  Widget fontPoppins() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Poppins',
        ),
        child: this,
      );
  
  /// Montserrat字体 (现代无衬线)
  Widget fontMontserrat() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Montserrat',
        ),
        child: this,
      );
  
  /// Open Sans字体 (人文主义无衬线)
  Widget fontOpenSans() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Open Sans',
        ),
        child: this,
      );
  
  /// Lato字体 (人文主义无衬线)
  Widget fontLato() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Lato',
        ),
        child: this,
      );
  
  /// Nunito字体 (圆角无衬线)
  Widget fontNunito() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Nunito',
        ),
        child: this,
      );
  
  /// Inter字体 (现代界面字体)
  Widget fontInter() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Inter',
        ),
        child: this,
      );
  
  /// Playfair Display字体 (优雅衬线)
  Widget fontPlayfair() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Playfair Display',
        ),
        child: this,
      );
  
  /// Merriweather字体 (易读衬线)
  Widget fontMerriweather() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Merriweather',
        ),
        child: this,
      );
  
  /// Oswald字体 (紧凑无衬线)
  Widget fontOswald() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Oswald',
        ),
        child: this,
      );
  
  /// Source Sans Pro字体 (Adobe字体)
  Widget fontSourceSansPro() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Source Sans Pro',
        ),
        child: this,
      );
  
  /// Raleway字体 (优雅无衬线)
  Widget fontRaleway() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Raleway',
        ),
        child: this,
      );
  
  /// Ubuntu字体 (Ubuntu系统字体)
  Widget fontUbuntu() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Ubuntu',
        ),
        child: this,
      );

  // === 编程字体 ===
  
  /// Fira Code字体 (带连字的编程字体)
  Widget fontFiraCode() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Fira Code',
        ),
        child: this,
      );
  
  /// Source Code Pro字体 (Adobe编程字体)
  Widget fontSourceCodePro() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Source Code Pro',
        ),
        child: this,
      );
  
  /// JetBrains Mono字体 (JetBrains编程字体)
  Widget fontJetBrainsMono() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'JetBrains Mono',
        ),
        child: this,
      );
  
  /// Inconsolata字体 (编程字体)
  Widget fontInconsolata() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFamily: 'Inconsolata',
        ),
        child: this,
      );

  // === 自定义字体 ===
  
  /// 自定义字体家族
  Widget fontCustom(String fontFamily) => DefaultTextStyle.merge(
        style: TextStyle(
          fontFamily: fontFamily,
        ),
        child: this,
      );
  
  /// 带备用字体的自定义字体
  Widget fontCustomWithFallback(String fontFamily, List<String> fontFamilyFallback) => DefaultTextStyle.merge(
        style: TextStyle(
          fontFamily: fontFamily,
          fontFamilyFallback: fontFamilyFallback,
        ),
        child: this,
      );

  // === 系统字体检测 ===
  
  /// 系统默认字体 (根据平台自动选择)
  Widget fontSystem() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(
            fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
          ),
          child: this,
        ),
      );
  
  /// 根据平台选择最佳字体
  Widget fontPlatform() {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 在实际应用中，你可以使用 Platform.isIOS, Platform.isAndroid 等
        // 这里使用Theme来模拟平台检测
        final platform = Theme.of(context).platform;
        
        String fontFamily;
        switch (platform) {
          case TargetPlatform.iOS:
            fontFamily = 'SF Pro Text';
            break;
          case TargetPlatform.android:
            fontFamily = 'Roboto';
            break;
          case TargetPlatform.macOS:
            fontFamily = 'SF Pro Text';
            break;
          case TargetPlatform.windows:
            fontFamily = 'Segoe UI';
            break;
          case TargetPlatform.linux:
            fontFamily = 'Ubuntu';
            break;
          default:
            fontFamily = 'Roboto';
        }
        
        return DefaultTextStyle.merge(
          style: TextStyle(fontFamily: fontFamily),
          child: this,
        );
      },
    );
  }
}
