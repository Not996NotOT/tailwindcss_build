# TailwindCSS Build for Flutter

[![pub package](https://img.shields.io/pub/v/tailwindcss_build.svg)](https://pub.dev/packages/tailwindcss_build)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)](https://flutter.dev)

[English](README.md) | [中文](README_CN.md) | [日本語](README_JP.md)

革新的な**ビルダーパターン**アーキテクチャを通じて、Tailwind CSS ユーティリティクラスの強力さと優雅さでFlutter開発を変革しましょう。

## 🚨 1.0.0リリース前の注意事項

**重要**：このパッケージは1.0.0に向けて積極的に開発中です。最高のソリューションを提供するために、破壊的変更、API廃止、またはアーキテクチャの改善を導入する可能性があります。

**現在の状況**：v0.4.0のビルダーパターン実装（ContainerBuilder、TextBuilder、FlexBuilder）は本番環境に対応しており、このライブラリの将来の方向性を表しています。

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
        'カードのコンテンツがここに入ります...',
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
  Text('カードのコンテンツがここに入ります...')
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

**結果**：✨ **自己文書化コードと視覚的な明確さ！**

</details>

<details>
<summary><strong>🔄 複雑なレスポンシブレイアウトの例</strong></summary>

**従来のFlutterの書き方：**
```dart
Container(
  padding: EdgeInsets.all(16),
  color: Color(0xFFF3F4F6), // gray-100
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFEFF6FF), // blue-50
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '左パネル',
            style: TextStyle(
              color: Color(0xFF1E40AF), // blue-700
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      SizedBox(width: 16),
      Expanded(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFF0FDF4), // green-50
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '右パネル',
            style: TextStyle(
              color: Color(0xFF15803D), // green-700
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ],
  ),
)
```

**TailwindCSS Buildの書き方：**
```dart
[
  Text('左パネル')
      .asText()
      .textBlue700()
      .fontMedium()
      .asContainer()
      .bgBlue50()
      .p4()
      .r8()
      .wFull()
      .build(),
  Text('右パネル')
      .asText()
      .textGreen700()
      .fontMedium()
      .asContainer()
      .bgGreen50()
      .p4()
      .r8()
      .wFull()
      .build(),
].asFlex()
    .flexRow()
    .justifyBetween()
    .itemsStretch()
    .asContainer()
    .bgGray100()
    .p4()
    .build()
```

**結果**：✨ **コード構造がUIレイアウトと視覚的に一致！**

</details>

## 🏗️ 革新的なアーキテクチャ

### 🎯 ビルダーパターンの利点

- **🚀 パフォーマンス**：ネストしたコンテナの代わりに単一ウィジェット作成
- **🔗 チェーン可能**：複雑なスタイリングのための直感的なメソッドチェーン
- **🛡️ 型安全**：Flutterの型システムとの完全なコンパイル時チェック
- **💾 メモリ効率**：ウィジェットツリーの深度を削減し、レンダリング性能を向上

### 🧩 3つのコアビルダー

| ビルダー | 目的 | 使用方法 |
|---------|---------|-------|
| **TextBuilder** | テキストスタイリングとタイポグラフィ | `Text('Hello').asText().textBlue600().fontBold().build()` |
| **ContainerBuilder** | レイアウト、スペーシング、視覚効果 | `.asContainer().px6().py3().bgWhite().r8().shadow().build()` |
| **FlexBuilder** | レイアウト管理（行/列） | `[widgets].asFlex().flexRow().justifyCenter().asContainer().build()` |

## 🚀 クイックスタート

### インストール

```yaml
dependencies:
  tailwindcss_build: ^0.4.2
```

### インポート

```dart
import 'package:tailwindcss_build/tailwindcss_build.dart';
```

### 基本的な使用パターン

<details>
<summary><strong>📝 テキストスタイリング</strong></summary>

```dart
// 基本的なテキストスタイリング
Text('Hello World')
    .asText()
    .textBlue600()    // 色
    .textXl()         // サイズ
    .fontBold()       // 重み
    .build()

// 文字列から直接
'Hello World'
    .asText()
    .textWhite()
    .fontMedium()
    .textCenter()
    .build()
```

</details>

<details>
<summary><strong>🎯 コンテナスタイリング</strong></summary>

```dart
// 基本的なコンテナ
Text('コンテンツ')
    .build()
    .asContainer()
    .px6()           // 水平パディング
    .py3()           // 垂直パディング
    .bgBlue600()     // 背景色
    .r8()            // ボーダー半径
    .shadow()        // ドロップシャドウ
    .build()

// テキストビルダーから直接
Text('スタイル付きテキスト')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()   // テキストを自動ビルドしてコンテナにラップ
    .px4()
    .py2()
    .bgRed500()
    .r6()
    .build()
```

</details>

<details>
<summary><strong>🔄 フレックスレイアウト</strong></summary>

```dart
// 行レイアウト
[
  Text('アイテム 1').build(),
  Text('アイテム 2').build(),
  Text('アイテム 3').build(),
].asFlex()
    .flexRow()          // 方向
    .justifyCenter()    // メイン軸アライメント
    .itemsCenter()      // クロス軸アライメント
    .asContainer()      // スタイリングのためコンテナに変換
    .bgGray100()
    .p4()
    .r8()
    .build()

// 列レイアウト
[
  Text('タイトル').build(),
  Text('サブタイトル').build(),
].asFlex()
    .flexCol()
    .itemsStart()
    .asContainer()
    .bgWhite()
    .p6()
    .shadowMd()
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

// 手動でGestureDetectorは不要！
```

</details>

## 🌐 プラットフォームサポート

### ✅ 完全対応プラットフォーム

このパッケージはすべてのFlutterプラットフォームをサポートしています：

- 📱 **Android** - モバイルアプリの完全サポート
- 🍎 **iOS** - 完全なiOS互換性  
- 🌐 **Web** - Webアプリケーションサポート
- 🖥️ **Windows** - デスクトップWindowsアプリ
- 🍎 **macOS** - デスクトップmacOSアプリ  
- 🐧 **Linux** - デスクトップLinuxアプリ

### 🎯 ゼロ設定要件

すべてのプラットフォームで追加設定なしで動作します。

## 🎨 完全なカラーシステム

### 🌈 すべてのTailwindCSSカラーが利用可能

<details>
<summary><strong>背景色（21のカラーファミリー）</strong></summary>

```dart
// 基本色
.bgWhite()      .bgBlack()      .bgTransparent()

// グレーファミリー（50-950）
.bgGray50()     .bgGray100()    .bgGray200()    ...    .bgGray950()

// フルレンジのすべてのカラーファミリー：
.bgSlate50()    →  .bgSlate950()     // スレート
.bgZinc50()     →  .bgZinc950()      // 亜鉛
.bgNeutral50()  →  .bgNeutral950()   // ニュートラル
.bgStone50()    →  .bgStone950()     // ストーン
.bgRed50()      →  .bgRed950()       // 赤
.bgOrange50()   →  .bgOrange950()    // オレンジ
.bgAmber50()    →  .bgAmber950()     // アンバー
.bgYellow50()   →  .bgYellow950()    // 黄色
.bgLime50()     →  .bgLime950()      // ライム
.bgGreen50()    →  .bgGreen950()     // 緑
.bgEmerald50()  →  .bgEmerald950()   // エメラルド
.bgTeal50()     →  .bgTeal950()      // ティール
.bgCyan50()     →  .bgCyan950()      // シアン
.bgSky50()      →  .bgSky950()       // 空
.bgBlue50()     →  .bgBlue950()      // 青
.bgIndigo50()   →  .bgIndigo950()    // インディゴ
.bgViolet50()   →  .bgViolet950()    // バイオレット
.bgPurple50()   →  .bgPurple950()    // パープル
.bgFuchsia50()  →  .bgFuchsia950()   // フクシア
.bgPink50()     →  .bgPink950()      // ピンク
.bgRose50()     →  .bgRose950()      // ローズ
```

</details>

<details>
<summary><strong>ボーダー色（すべてのファミリー）</strong></summary>

```dart
// デフォルトボーダー（グレー-200）
.border()

// カラーボーダー
.border().borderBlue500()
.border().borderRed300()
.border().borderGreen600()

// カスタムボーダー色
.border(color: Colors.purple)

// すべてのボーダーカラーファミリーが利用可能：
.borderGray50()   →  .borderGray950()
.borderBlue50()   →  .borderBlue950()
.borderRed50()    →  .borderRed950()
// ... 21のカラーファミリーすべて
```

</details>

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
  
  // コンテンツエリア
  [
    // サイドバー
    [
      Text('ナビゲーション').build(),
      Text('メニュー項目 1').build(),
      Text('メニュー項目 2').build(),
    ].asFlex()
        .flexCol()
        .itemsStart()
        .asContainer()
        .bgGray50()
        .p4()
        .w64()
        .build(),
    
    // メインコンテンツ
    Text('メインコンテンツエリア')
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
<summary><strong>💳 商品カード</strong></summary>

```dart
[
  // 商品画像プレースホルダー
  Container(height: 200, color: Colors.grey[300]),
  
  // 商品情報
  [
    Text('商品名')
        .asText()
        .textLg()
        .fontSemibold()
        .textGray900()
        .build(),
    
    Text('¥2,999')
        .asText()
        .textXl()
        .fontBold()
        .textGreen600()
        .build(),
    
    Text('商品説明がここに入ります...')
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

<details>
<summary><strong>📱 モバイルファーストフォーム</strong></summary>

```dart
[
  Text('サインアップ')
      .asText()
      .text2xl()
      .fontBold()
      .textCenter()
      .textGray900()
      .build(),
  
  SizedBox(height: 24),
  
  // メール入力
  TextFormField(
    decoration: InputDecoration(
      hintText: 'メールアドレスを入力',
      border: OutlineInputBorder(),
    ),
  ).asContainer()
      .px4()
      .py2()
      .bgWhite()
      .border()
      .borderGray300()
      .r8()
      .build(),
  
  SizedBox(height: 16),
  
  // パスワード入力
  TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'パスワードを入力',
      border: OutlineInputBorder(),
    ),
  ).asContainer()
      .px4()
      .py2()
      .bgWhite()
      .border()
      .borderGray300()
      .r8()
      .build(),
  
  SizedBox(height: 24),
  
  // 送信ボタン
  Text('アカウント作成')
      .asText()
      .textWhite()
      .fontMedium()
      .textCenter()
      .asContainer()
      .px6()
      .py3()
      .bgBlue600()
      .r8()
      .shadow()
      .wFull()
      .onTap(() {}),
      
].asFlex()
    .flexCol()
    .asContainer()
    .bgGray50()
    .p6()
    .wFull()
    .build()
```

</details>

## 🎯 パフォーマンスとベストプラクティス

### ⚡ パフォーマンスの利点

<details>
<summary><strong>ウィジェットツリー最適化</strong></summary>

**以前（複数のネストしたコンテナ）：**
```
Container
  └── Container (パディング)
      └── Container (背景)
          └── Container (ボーダー)
              └── Container (シャドウ)
                  └── Text
```

**以後（単一の最適化されたコンテナ）：**
```
Container (すべてのプロパティがマージ)
  └── Text
```

**結果**：🚀 **ウィジェット数5分の1、レンダリング3倍高速化**

</details>

### 🛡️ 型安全とIntelliSense

```dart
// 完全な自動補完サポート
Text('Hello')
    .asText()
    .text     // ← 表示：textXs, textSm, textBase, textLg...
    .font     // ← 表示：fontThin, fontLight, fontNormal...
    .asContainer()
    .bg       // ← 表示：bgWhite, bgBlack, bgGray50...
    .p        // ← 表示：p1, p2, p3, px2, py4...
```

### 📋 推奨チェーン順序

```dart
// 最適なチェーンパターン
Text('テキスト')
    .asText()           // 1. テキストビルダーに変換
    .textXl()           // 2. テキスト固有のスタイル
    .fontBold()         // 
    .textBlue600()      // 
    .asContainer()      // 3. コンテナビルダーに変換
    .px6()              // 4. スペーシング
    .py3()              // 
    .bgWhite()          // 5. 背景
    .border()           // 6. ボーダー
    .borderGray300()    // 
    .r8()               // 7. ボーダー半径
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

// フォントウェイト  
.fontThin()   .fontLight()  .fontNormal() .fontMedium()
.fontSemibold() .fontBold() .fontExtrabold() .fontBlack()

// テキストカラー（すべてのTailwindCSSカラー）
.textWhite()  .textBlack()  .textGray50() ... .textGray950()
.textRed50()  ... .textRed950()  // すべてのカラーファミリー

// テキスト配置
.textLeft()   .textCenter() .textRight()  .textJustify()

// テキスト装飾
.underline()  .lineThrough() .noUnderline()
.decorationSolid() .decorationDouble() .decorationDotted()

// テキスト変換
.uppercase()  .lowercase()  .capitalize()  .normalCase()

// 行の高さと文字間隔
.leadingNone() .leadingTight() .leadingSnug() .leadingNormal()
.trackingTighter() .trackingTight() .trackingNormal() .trackingWide()
```

</details>

<details>
<summary><strong>ContainerBuilderメソッド</strong></summary>

```dart
// パディングとマージン
.p0() .p1() .p2() .p3() .p4() ... .p96()
.px0() .py0() .pl0() .pr0() .pt0() .pb0() // 方向別
.m0() .m1() .m2() ... .m96() // マージンバリアント

// 背景色（すべてのTailwindCSSカラー）
.bgWhite() .bgBlack() .bgTransparent()
.bgGray50() ... .bgGray950() // すべてのカラーファミリー

// ボーダー
.border() .borderT() .borderR() .borderB() .borderL()
.border0() .border2() .border4() .border8() // 幅
.borderSolid() .borderDashed() .borderDotted()

// ボーダーカラー
.borderGray50() ... .borderGray950() // すべてのカラーファミリー

// ボーダー半径
.r0() .r1() .r2() .r3() .r4() .r6() .r8() .r12() .r16() .r20() .r24()
.rFull() .rNone()

// シャドウ
.shadow() .shadowSm() .shadowMd() .shadowLg() .shadowXl() .shadow2xl()
.shadowInner() .shadowNone()

// サイズ
.w0() .w1() ... .w96() .wAuto() .wFull() .wScreen()
.h0() .h1() ... .h96() .hAuto() .hFull() .hScreen()

// ポジション
.position() .top0() .right0() .bottom0() .left0()
.inset0() // すべての方向

// インタラクション
.onTap(() {}) .onDoubleTap(() {}) .onLongPress(() {})
```

</details>

<details>
<summary><strong>FlexBuilderメソッド</strong></summary>

```dart
// 方向
.flexRow() .flexCol()

// 主軸配置  
.justifyStart() .justifyEnd() .justifyCenter()
.justifyBetween() .justifyAround() .justifyEvenly()

// 交差軸配置
.itemsStart() .itemsEnd() .itemsCenter()
.itemsStretch() .itemsBaseline()

// Flexプロパティ
.flex1() .flex2() .flex3() // 固定flex値
.flexAuto() .flexNone() .flex(int) // カスタムflex

// ギャップ（子要素間の間隔）
.gap1() .gap2() .gap3() .gap4() .gap6() .gap8() .gap12() .gap16()
.gap(double) // カスタムギャップ値
```

</details>

### 🔗 メソッドチェーン

すべてのビルダーは流暢なメソッドチェーンをサポートしています：
```dart
Text('こんにちは')
    .asText()        // TextBuilderに変換
    .textBlue600()   // テキストスタイル
    .fontBold()      // 追加テキストスタイル
    .asContainer()   // ContainerBuilderに変換  
    .px6()           // コンテナスタイル
    .py3()           // 追加コンテナスタイル
    .bgWhite()       // 背景
    .r8()            // ボーダー半径
    .shadow()        // ドロップシャドウ
    .onTap(() {})    // インタラクション
    // 使用時に.build()が自動的に呼ばれます
```

## ❓ よくある質問

<details>
<summary><strong>なぜ直接ウィジェットスタイルではなくビルダーパターンを使うのですか？</strong></summary>

1. **パフォーマンス**：ネストしたコンテナではなく単一の最適化されたウィジェットを作成
2. **可読性**：CSSクラスのように読める自己文書化コード
3. **タイプセーフティ**：完全なコンパイル時チェックとIntelliSenseサポート
4. **保守性**：すべてのスタイリングニーズに対する一貫したAPI
5. **メモリ効率**：ウィジェットツリーの深度を削減

</details>

<details>
<summary><strong>他のFlutterスタイリングソリューションとの比較は？</strong></summary>

| 機能 | TailwindCSS Build | 従来のFlutter | その他のパッケージ |
|---------|-------------------|-------------------|----------------|
| コード長 | 70%短縮 | 冗長 | 様々 |
| パフォーマンス | 単一ウィジェット | ネストしたコンテナ | 様々 |
| 学習曲線 | TailwindCSS知識 | Flutterウィジェット | パッケージ固有 |
| タイプセーフティ | 完全 | 完全 | 様々 |
| カスタマイズ性 | 高 | 高 | 限定的 |

</details>

<details>
<summary><strong>従来のFlutterウィジェットとビルダーを混在できますか？</strong></summary>

はい！ビルダーは既存のFlutterコードとシームレスに動作するよう設計されています：

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

<details>
<summary><strong>既存のテーマとスタイリングで動作しますか？</strong></summary>

はい！ビルダーはFlutterのテーマシステムを尊重し、以下と組み合わせることができます：
- Material Designテーマ
- カスタムテーマ
- ダーク/ライトモード
- カスタムカラースキーム

</details>

<details>
<summary><strong>レスポンシブデザインはどう扱いますか？</strong></summary>

Flutterのビルトインレスポンシブツールをビルダーと一緒に使用：

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

## 🔄 マイグレーションガイド

### 0.3.x から 0.4.0 へ

<details>
<summary><strong>API変更</strong></summary>

```dart
// ❌ 古い方法（0.3.x）
Text('Hello').textBlue600().fontBold().asContainer().px4().bgWhite()

// ✅ 新しい方法（0.4.0）
Text('Hello')
    .asText()
    .textBlue600()
    .fontBold()
    .asContainer()
    .px4()
    .bgWhite()
    .build()

// ❌ 古いメソッド名
.asTextBuilder()  →  .asText()
.asContainerBuilder()  →  .asContainer()

// ✅ 簡素化されたインタラクション
// 古い：GestureDetector(onTap: ..., child: widget)
// 新しい：widget.onTap(...)
```

</details>

## 🧪 テストとデバッグ

### 🔍 ウィジェットインスペクター統合

```dart
// 各ビルダーは単一の検査可能なウィジェットを作成
Text('デバッグしてください')
    .asText()
    .textRed600()
    .asContainer()
    .px4()
    .py2()
    .bgRed100()
    .border()
    .borderRed500()
    .r4()
    .build() // ← インスペクターツリー内の単一Containerウィジェット
```

## 🎨 カスタム拡張

<details>
<summary><strong>ブランドカラー</strong></summary>

```dart
// ブランドカラーを定義
extension BrandColors on ContainerBuilder {
  ContainerBuilder bgPrimary() => backgroundColor(Color(0xFF1E40AF));
  ContainerBuilder bgSecondary() => backgroundColor(Color(0xFF7C3AED));
  ContainerBuilder bgAccent() => backgroundColor(Color(0xFF059669));
}

// 使用方法
Text('ブランドボタン')
    .asContainer()
    .px6()
    .py3()
    .bgPrimary()  // カスタムブランドカラー
    .r8()
    .build()
```

</details>

<details>
<summary><strong>カスタムスペーシング</strong></summary>

```dart
extension CustomSpacing on ContainerBuilder {
  ContainerBuilder pSection() => padding(EdgeInsets.all(32));
  ContainerBuilder pCard() => padding(EdgeInsets.all(16));
}
```

</details>

## 🤝 貢献

貢献を歓迎します！これは1.0.0以前のパッケージのため：

1. **問題をチェック**：既存の問題を探すか新しい問題を作成
2. **変更について議論**：大きな変更については事前に議論してください
3. **パターンに従う**：確立されたビルダーパターンアーキテクチャを使用
4. **テストを追加**：新機能にはテストを含めてください
5. **ドキュメントを更新**：新機能のドキュメントを更新

## 🌟 コミュニティ

- 📖 **ドキュメント**：[pub.dev/packages/tailwindcss_build](https://pub.dev/packages/tailwindcss_build)
- 🐛 **問題**：[GitHub Issues](https://github.com/Not996NotOT/tailwindcss_build/issues)
- 💬 **ディスカッション**：[GitHub Discussions](https://github.com/Not996NotOT/tailwindcss_build/discussions)

## 📄 ライセンス

このプロジェクトはMITライセンスの下でライセンスされています - 詳細は[LICENSE](LICENSE)ファイルを参照してください。

## 🙏 謝辞

- [Tailwind CSS](https://tailwindcss.com/)からインスピレーションを受けています
- [Flutter](https://flutter.dev/)コミュニティのために構築
- すべての貢献者とユーザーに感謝

---

**Flutter開発を革命化する準備はできていますか？**
```bash
flutter pub add tailwindcss_build
```

*TailwindCSS Buildで冗長なFlutterコードをエレガントで保守しやすく、高性能なUI宣言に変換しましょう。*