# Tailwind CSS Build for Flutter

[English](./README.md) | [简体中文](./README_CN.md) | [日本語](./README_JP.md)

Tailwind CSSのユーティリティクラスの強力さと利便性をFlutter開発にもたらす包括的なFlutterパッケージです。このライブラリは、馴染み深いTailwind CSSクラス名でウィジェットをスタイリングするためのユーティリティ拡張を提供し、レスポンシブで一貫性のあるUIを簡単に構築できます。

## 🚀 機能

### レイアウト・ポジショニング
- **Flexbox**: 完全なflexboxユーティリティ（`flex`、`justifyContent`、`alignItems`など）
- **Grid**: CSS Gridレイアウトユーティリティ（`gridCols`、`gridRows`、`gap`など）
- **スペーシング**: マージンとパディングユーティリティ（`m1`、`p4`、`mx2`、`py8`など）
- **サイジング**: 幅と高さのユーティリティ（`w64`、`h32`、`wFull`、`hScreen`など）
- **ポジション**: ポジショニングユーティリティ（`absolute`、`relative`、`top4`、`left8`など）
- **ディスプレイ**: ディスプレイユーティリティ（`block`、`flex`、`grid`、`hidden`など）

### タイポグラフィ
- **フォントファミリー**: フォントファミリーユーティリティ（`fontSans`、`fontSerif`、`fontMono`）
- **フォントサイズ**: テキストサイズユーティリティ（`textXs`、`textLg`、`text4xl`など）
- **フォントウェイト**: フォントウェイトユーティリティ（`fontThin`、`fontBold`、`fontBlack`など）
- **テキストカラー**: 完全なTailwindカラーパレットを含むテキストカラーユーティリティ
- **テキスト整列**: テキスト整列ユーティリティ（`textLeft`、`textCenter`、`textRight`）
- **テキスト装飾**: テキスト装飾ユーティリティ（`underline`、`lineThrough`）
- **文字間隔**: 文字間隔ユーティリティ（`trackingTight`、`trackingWide`）
- **行の高さ**: 行の高さユーティリティ（`leadingTight`、`leadingRelaxed`）

### カラー・背景
- **完全なカラーパレット**: すべてのTailwind CSSカラー（slate、gray、red、orange、amber、yellow、lime、green、emerald、teal、cyan、sky、blue、indigo、violet、purple、fuchsia、pink、rose）
- **背景色**: 背景色ユーティリティ（`bgRed500`、`bgBlue100`など）
- **背景画像**: 背景画像ユーティリティとグラデーション
- **背景プロパティ**: 背景サイズ、位置、繰り返し、アタッチメントユーティリティ

### ボーダー・エフェクト
- **ボーダー幅**: ボーダー幅ユーティリティ（`border`、`border2`、`borderT4`など）
- **ボーダーカラー**: 完全なカラーパレットを含むボーダーカラーユーティリティ
- **ボーダースタイル**: ボーダースタイルユーティリティ（`borderSolid`、`borderDashed`など）
- **ボーダー半径**: ボーダー半径ユーティリティ（`rounded`、`roundedFull`、`roundedXl`など）
- **ボックスシャドウ**: シャドウユーティリティ（`shadow`、`shadowLg`、`shadowXl`など）
- **オパシティ**: オパシティユーティリティ（`opacity50`、`opacity75`など）

### フィルター・エフェクト
- **バックドロップフィルター**: バックドロップブラーとフィルターエフェクト
- **フィルター**: ブラー、明度、コントラスト、彩度、その他のフィルターユーティリティ
- **ブレンドモード**: 背景とミックスブレンドモードユーティリティ
- **トランスフォーム**: 回転、スケール、平行移動、傾斜ユーティリティ

### 高度な機能
- **ウィジェット拡張**: ウィジェットタイプ間の変換（`asRow`、`asColumn`、`asStack`など）
- **レイアウト変換**: スマートレイアウトユーティリティ（`asSafeRow`、`asFlexRow`、`asScrollView`など）
- **コンテナ変換**: ウィジェットをコンテナに変換（`asContainer`、`asGestureDetector`など）
- **SVGサポート**: 完全なSVGスタイリングと操作機能
- **アクセシビリティ**: WCAGコンプライアンス、色覚異常サポート、ハイコントラストテーマ
- **レスポンシブデザイン**: モバイルとデスクトップの適応ユーティリティ

## 📦 インストール

`pubspec.yaml`にパッケージを追加してください：

```yaml
dependencies:
  tailwindcss_build: ^0.3.2
```

次に、パッケージを取得してください：

```bash
flutter pub get
```

## 🎯 使用方法

### 基本的な使用方法

パッケージをインポートして、どのウィジェットにでもTailwindスタイルを適用してください：

```dart
import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello Tailwind!')
        .textXl()           // text-xl
        .fontBold()         // font-bold
        .textBlue500()      // text-blue-500
        .textCenter(),      // text-center
    )
      .p4()                 // p-4
      .mx2()                // mx-2
      .bgWhite()            // bg-white
      .roundedLg()          // rounded-lg
      .shadowMd();          // shadow-md
  }
}
```

### レイアウトユーティリティ

```dart
// Flexboxレイアウト
Column(
  children: [
    Text('Header').fontBold().textXl(),
    Text('Content').flex1(),
    Text('Footer').fontSm().textGray500(),
  ],
)
  .flexCol()              // flex-col
  .justifyBetween()       // justify-between
  .itemsCenter()          // items-center
  .h64()                  // h-64
  .p4();                  // p-4

// Gridレイアウト
GridView.count(
  crossAxisCount: 2,
  children: [
    Container().bgRed500().h16(),
    Container().bgBlue500().h16(),
    Container().bgGreen500().h16(),
    Container().bgYellow500().h16(),
  ],
)
  .gap4()                 // gap-4
  .p4();                  // p-4
```

### カラーとスタイリング

```dart
Container(
  child: Text('Styled Text')
    .textWhite()          // text-white
    .fontSemibold()       // font-semibold
    .textLg(),            // text-lg
)
  .bgGradientToR()        // bg-gradient-to-r
  .fromPurple400()        // from-purple-400
  .viaPink500()           // via-pink-500
  .toRed500()             // to-red-500
  .p6()                   // p-6
  .rounded2xl()           // rounded-2xl
  .shadowXl();            // shadow-xl
```

### レスポンシブデザイン

```dart
Container(
  child: Text('Responsive Text'),
)
  .wFull()                // w-full（モバイル）
  .smW64()                // sm:w-64（タブレット）
  .lgW96()                // lg:w-96（デスクトップ）
  .p4()                   // p-4
  .smP6()                 // sm:p-6
  .lgP8();                // lg:p-8
```

### アニメーションとトランジション

```dart
Container()
  .w16()
  .h16()
  .bgBlue500()
  .rounded()
  .transitionAll()        // transition-all
  .duration300()          // duration-300
  .easeInOut()            // ease-in-out
  .hoverScale()           // hover:scale-105
  .hoverBgBlue600();      // hover:bg-blue-600
```

## 📚 完全なAPIリファレンス

### スペーシングユーティリティ
- **マージン**: `m0`〜`m96`、`mx2`、`my4`、`mt8`、`mr16`など
- **パディング**: `p0`〜`p96`、`px2`、`py4`、`pt8`、`pr16`など

### サイジングユーティリティ
- **幅**: `w0`〜`w96`、`wFull`、`wScreen`、`wAuto`など
- **高さ**: `h0`〜`h96`、`hFull`、`hScreen`、`hAuto`など

### カラーユーティリティ
各カラーは50〜900のスケールで利用可能：
- **グレー**: `gray50`〜`gray900`
- **カラー**: `red50`〜`red900`、`blue50`〜`blue900`など
- **使用法**: `textRed500()`、`bgBlue100()`、`borderGreen300()`

### タイポグラフィユーティリティ
- **サイズ**: `textXs`、`textSm`、`textBase`、`textLg`、`textXl`〜`text9xl`
- **ウェイト**: `fontThin`、`fontLight`、`fontNormal`、`fontMedium`、`fontSemibold`、`fontBold`、`fontExtrabold`、`fontBlack`
- **ファミリー**: `fontSans`、`fontSerif`、`fontMono`

### レイアウトユーティリティ
- **Flexbox**: `flex`、`flexRow`、`flexCol`、`flexWrap`、`justifyStart`、`justifyCenter`、`justifyBetween`、`itemsStart`、`itemsCenter`、`itemsEnd`
- **Grid**: `gridCols1`〜`gridCols12`、`colSpan1`〜`colSpan12`、`gap0`〜`gap96`
- **Position**: `relative`、`absolute`、`fixed`、`top0`〜`top96`、`left0`〜`left96`

## 🎨 高度な使用例

### カスタムコンポーネント

```dart
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool primary;

  CustomButton({
    required this.text,
    this.onPressed,
    this.primary = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text)
        .fontMedium()
        .when(primary, (widget) => widget.textWhite())
        .when(!primary, (widget) => widget.textBlue600()),
    )
      .px6()
      .py3()
      .when(primary, (widget) => widget.bgBlue600().hoverBgBlue700())
      .when(!primary, (widget) => widget.bgWhite().borderBlue600().border())
      .roundedMd()
      .shadowSm()
      .transitionColors()
      .duration150();
  }
}
```

### テーマとバリアント

```dart
class ThemeUtils {
  static Widget cardStyle(Widget child) {
    return child
      .bgWhite()
      .roundedXl()
      .shadowLg()
      .p6()
      .mb4();
  }

  static Widget primaryButton(Widget child) {
    return child
      .bgBlue600()
      .hoverBgBlue700()
      .textWhite()
      .fontSemibold()
      .px6()
      .py3()
      .roundedMd()
      .transitionColors();
  }
}
```

### レスポンシブレイアウト

```dart
class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ヘッダー
        Container(
          child: Text('My App')
            .textXl()
            .smText2xl()
            .lgText3xl()
            .fontBold()
            .textGray800(),
        )
          .wFull()
          .p4()
          .smP6()
          .lgP8()
          .bgWhite()
          .shadowSm(),

        // メインコンテンツ
        Expanded(
          child: Row(
            children: [
              // サイドバー（デスクトップのみ）
              Container(
                child: Text('Sidebar'),
              )
                .w64()
                .bgGray100()
                .p4()
                .hiddenSmDown(), // スマートフォンでは非表示

              // コンテンツエリア
              Expanded(
                child: Container(
                  child: Text('Main Content'),
                )
                  .p4()
                  .smP6()
                  .lgP8(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
```

## 🌟 高度な機能

### SVGサポート

```dart
// SVGアイコンのスタイリング
Widget()
  .svgIcon(
    assetPath: 'assets/icon.svg',
    width: 24,
    height: 24,
    color: Colors.blue,
  )
  .fillBlue500()          // SVG塗りつぶし色
  .strokeRed300()         // SVGストローク色
  .stroke2();             // ストローク幅

// SVGビルダー
SvgBuilder()
  .asset('assets/icon.svg')
  .size(32, 32)
  .color(Colors.red)
  .fit(BoxFit.contain)
  .build();
```

### アクセシビリティ

```dart
Widget()
  .highContrast(
    enabled: true,
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
  )
  .colorBlindFriendly(
    type: ColorBlindType.protanopia,
  )
  .enhancedFocus(
    focusColor: Colors.blue,
    focusWidth: 2.0,
  )
  .minTouchTarget(
    minWidth: 44.0,
    minHeight: 44.0,
  );

// アクセシビリティチェック
final ratio = AccessibilityChecker.calculateContrastRatio(
  Colors.black, 
  Colors.white,
);
final isAccessible = AccessibilityChecker.meetsWCAGAA(
  Colors.black, 
  Colors.white,
);
```

### アニメーションシーケンス

```dart
Widget()
  .fadeIn()              // フェードインアニメーション
  .slideIn()             // スライドインアニメーション
  .scaleIn()             // スケールインアニメーション
  .rotateIn()            // 回転アニメーション
  .duration500()         // アニメーション継続時間
  .delay100();           // アニメーション遅延

// カスタムアニメーション
Widget().customAnimation(
  animation: controller,
  builder: (context, child, value) => Transform.scale(
    scale: value,
    child: child,
  ),
);
```

## 💡 ベストプラクティス

### 1. パフォーマンス最適化

```dart
// constコンストラクターを使用
const Text('Static Text')
  .textLg()
  .fontBold();

// 条件付きスタイリング
Text('Dynamic Text')
  .when(isActive, (widget) => widget.textBlue500())
  .when(!isActive, (widget) => widget.textGray500());
```

### 2. 一貫性のあるデザインシステム

```dart
class DesignSystem {
  // 色の定義
  static const primaryColor = Colors.blue;
  static const secondaryColor = Colors.gray;
  
  // スペーシングの定義
  static const smallSpacing = 2;
  static const mediumSpacing = 4;
  static const largeSpacing = 8;
  
  // タイポグラフィスタイル
  static Widget heading1(String text) => Text(text)
    .text3xl()
    .fontBold()
    .textGray900();
    
  static Widget body(String text) => Text(text)
    .textBase()
    .textGray700()
    .leadingRelaxed();
}
```

### 3. レスポンシブデザイン

```dart
class ResponsiveUtils {
  static Widget responsiveContainer(Widget child) {
    return child
      .wFull()               // モバイル: 全幅
      .smMaxW2xl()           // タブレット: 最大幅制限
      .lgMaxW4xl()           // デスクトップ: より大きな最大幅
      .mxAuto()              // 中央寄せ
      .px4()                 // モバイル: 小さなパディング
      .smPx6()               // タブレット: 中程度のパディング
      .lgPx8();              // デスクトップ: 大きなパディング
  }
}
```

## 🔧 設定

### カスタムテーマ

```dart
// アプリレベルでカスタムテーマを定義
MaterialApp(
  theme: AccessibilityTheme.highContrastTheme(),
  // または
  theme: AccessibilityTheme.largeTextTheme(scaleFactor: 1.5),
  home: MyHomePage(),
);
```

### カスタムカラー

```dart
// カスタムカラーの使用
Widget()
  .bgCustom(Colors.purple)
  .textCustom(Color(0xFF123456))
  .borderCustom(Colors.orange);
```

## 📖 例とデモ

パッケージには包括的な例のプロジェクトが含まれており、以下の内容を紹介しています：

- **基本的な使用法**: 色、タイポグラフィ、スペーシング
- **レイアウトデモ**: Flexbox、Grid、レスポンシブデザイン
- **コンポーネント例**: ボタン、カード、フォーム
- **アニメーションショーケース**: トランジション、ホバーエフェクト
- **アクセシビリティデモ**: ハイコントラスト、色覚異常サポート

例のプロジェクトを実行するには：

```bash
cd example
flutter run
```

## 🤝 貢献

貢献を歓迎します！お気軽にPull Requestを提出するか、Issuesを開いてください。

### 開発の準備

```bash
# リポジトリのクローン
git clone https://github.com/Not996NotOT/tailwindcss_build.git
cd tailwindcss_build

# 依存関係の取得
flutter pub get

# 例の実行
cd example
flutter run
```

## 📝 ライセンス

このプロジェクトはMITライセンスの下でライセンスされています - 詳細は[LICENSE](LICENSE)ファイルを参照してください。

## 🙏 謝辞

- [Tailwind CSS](https://tailwindcss.com/) - 素晴らしいユーティリティファーストCSSフレームワークからのインスピレーション
- [Flutter](https://flutter.dev/) - 美しいアプリを構築するための素晴らしいフレームワーク
- Flutter community - 継続的なサポートとフィードバック

## 🔗 リンク

- [pub.dev](https://pub.dev/packages/tailwindcss_build)
- [GitHub Repository](https://github.com/Not996NotOT/tailwindcss_build)
- [Documentation](https://pub.dev/documentation/tailwindcss_build/latest/)
- [Issues](https://github.com/Not996NotOT/tailwindcss_build/issues)
- [Changelog](./CHANGELOG.md)

## 📞 サポート

質問やサポートが必要な場合は、お気軽にお問い合わせください：

- GitHub Issues: [Issues](https://github.com/Not996NotOT/tailwindcss_build/issues)
- Email: [support@yourproject.com]

---

Tailwind CSS Build for Flutterを使用していただき、ありがとうございます！ 🎉
