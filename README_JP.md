# TailwindCSS Build for Flutter

[![pub package](https://img.shields.io/pub/v/tailwindcss_build.svg)](https://pub.dev/packages/tailwindcss_build)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)](https://flutter.dev)

[English](README.md) | [中文](README_CN.md) | [日本語](README_JP.md)

革新的な**ビルダーパターン**アーキテクチャを通じて、Tailwind CSS ユーティリティクラスの強力さと優雅さでFlutter開発を変革しましょう。

## 🚨 Pre-1.0.0 リリース前の注意事項

**重要**：このパッケージは1.0.0に向けて積極的に開発中です。最高のソリューションを提供するために、破壊的変更、API廃止、またはアーキテクチャの改善を導入する可能性があります。

**現在の状況**：v0.4.9のビルダーパターン実装（ContainerBuilder、TextBuilder、FlexBuilder、GridBuilder、ScrollBuilder）は本番環境に対応しており、このライブラリの将来の方向性を表しています。

## 📊 実装状況

### ✅ 完全実装済み（400+ 機能）

**コアビルダー：**
- ✅ **ContainerBuilder**: 完全なコンテナスタイリング（幅、高さ、パディング、マージン、ボーダー、角丸、シャドウ、z-index、位置、アスペクト比、RTLサポート）
- ✅ **FlexBuilder**: 完全なFlexboxレイアウト（方向、整列、間隔、flex-grow/shrink、順序、折り返し、子要素間隔、子要素分割）
- ✅ **GridBuilder**: 完全なGridレイアウト（列、行、間隔、整列、スパン、開始/終了、自動フロー）
- ✅ **TextBuilder**: 完全なテキストスタイリング（サイズ、太さ、色、装飾、変換、オーバーフロー、行の高さ、文字間隔）
- ✅ **ScrollBuilder**: 完全なオーバーフロー制御（自動、非表示、クリップ、表示、スクロール、オーバースクロール動作）

**レイアウト機能：**
- ✅ コンテナ、アスペクト比、表示（block、flex、grid、hidden）
- ✅ 位置（static、relative、absolute、fixed、sticky）RTLサポート付き
- ✅ オーバーフロー（すべてのバリアント：auto、hidden、clip、visible、scroll）
- ✅ オーバースクロール動作（auto、contain、none）
- ✅ Z-Index（z-0からz-50、z-auto）

**Flexbox & Grid：**
- ✅ Flex方向（row、col）
- ✅ Flex折り返し（wrap、nowrap）
- ✅ Flexプロパティ（flex-1、flex-auto、flex-none、flex-grow、flex-shrink）
- ✅ 順序
- ✅ 主軸整列（start、end、center、between、around、evenly）
- ✅ 交差軸整列（start、end、center、baseline、stretch）
- ✅ 間隔（すべてのサイズ）
- ✅ Gridテンプレート列/行（1-12、none、subgrid、カスタム）
- ✅ Grid列/行スパン（col-span、row-span、col-start、col-end、row-start、row-end）
- ✅ Grid自動フロー（row、col、row-dense、col-dense）
- ✅ Grid自動列/行（auto、min、max、fr）
- ✅ Grid整列（すべてのバリアント）

**間隔：**
- ✅ パディング（すべての方向、RTLサポート：padding-start/end）
- ✅ マージン（すべての方向、RTLサポート：margin-start/end）
- ✅ 子要素間隔（space-x、space-y、リバースサポート付き）
- ✅ 子要素分割（divide-x、divide-y、色と幅の制御付き）

**サイズ：**
- ✅ 幅（w-0からw-96、w-auto、w-full、w-screen、w-px、w-0.5、カスタム）
- ✅ 高さ（h-0からh-96、h-auto、h-full、h-screen、h-px、h-0.5、カスタム）
- ✅ 最小幅（min-w-0からmin-w-96、min-w-auto、min-w-full、min-w-screen、min-w-min、min-w-max、min-w-fit）
- ✅ 最小高さ（min-h-0からmin-h-96、min-h-auto、min-h-full、min-h-screen）
- ✅ 最大幅（max-w-0からmax-w-96、max-w-full、max-w-screen）
- ✅ 最大高さ（max-h-0からmax-h-96、max-h-full、max-h-screen）

**タイポグラフィ：**
- ✅ フォントサイズ（text-xsからtext-9xl、カスタム）
- ✅ フォント太さ（thin、extralight、light、normal、medium、semibold、bold、extrabold、black）
- ✅ フォントスタイル（italic、not-italic）
- ✅ 文字間隔（tracking-tighterからtracking-widest）
- ✅ 行の高さ（leading-noneからleading-loose）
- ✅ 行数制限（maxLines）
- ✅ テキスト整列（left、center、right、justify）
- ✅ テキスト色（すべてのTailwindCSSカラーファミリー：21ファミリー × 11シェード = 231色）
- ✅ テキスト装飾線（underline、overline、line-through、no-underline）
- ✅ テキスト装飾スタイル（solid、double、dotted、dashed、wavy）
- ✅ テキスト装飾太さ（decoration-0からdecoration-8、auto、from-font）
- ✅ テキスト装飾色（すべてのTailwindCSS色）
- ✅ テキスト変換（uppercase、lowercase、capitalize、normal-case）
- ✅ テキストオーバーフロー（truncate、text-ellipsis、text-clip）
- ✅ テキスト折り返し（text-wrap、text-nowrap）

**背景：**
- ✅ 背景色（すべてのTailwindCSSカラーファミリー：21ファミリー × 11シェード = 231色）
- ✅ 背景不透明度（bg-opacity-0からbg-opacity-100）
- ✅ 背景画像（backgroundImage、backgroundImageFromNetwork、backgroundImageFromAsset）
- ✅ 背景位置（bg-center、bg-top、bg-bottom、bg-left、bg-right、およびすべての位置）
- ✅ 背景サイズ（bg-contain、bg-cover、bg-fill、bg-none、bg-scale-down）
- ✅ 背景繰り返し（bg-repeat、bg-no-repeat、bg-repeat-x、bg-repeat-y）
- ✅ 背景クリップ（bg-clip via ContainerBuilder.clip()）
- ✅ 背景グラデーション（bg-gradient-to-r、bg-gradient-to-l、bg-gradient-to-t、bg-gradient-to-b、およびすべての方向）
- ✅ 背景ブレンドモード（bg-blend-normal、bg-blend-multiply、bg-blend-screen、およびすべてのブレンドモード）

**ボーダー：**
- ✅ 角丸（rounded-smからrounded-2xl、rounded-full、rounded-none、個別の角、RTLサポート：rounded-s/rounded-e）
- ✅ ボーダー幅（border、border-t、border-r、border-b、border-l、border-x、border-y、RTLサポート：border-s/border-e）
- ✅ ボーダー色（すべてのTailwindCSSカラーファミリー）
- ✅ ボーダー不透明度（border-opacity-0からborder-opacity-100）
- ✅ ボーダースタイル（border-solid、border-dashed、border-dotted、border-double、border-none）
- ✅ ボーダーなし
- ✅ アウトライン（outline-0からoutline-8、アウトライン色、outline-offset）
- ✅ リング（ring-0からring-8、リング色、ring-opacity、ring-offset、ring-inset）

**エフェクト：**
- ✅ ボックスシャドウ（shadow-smからshadow-2xl、shadow-inner、shadow-none、カスタム）
- ✅ テキストシャドウ
- ✅ 不透明度（opacity-0からopacity-100）
- ✅ ミックスブレンドモード（blend-normal、blend-multiply、blend-screen、およびすべてのブレンドモード）
- ✅ 背景ブレンドモード（bg-blend-normal、bg-blend-multiply、bg-blend-screen、およびすべてのブレンドモード）

**インタラクティブ：**
- ✅ ポインターイベント（pointer-events-none、pointer-events-auto）
- ✅ ジェスチャーハンドラー（onTap、onDoubleTap、onLongPress）
- ✅ カーソル（cursor-pointer、cursor-text、cursor-not-allowed、cursor-wait、cursor-move、cursor-grab、cursor-grabbing、cursor-help、cursor-default - Webプラットフォーム）
- ✅ ユーザー選択（select-none、select-text、select-all、select-auto）

**フィルター：**
- ✅ ぼかし（blur-smからblur-3xl）
- ✅ 明るさ（brightness-0からbrightness-200）
- ✅ コントラスト（contrast-0からcontrast-200）
- ✅ ドロップシャドウ（drop-shadow-smからdrop-shadow-2xl）
- ✅ グレースケール（grayscale-0、grayscale-100）
- ✅ 色相回転（hue-rotate-0、hue-rotate-15、hue-rotate-30、hue-rotate-60、hue-rotate-90、hue-rotate-180）
- ✅ 反転（invert-0、invert-100）
- ✅ 彩度（saturate-0からsaturate-200）
- ✅ セピア（sepia-0、sepia-100）
- ✅ バックドロップぼかし（backdrop-blur-smからbackdrop-blur-3xl）
- ✅ バックドロップ明るさ（backdrop-brightness-0からbackdrop-brightness-200）
- ✅ バックドロップコントラスト（backdrop-contrast-0からbackdrop-contrast-200）
- ✅ バックドロップ彩度（backdrop-saturate-0からbackdrop-saturate-200）
- ✅ バックドロップセピア（backdrop-sepia-0、backdrop-sepia-100）
- ✅ バックドロップ不透明度（backdrop-opacity-0からbackdrop-opacity-100）
- ✅ バックドロップグレースケール（backdrop-grayscale-0、backdrop-grayscale-100）
- ✅ バックドロップ反転（backdrop-invert-0、backdrop-invert-100）
- ✅ バックドロップ色相回転（backdrop-hue-rotate-0からbackdrop-hue-rotate-180）

**変換：**
- ✅ 変換（transform via ContainerBuilder.transform()）
- ✅ 回転（rotate-0からrotate-180、rotate-45、rotate-90、rotate-180）
- ✅ スケール（scale-0からscale-150、scale-x、scale-y）
- ✅ スキュー（skew-x-0からskew-x-12、skew-y-0からskew-y-12）
- ✅ 平行移動（translate-x-0からtranslate-x-64、translate-y-0からtranslate-y-64）
- ✅ 変換原点（transform-origin via ContainerBuilder.transformAlignment()）

**オブジェクトフィットと位置：**
- ✅ オブジェクトフィット（object-contain、object-cover、object-fill、object-none、object-scale-down）
- ✅ オブジェクト位置（object-center、object-top、object-bottom、object-left、object-right、およびすべての位置）

**任意の値：**
- ✅ カスタム値（wCustom()、hCustom()など）

### ⚠️ 部分的実装（142+ 機能）

**レイアウト：**
- ⚠️ ボックスサイズ（BoxConstraintsを介して間接的に制御）
- ⚠️ 表示（inline、inline-block、inline-flex、inline-grid、table - 特定のwidgetが必要）

**タイポグラフィ：**
- ⚠️ フォントファミリー（フォント設定が必要）
- ⚠️ テキスト折り返し（text-balance、text-pretty - Flutterがサポートしていない）
- ⚠️ 空白処理（限定的サポート、maxLinesが必要）
- ⚠️ 単語分割（限定的サポート）
- ⚠️ オーバーフロー折り返し（Flutterが自動処理）

**間隔：**
- ⚠️ 分割スタイル（divide-dashed、divide-dotted - Flutterの制限：solidを使用。真の破線/点線の分割線が必要な場合は、カスタム実装を使用）

**テーブル：**
- ⚠️ ボーダー折りたたみ（Flutter Tableのデフォルト動作）
- ⚠️ ボーダー間隔（Table borderが必要）
- ⚠️ テーブルレイアウト（Flutterが自動処理）

**トランジションとアニメーション：**
- ⚠️ トランジションプロパティ（AnimatedContainerが必要）
- ⚠️ トランジション期間（Durationが必要）
- ⚠️ トランジションタイミング関数（Curveが必要）
- ⚠️ トランジション遅延（Future.delayedが必要）
- ⚠️ アニメーション（AnimationControllerが必要）

**インタラクティブ：**
- ⚠️ カーソル（Flutter Webプラットフォームのみ - 完全なサポートにはWebプラットフォームが必要）
- ⚠️ スクロール動作（ScrollPhysicsが必要）
- ⚠️ スクロールマージン/パディング（padding実装が必要）
- ⚠️ スクロールスナップ（PageViewが必要）
- ⚠️ タッチアクション（GestureDetectorが必要）
- ⚠️ キャレット色（TextField cursorColorが必要）
- ⚠️ カラースキーム（Themeが必要）

**SVG：**
- ⚠️ 塗りつぶし、ストローク、ストローク幅（CustomPaintが必要）

**疑似クラスバリアント：**
- ⚠️ ホバー（InkWell、GestureDetectorが必要）
- ⚠️ フォーカス（FocusNodeが必要）
- ⚠️ アクティブ（GestureDetectorが必要）
- ⚠️ 無効（widget enabledプロパティが必要）
- ⚠️ チェック済み（Checkboxが必要）
- ⚠️ グループホバー（カスタム実装が必要）
- ⚠️ ピアホバー（カスタム実装が必要）

**レスポンシブブレークポイント：**
- ⚠️ ブレークポイント（sm、md、lg、xl、2xl - MediaQueryが必要）

**ダークモード：**
- ⚠️ ダークモードバリアント（Theme.of(context).brightnessが必要）

**メディアクエリ：**
- ⚠️ モーション削減（MediaQuery.accessibleNavigationが必要）
- ⚠️ 方向（MediaQuery.orientationが必要）
- ⚠️ 優先カラースキーム（Themeが必要）

**状態修飾子：**
- ⚠️ Before/After（Stackが必要）
- ⚠️ バックドロップ（BackdropFilterが必要）
- ⚠️ プレースホルダー（TextField hintTextが必要）

**任意の値：**
- ⚠️ CSS変数（Flutterがサポートしていない）
- ⚠️ Calc()（手動計算が必要）

### ❌ 未実装（59+ 機能）

**レイアウト：**
- ❌ 列（FlutterはCSS columnsをサポートしていない）
- ❌ 改ページ（Flutterは印刷改ページをサポートしていない）
- ❌ ボックス装飾分割
- ❌ フロートとクリア（FlutterはCSS floatをサポートしていない）
- ❌ 分離（FlutterはCSS isolationをサポートしていない）
- ❌ 可視性折りたたみ（Flutterがサポートしていない）

**タイポグラフィ：**
- ❌ フォントスムージング（Flutterが自動処理）
- ❌ フォントストレッチ（Flutterがサポートしていない）
- ❌ フォントバリアント数値（Flutterがサポートしていない）
- ❌ テキスト下線オフセット（Flutterがサポートしていない）
- ❌ テキストインデント（Flutterがサポートしていない）
- ❌ 垂直整列（Baseline widgetが必要）
- ❌ 空白処理（pre、pre-line、pre-wrap、break-spaces - サポートされていない）
- ❌ ハイフン（Flutterがサポートしていない）
- ❌ コンテンツ（FlutterはCSS contentをサポートしていない）

**背景：**
- ❌ 背景添付（Flutterがサポートしていない）
- ❌ 背景原点（Flutterがサポートしていない）

**エフェクト：**
- ❌ マスク（FlutterはCSS maskをサポートしていない）

**変換：**
- ❌ 変換スタイル（Flutterは3D変換をサポートしていない）
- ❌ 背面可視性（Flutterがサポートしていない）
- ❌ パースペクティブ（Flutterがサポートしていない）
- ❌ パースペクティブ原点（Flutterがサポートしていない）

**インタラクティブ：**
- ❌ リサイズ（Flutterがサポートしていない）
- ❌ 変更予定（Flutterが自動処理）
- ❌ アクセントカラー（Themeが必要）
- ❌ 外観（カスタムwidgetが必要）
- ❌ フィールドサイズ（Flutterがサポートしていない）

**アクセシビリティ：**
- ❌ 強制カラー調整（Flutterがサポートしていない）

**コンテナクエリ：**
- ❌ コンテナタイプ（FlutterはCSS container queriesをサポートしていない）
- ❌ コンテナ名

**疑似クラスバリアント：**
- ❌ 訪問済み（Flutterがサポートしていない）
- ❌ ターゲット（Flutterがサポートしていない）
- ❌ 開く/閉じる（カスタム状態管理が必要）
- ❌ 無効/有効（FormField検証が必要）
- ❌ Aria-*（Semanticsが必要）
- ❌ Data-*（Flutterがサポートしていない）
- ❌ Has()セレクター（FlutterはCSS :has()セレクターをサポートしていない）

**メディアクエリ：**
- ❌ 印刷（Flutterは印刷メディアクエリをサポートしていない）
- ❌ 優先コントラスト（Flutterがサポートしていない）

**状態修飾子：**
- ❌ 最初の文字（Flutterがサポートしていない）
- ❌ 最初の行（Flutterがサポートしていない）
- ❌ マーカー（Flutterがサポートしていない）
- ❌ 選択（Flutterがサポートしていない）
- ❌ ファイル（Flutterがサポートしていない）

**重要修飾子：**
- ❌ 重要修飾子（FlutterはCSS !importantをサポートしていない）

## ✨ TailwindCSS Buildを選ぶ理由？

### 🎯 Before vs After 比較

<details>
<summary><strong>🔥 シンプルなボタンの例</strong></summary>

**従来のFlutterの書き方（冗長）：**
```dart
GestureDetector(
  onTap: () => print('ボタンがクリックされました！'),
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    decoration: BoxDecoration(
      color: Color(0xFF2563EB), // blue-600
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Text(
      'クリックしてください',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
)
```

**TailwindCSS Buildの書き方（エレガント）：**
```dart
Text('クリックしてください')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()
    .px6()
    .py3()
    .bgBlue600()
    .r8()
    .shadow()
    .onTap(() => print('ボタンがクリックされました！'))
```

**結果**：✨ **70%のコード削減、100%の可読性向上！**

</details>

<details>
<summary><strong>🎨 カードレイアウトの例</strong></summary>

**従来のFlutterの書き方：**
```dart
Container(
  padding: EdgeInsets.all(24),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 10,
        offset: Offset(0, 4),
      ),
    ],
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'カードタイトル',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF111827), // gray-900
        ),
      ),
      SizedBox(height: 8),
      Text(
        'カードの内容はここに...',
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF4B5563), // gray-600
        ),
      ),
    ],
  ),
)
```

**TailwindCSS Buildの書き方：**
```dart
[
  Text('カードタイトル')
      .asText()
      .textXl()
      .fontBold()
      .textGray900()
      .build(),
  SizedBox(height: 8),
  Text('カードの内容はここに...')
      .asText()
      .textBase()
      .textGray600()
      .build(),
].asFlex()
    .flexCol()
    .itemsStart()
    .asContainer()
    .bgWhite()
    .p6()
    .r12()
    .shadowMd()
    .build()
```

**結果**：✨ **自己文書化コードで視覚的に明確！**

</details>

## 🏗️ 革新的なアーキテクチャ

### 🎯 ビルダーパターンの利点

- **🚀 パフォーマンス**：ネストされたコンテナの代わりに単一の最適化されたwidgetを作成
- **🔗 チェーン可能**：複雑なスタイリングのための直感的なメソッドチェーン
- **🛡️ 型安全**：Flutterの型システムによる完全なコンパイル時チェック
- **💾 メモリ効率**：widgetツリーの深度を減らし、レンダリングを改善

### 🧩 5つのコアビルダー

| ビルダー | 目的 | 機能 | 使用方法 |
|---------|---------|----------|-------|
| **TextBuilder** | テキストスタイリングとタイポグラフィ | 装飾、変換、オーバーフロー制御 | `Text('Hello').asText().textBlue600().underline().decorationRed500().build()` |
| **ContainerBuilder** | レイアウト、間隔、視覚効果 | 完全な位置システム、RTLサポート | `.asContainer().px6().py3().bgWhite().positionAbsolute(top: 10, left: 20).build()` |
| **FlexBuilder** | レイアウト管理（行/列） | Flexプロパティ、間隔、折り返し、子要素間隔、分割 | `[widgets].asFlex().flexRow().justifyCenter().gap4().flexWrap().build()` |
| **GridBuilder** | Gridレイアウトシステム | 列、行、間隔、スパン、自動フロー | `[widgets].asGrid().gridCols3().gap4().build()` |
| **ScrollBuilder** | オーバーフローとスクロール制御 | オーバーフローバリアント、オーバースクロール動作 | `.asScrollView().overflowAuto().overscrollContain().build()` |

## 🚀 クイックスタート

### インストール

```yaml
dependencies:
  tailwindcss_build: ^0.4.7
```

### インポート

```dart
import 'package:tailwindcss_build/tailwindcss_build.dart';
```

### 基本的な使用例

<details>
<summary><strong>📝 テキストスタイリング</strong></summary>

```dart
// 基本的なテキストスタイリング
Text('Hello World')
    .asText()
    .textBlue600()    // 色
    .textXl()         // サイズ
    .fontBold()       // 太さ
    .build()

// 高度なテキスト装飾
Text('スタイル化されたテキスト')
    .asText()
    .textRed600()
    .underline()               // 下線装飾
    .decorationBlue500()       // 装飾色
    .decorationDotted()        // 装飾スタイル
    .decoration2()             // 装飾太さ
    .build()

// テキスト変換
Text('変換してください')
    .asText()
    .uppercase()               // 大文字変換
    .trackingWide()           // 文字間隔
    .leadingLoose()           // 行の高さ
    .build()

// テキストオーバーフロー制御
Text('オーバーフローする可能性のある長いテキスト...')
    .asText()
    .truncate()               // 省略記号オーバーフロー
    .maxLines(2)             // 最大行数
    .build()
```

</details>

<details>
<summary><strong>🎯 コンテナスタイリング</strong></summary>

```dart
// 基本的なコンテナ
Text('コンテンツ')
    .asContainer()
    .px6()           // 水平パディング
    .py3()           // 垂直パディング
    .bgBlue600()     // 背景色
    .r8()            // 角丸
    .shadow()        // ドロップシャドウ
    .build()

// 位置レイアウト
Text('位置指定要素')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()
    .px4()
    .py2()
    .bgRed500()
    .r6()
    .positionAbsolute(     // 絶対位置指定
      top: 20,
      right: 10,
      width: 200,
    )

// RTLサポート（padding-start/end）
Text('RTLサポート')
    .asContainer()
    .paddingStart(16)  // テキスト方向に適応
    .paddingEnd(16)
    .bgGray100()
    .build()

// アスペクト比
Container(
  child: Image.network('...'),
)
    .asContainer()
    .aspectVideo()    // 16:9アスペクト比
    .build()
```

</details>

<details>
<summary><strong>🔄 Flexレイアウト</strong></summary>

```dart
// 間隔付き行レイアウト
[
  Text('項目1').build(),
  Text('項目2').build(),
  Text('項目3').build(),
].asFlex()
    .flexRow()          // 方向
    .justifyCenter()    // 主軸整列
    .itemsCenter()      // 交差軸整列
    .gap4()             // 項目間の間隔
    .asContainer()
    .bgGray100()
    .p4()
    .r8()
    .build()

// 折り返し付き列レイアウト
[
  Text('項目1').build(),
  Text('項目2').build(),
  Text('項目3').build(),
].asFlex()
    .flexCol()
    .flexWrap()         // 次の行に折り返し
    .itemsStart()
    .spaceY4()          // 子要素間の間隔
    .asContainer()
    .bgWhite()
    .p6()
    .shadowMd()
    .build()

// 子要素間の分割
[
  Text('項目1').build(),
  Text('項目2').build(),
  Text('項目3').build(),
].asFlex()
    .flexRow()
    .divideX()          // 項目間の垂直分割線
    .divideColor(Colors.grey)
    .divideWidth(2)
    .build()
```

</details>

<details>
<summary><strong>📐 Gridレイアウト</strong></summary>

```dart
// 基本的なグリッド
[
  Text('項目1').build(),
  Text('項目2').build(),
  Text('項目3').build(),
  Text('項目4').build(),
].asGrid()
    .gridCols2()        // 2列
    .gap4()             // 項目間の間隔
    .build()

// スパン付きグリッド
[
  Text('スパン2').colSpan(2).build(),
  Text('項目2').build(),
  Text('項目3').build(),
].asGrid()
    .gridCols3()
    .gap4()
    .build()

// グリッド自動フロー
[
  Text('項目1').build(),
  Text('項目2').build(),
  Text('項目3').build(),
].asGrid()
    .gridCols3()
    .gridFlowRowDense()  // 密なパッキング
    .gap4()
    .build()
```

</details>

<details>
<summary><strong>📜 スクロールとオーバーフロー</strong></summary>

```dart
// オーバーフロー自動
Container(
  width: 200,
  height: 200,
  child: Text('長いコンテンツ...'),
)
    .asScrollView()
    .overflowAuto()      // 必要に応じて自動スクロール
    .build()

// オーバーフロー非表示
Text('クリップされるコンテンツ')
    .asScrollView()
    .overflowHidden()   // オーバーフローをクリップ
    .build()
    .asContainer()
    .w(200)
    .h(100)
    .build()

// オーバースクロール動作
ListView(
  children: [...],
)
    .asScrollView()
    .overflowYAuto()
    .overscrollContain()  // オーバースクロールを制限
    .build()
```

</details>

<details>
<summary><strong>🎮 インタラクティブ要素</strong></summary>

```dart
// クリック可能なボタン
Text('クリックしてください')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()
    .px6()
    .py3()
    .bgBlue600()
    .r8()
    .shadow()
    .onTap(() {
      print('ボタンがクリックされました！');
    })

// 手動のGestureDetectorは不要！
```

</details>

## 🌐 プラットフォームサポート

### ✅ 完全サポートプラットフォーム

このパッケージはすべてのFlutterプラットフォームをサポートします：

- 📱 **Android** - モバイルアプリの完全サポート
- 🍎 **iOS** - 完全なiOS互換性  
- 🌐 **Web** - Webアプリケーションサポート
- 🖥️ **Windows** - Windowsデスクトップアプリ
- 🍎 **macOS** - macOSデスクトップアプリ  
- 🐧 **Linux** - Linuxデスクトップアプリ

### 🎯 ゼロ設定が必要

すべてのプラットフォームで追加設定なしで動作します。

## 🎨 完全なカラーシステム

### 🌈 すべてのTailwindCSSカラーが利用可能

**21カラーファミリー × 11シェード = 231色**

- **ニュートラル**：Gray、Slate、Zinc、Neutral、Stone
- **暖色**：Red、Orange、Amber、Yellow、Lime
- **寒色**：Green、Emerald、Teal、Cyan、Sky、Blue、Indigo、Violet、Purple
- **アクセント**：Fuchsia、Pink、Rose

**使用方法：**
```dart
// 背景色
.bgBlue600()    .bgRed500()    .bgGreen400()

// テキスト色
.textBlue600()  .textRed500()  .textGreen400()

// ボーダー色
.borderBlue600() .borderRed500() .borderGreen400()
```

## 📚 高度な例

<details>
<summary><strong>🏢 ダッシュボードレイアウト</strong></summary>

```dart
[
  // ヘッダー
  Text('ダッシュボード')
      .asText()
      .text2xl()
      .fontBold()
      .textGray900()
      .asContainer()
      .px6()
      .py4()
      .bgWhite()
      .borderB()
      .borderGray200()
      .build(),
  
  // コンテンツ領域
  [
    // サイドバー
    [
      Text('ナビゲーション').build(),
      Text('メニュー項目1').build(),
      Text('メニュー項目2').build(),
    ].asFlex()
        .flexCol()
        .itemsStart()
        .asContainer()
        .bgGray50()
        .p4()
        .w64()
        .build(),
    
    // メインコンテンツ
    Text('メインコンテンツ領域')
        .asContainer()
        .bgWhite()
        .p6()
        .wFull()
        .build(),
  ].asFlex()
      .flexRow()
      .itemsStretch()
      .asContainer()
      .hFull()
      .build(),
].asFlex()
    .flexCol()
    .asContainer()
    .hFull()
    .bgGray100()
    .build()
```

</details>

<details>
<summary><strong>💳 製品カード</strong></summary>

```dart
[
  // 製品画像プレースホルダー
  Container(height: 200, color: Colors.grey[300]),
  
  // 製品情報
  [
    Text('製品名')
        .asText()
        .textLg()
        .fontSemibold()
        .textGray900()
        .build(),
    
    Text('\$29.99')
        .asText()
        .textXl()
        .fontBold()
        .textGreen600()
        .build(),
    
    Text('製品の説明はここに...')
        .asText()
        .textSm()
        .textGray600()
        .build(),
    
    // アクションボタン
    [
      Text('カートに追加')
          .asText()
          .textWhite()
          .fontMedium()
          .asContainer()
          .px4()
          .py2()
          .bgBlue600()
          .r6()
          .onTap(() {}),
          
      Text('♡')
          .asText()
          .textGray400()
          .asContainer()
          .px3()
          .py2()
          .border()
          .borderGray300()
          .r6()
          .onTap(() {}),
    ].asFlex()
        .flexRow()
        .justifyBetween()
        .itemsCenter()
        .build(),
  ].asFlex()
      .flexCol()
      .itemsStart()
      .asContainer()
      .p4()
      .build(),
].asFlex()
    .flexCol()
    .asContainer()
    .bgWhite()
    .r12()
    .shadowLg()
    .build()
```

</details>

## 🎯 パフォーマンスとベストプラクティス

### ⚡ パフォーマンスの利点

**以前（複数のネストされたコンテナ）：**
```
Container
  └── Container (padding)
      └── Container (background)
          └── Container (border)
              └── Container (shadow)
                  └── Text
```

**後（単一の最適化されたコンテナ）：**
```
Container (すべてのプロパティがマージ)
  └── Text
```

**結果**：🚀 **widgetが5倍少なく、レンダリングが3倍高速**

### 📋 推奨チェーン順序

```dart
// 最適なチェーンパターン
Text('テキスト')
    .asText()           // 1. テキストビルダーに変換
    .textXl()           // 2. テキスト固有のスタイル
    .fontBold()         // 
    .textBlue600()      // 
    .asContainer()      // 3. コンテナビルダーに変換
    .px6()              // 4. 間隔
    .py3()              // 
    .bgWhite()          // 5. 背景
    .border()           // 6. ボーダー
    .borderGray300()    // 
    .r8()               // 7. 角丸
    .shadow()           // 8. エフェクト
    .build()            // 9. 最終ビルド
```

## 📖 APIリファレンス

### 🏗️ コアビルダー

<details>
<summary><strong>TextBuilderメソッド</strong></summary>

```dart
// テキストサイズ
.textXs()     .textSm()     .textBase()   .textLg()
.textXl()     .text2xl()    .text3xl()    .text4xl()

// フォント太さ  
.fontThin()   .fontLight()  .fontNormal() .fontMedium()
.fontSemibold() .fontBold() .fontExtrabold() .fontBlack()

// テキスト色（すべてのTailwindCSS色）
.textWhite()  .textBlack()  .textGray50() ... .textGray950()
.textRed50()  ... .textRed950()  // すべてのカラーファミリー

// テキスト整列
.textLeft()   .textCenter() .textRight()  .textJustify()

// テキスト装飾
.underline()  .overline()   .lineThrough() .noUnderline()
.decorationSolid() .decorationDouble() .decorationDotted()
.decorationDashed() .decorationWavy()

// テキスト変換
.uppercase()  .lowercase()  .capitalize()  .normalCase()

// テキストオーバーフロー
.truncate()   .textEllipsis() .textClip()
.textWrap()   .textNowrap()
```

</details>

<details>
<summary><strong>ContainerBuilderメソッド</strong></summary>

```dart
// パディングとマージン
.p0() .p1() .p2() .p3() .p4() ... .p96()
.px0() .py0() .pl0() .pr0() .pt0() .pb0()
.paddingStart() .paddingEnd()  // RTLサポート
.m0() .m1() .m2() ... .m96()

// 背景色
.bgWhite() .bgBlack() .bgTransparent()
.bgGray50() ... .bgGray950() // すべてのカラーファミリー

// ボーダー
.border() .borderT() .borderR() .borderB() .borderL()
.borderStart() .borderEnd()  // RTLサポート
.border0() .border2() .border4() .border8()

// ボーダー色
.borderGray50() ... .borderGray950() // すべてのカラーファミリー

// 角丸
.r0() .r1() .r2() .r3() .r4() .r6() .r8() .r12() .r16()
.roundedStart() .roundedEnd()  // RTLサポート

// シャドウ
.shadow() .shadowSm() .shadowMd() .shadowLg() .shadowXl()

// サイズ
.w0() .w1() ... .w96() .wAuto() .wFull() .wScreen()
.h0() .h1() ... .h96() .hAuto() .hFull() .hScreen()

// サイズ制約
.minW0() ... .minW96() .minWAuto() .minWFull() .minWScreen()
.maxW0() ... .maxW96() .maxWAuto() .maxWFull() .maxWScreen()
.minH0() ... .minH96() .minHAuto() .minHFull() .minHScreen()
.maxH0() ... .maxH96() .maxHAuto() .maxHFull() .maxHScreen()

// 位置
.positionStatic() .positionRelative() .positionAbsolute()
.positionFixed() .positionSticky()
.top0() .right0() .bottom0() .left0()
.start() .end()  // RTLサポート

// アスペクト比
.aspectRatio() .aspectSquare() .aspectVideo() .aspectAuto()

// Z-Index
.z0() .z10() .z20() .z30() .z40() .z50() .zAuto()
```

</details>

<details>
<summary><strong>FlexBuilderメソッド</strong></summary>

```dart
// 方向
.flexRow() .flexCol()

// 主軸整列  
.justifyStart() .justifyEnd() .justifyCenter()
.justifyBetween() .justifyAround() .justifyEvenly()

// 交差軸整列
.itemsStart() .itemsEnd() .itemsCenter()
.itemsStretch() .itemsBaseline()

// Flexプロパティ
.flex1() .flex2() .flex3()
.flexAuto() .flexNone() .flex(int)

// 折り返し
.flexWrap() .flexNoWrap()

// 間隔
.gap1() .gap2() .gap3() .gap4() .gap6() .gap8()

// 子要素間隔
.spaceX1() .spaceX2() .spaceX4() .spaceXReverse()
.spaceY1() .spaceY2() .spaceY4() .spaceYReverse()

// 子要素分割
.divideX() .divideY()
.divideColor() .divideWidth()
.divideSolid() .divideNone()
```

</details>

<details>
<summary><strong>GridBuilderメソッド</strong></summary>

```dart
// Grid列
.gridCols1() .gridCols2() .gridCols3() ... .gridCols12()
.gridColsNone() .gridColsSubgrid()

// Grid行
.gridRows1() .gridRows2() .gridRows3() ... .gridRows12()
.gridRowsNone() .gridRowsSubgrid()

// 間隔
.gap4() .gapX4() .gapY4()

// 自動フロー
.gridFlowRow() .gridFlowCol()
.gridFlowRowDense() .gridFlowColDense()

// 整列
.justifyItemsStart() .justifyItemsEnd() .justifyItemsCenter()
.alignItemsStart() .alignItemsEnd() .alignItemsCenter()
.placeContentStart() .placeContentCenter() .placeContentBetween()
```

</details>

<details>
<summary><strong>ScrollBuilderメソッド</strong></summary>

```dart
// オーバーフロー
.overflowAuto() .overflowHidden() .overflowClip()
.overflowVisible() .overflowScroll()

// オーバーフロー X/Y
.overflowXAuto() .overflowYAuto()
.overflowXHidden() .overflowYHidden()
.overflowXClip() .overflowYClip()
.overflowXVisible() .overflowYVisible()
.overflowXScroll() .overflowYScroll()

// オーバースクロール動作
.overscrollAuto() .overscrollContain() .overscrollNone()
.overscrollXAuto() .overscrollXContain() .overscrollXNone()
.overscrollYAuto() .overscrollYContain() .overscrollYNone()
```

</details>

## ❓ よくある質問

<details>
<summary><strong>直接widgetスタイリングの代わりにビルダーパターンを使用する理由は？</strong></summary>

1. **パフォーマンス**：ネストされたコンテナの代わりに単一の最適化されたwidgetを作成
2. **可読性**：CSSクラスのように読める自己文書化コード
3. **型安全**：完全なコンパイル時チェックとIntelliSenseサポート
4. **保守性**：すべてのスタイリングニーズにわたる一貫したAPI
5. **メモリ効率**：widgetツリーの深度を減らす

</details>

<details>
<summary><strong>レスポンシブデザインをどのように処理しますか？</strong></summary>

ビルダーと一緒にFlutterの組み込みレスポンシブツールを使用：

```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      // デスクトップレイアウト
      return [widgets].asFlex().flexRow().build();
    } else {
      // モバイルレイアウト  
      return [widgets].asFlex().flexCol().build();
    }
  },
)
```

</details>

<details>
<summary><strong>従来のFlutter widgetとビルダーを混在させることができますか？</strong></summary>

はい！ビルダーは既存のFlutterコードとシームレスに動作するように設計されています：

```dart
Column(
  children: [
    // 従来のFlutter
    Container(
      padding: EdgeInsets.all(16),
      child: Text('従来'),
    ),
    
    // TailwindCSS Build
    Text('モダン')
        .asText()
        .textBlue600()
        .asContainer()
        .p4()
        .bgGray100()
        .build(),
  ],
)
```

</details>

## 🤝 貢献

貢献を歓迎します！これはpre-1.0.0パッケージなので：

1. **問題を確認**：既存の問題を確認するか、新しい問題を作成
2. **変更を議論**：大きな変更については、まず議論してください
3. **パターンに従う**：確立されたビルダーパターンアーキテクチャを使用
4. **テストを追加**：新機能にテストを含める
5. **ドキュメントを更新**：新機能のドキュメントを更新

## 🌟 コミュニティ

- 📖 **ドキュメント**：[pub.dev/packages/tailwindcss_build](https://pub.dev/packages/tailwindcss_build)
- 🐛 **問題**：[GitHub Issues](https://github.com/Not996NotOT/tailwindcss_build/issues)
- 💬 **ディスカッション**：[GitHub Discussions](https://github.com/Not996NotOT/tailwindcss_build/discussions)

## 📄 ライセンス

このプロジェクトはMITライセンスの下でライセンスされています - 詳細は[LICENSE](LICENSE)ファイルを参照してください。

## 🙏 謝辞

- [Tailwind CSS](https://tailwindcss.com/)にインスパイアされました
- [Flutter](https://flutter.dev/)コミュニティのために構築されました
- すべての貢献者とユーザーに感謝します

---

**Flutter開発を革新する準備はできましたか？** 
```bash
flutter pub add tailwindcss_build
```

*TailwindCSS Buildで冗長なFlutterコードをエレガントで保守可能かつ高性能なUI宣言に変換します。*
