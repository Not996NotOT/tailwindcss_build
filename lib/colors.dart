import 'package:flutter/material.dart';

/// Tailwind CSS Color system for Flutter
/// Complete color palette matching TailwindCSS v4.1 specifications
/// Each color includes 11 steps: 50, 100, 200, 300, 400, 500, 600, 700, 800, 900, 950

class TwColors {
  
  // ===== Special Colors =====
  
  /// Transparent color
  static const Color transparent = Colors.transparent;
  
  /// Current color (inherit from parent)
  static const Color current = Colors.transparent; // Placeholder for current context color
  
  /// Pure black
  static const Color black = Color(0xFF000000);
  
  /// Pure white  
  static const Color white = Color(0xFFFFFFFF);

  // ===== Red Color Palette =====
  
  /// red-50
  static const Color red50 = Color(0xFFFEF2F2);
  /// red-100
  static const Color red100 = Color(0xFFFEE2E2);
  /// red-200
  static const Color red200 = Color(0xFFFECACA);
  /// red-300
  static const Color red300 = Color(0xFFFCA5A5);
  /// red-400
  static const Color red400 = Color(0xFFF87171);
  /// red-500
  static const Color red500 = Color(0xFFEF4444);
  /// red-600
  static const Color red600 = Color(0xFFDC2626);
  /// red-700
  static const Color red700 = Color(0xFFB91C1C);
  /// red-800
  static const Color red800 = Color(0xFF991B1B);
  /// red-900
  static const Color red900 = Color(0xFF7F1D1D);
  /// red-950
  static const Color red950 = Color(0xFF450A0A);

  // ===== Orange Color Palette =====
  
  /// orange-50
  static const Color orange50 = Color(0xFFFFF7ED);
  /// orange-100
  static const Color orange100 = Color(0xFFFFEDD5);
  /// orange-200
  static const Color orange200 = Color(0xFFFED7AA);
  /// orange-300
  static const Color orange300 = Color(0xFFFDB574);
  /// orange-400
  static const Color orange400 = Color(0xFFFB923C);
  /// orange-500
  static const Color orange500 = Color(0xFFF97316);
  /// orange-600
  static const Color orange600 = Color(0xFFEA580C);
  /// orange-700
  static const Color orange700 = Color(0xFFC2410C);
  /// orange-800
  static const Color orange800 = Color(0xFF9A3412);
  /// orange-900
  static const Color orange900 = Color(0xFF7C2D12);
  /// orange-950
  static const Color orange950 = Color(0xFF431407);

  // ===== Amber Color Palette =====
  
  /// amber-50
  static const Color amber50 = Color(0xFFFFFBEB);
  /// amber-100
  static const Color amber100 = Color(0xFFFEF3C7);
  /// amber-200
  static const Color amber200 = Color(0xFFFDE68A);
  /// amber-300
  static const Color amber300 = Color(0xFFFCD34D);
  /// amber-400
  static const Color amber400 = Color(0xFFFBBF24);
  /// amber-500
  static const Color amber500 = Color(0xFFF59E0B);
  /// amber-600
  static const Color amber600 = Color(0xFFD97706);
  /// amber-700
  static const Color amber700 = Color(0xFFB45309);
  /// amber-800
  static const Color amber800 = Color(0xFF92400E);
  /// amber-900
  static const Color amber900 = Color(0xFF78350F);
  /// amber-950
  static const Color amber950 = Color(0xFF451A03);

  // ===== Yellow Color Palette =====
  
  /// yellow-50
  static const Color yellow50 = Color(0xFFFEFCE8);
  /// yellow-100
  static const Color yellow100 = Color(0xFFFEF9C3);
  /// yellow-200
  static const Color yellow200 = Color(0xFFFEF08A);
  /// yellow-300
  static const Color yellow300 = Color(0xFFFDE047);
  /// yellow-400
  static const Color yellow400 = Color(0xFFFACC15);
  /// yellow-500
  static const Color yellow500 = Color(0xFFEAB308);
  /// yellow-600
  static const Color yellow600 = Color(0xFFCA8A04);
  /// yellow-700
  static const Color yellow700 = Color(0xFFA16207);
  /// yellow-800
  static const Color yellow800 = Color(0xFF854D0E);
  /// yellow-900
  static const Color yellow900 = Color(0xFF713F12);
  /// yellow-950
  static const Color yellow950 = Color(0xFF422006);

  // ===== Lime Color Palette =====
  
  /// lime-50
  static const Color lime50 = Color(0xFFF7FEE7);
  /// lime-100
  static const Color lime100 = Color(0xFFECFCCB);
  /// lime-200
  static const Color lime200 = Color(0xFFD9F99D);
  /// lime-300
  static const Color lime300 = Color(0xFFBEF264);
  /// lime-400
  static const Color lime400 = Color(0xFFA3E635);
  /// lime-500
  static const Color lime500 = Color(0xFF84CC16);
  /// lime-600
  static const Color lime600 = Color(0xFF65A30D);
  /// lime-700
  static const Color lime700 = Color(0xFF4D7C0F);
  /// lime-800
  static const Color lime800 = Color(0xFF3F6212);
  /// lime-900
  static const Color lime900 = Color(0xFF365314);
  /// lime-950
  static const Color lime950 = Color(0xFF1A2E05);

  // ===== Green Color Palette =====
  
  /// green-50
  static const Color green50 = Color(0xFFF0FDF4);
  /// green-100
  static const Color green100 = Color(0xFFDCFCE7);
  /// green-200
  static const Color green200 = Color(0xFFBBF7D0);
  /// green-300
  static const Color green300 = Color(0xFF86EFAC);
  /// green-400
  static const Color green400 = Color(0xFF4ADE80);
  /// green-500
  static const Color green500 = Color(0xFF22C55E);
  /// green-600
  static const Color green600 = Color(0xFF16A34A);
  /// green-700
  static const Color green700 = Color(0xFF15803D);
  /// green-800
  static const Color green800 = Color(0xFF166534);
  /// green-900
  static const Color green900 = Color(0xFF14532D);
  /// green-950
  static const Color green950 = Color(0xFF052E16);

  // ===== Emerald Color Palette =====
  
  /// emerald-50
  static const Color emerald50 = Color(0xFFECFDF5);
  /// emerald-100
  static const Color emerald100 = Color(0xFFD1FAE5);
  /// emerald-200
  static const Color emerald200 = Color(0xFFA7F3D0);
  /// emerald-300
  static const Color emerald300 = Color(0xFF6EE7B7);
  /// emerald-400
  static const Color emerald400 = Color(0xFF34D399);
  /// emerald-500
  static const Color emerald500 = Color(0xFF10B981);
  /// emerald-600
  static const Color emerald600 = Color(0xFF059669);
  /// emerald-700
  static const Color emerald700 = Color(0xFF047857);
  /// emerald-800
  static const Color emerald800 = Color(0xFF065F46);
  /// emerald-900
  static const Color emerald900 = Color(0xFF064E3B);
  /// emerald-950
  static const Color emerald950 = Color(0xFF022C22);

  // ===== Teal Color Palette =====
  
  /// teal-50
  static const Color teal50 = Color(0xFFF0FDFA);
  /// teal-100
  static const Color teal100 = Color(0xFFCCFBF1);
  /// teal-200
  static const Color teal200 = Color(0xFF99F6E4);
  /// teal-300
  static const Color teal300 = Color(0xFF5EEAD4);
  /// teal-400
  static const Color teal400 = Color(0xFF2DD4BF);
  /// teal-500
  static const Color teal500 = Color(0xFF14B8A6);
  /// teal-600
  static const Color teal600 = Color(0xFF0D9488);
  /// teal-700
  static const Color teal700 = Color(0xFF0F766E);
  /// teal-800
  static const Color teal800 = Color(0xFF115E59);
  /// teal-900
  static const Color teal900 = Color(0xFF134E4A);
  /// teal-950
  static const Color teal950 = Color(0xFF042F2E);

  // ===== Cyan Color Palette =====
  
  /// cyan-50
  static const Color cyan50 = Color(0xFFECFEFF);
  /// cyan-100
  static const Color cyan100 = Color(0xFFCFFAFE);
  /// cyan-200
  static const Color cyan200 = Color(0xFFA5F3FC);
  /// cyan-300
  static const Color cyan300 = Color(0xFF67E8F9);
  /// cyan-400
  static const Color cyan400 = Color(0xFF22D3EE);
  /// cyan-500
  static const Color cyan500 = Color(0xFF06B6D4);
  /// cyan-600
  static const Color cyan600 = Color(0xFF0891B2);
  /// cyan-700
  static const Color cyan700 = Color(0xFF0E7490);
  /// cyan-800
  static const Color cyan800 = Color(0xFF155E75);
  /// cyan-900
  static const Color cyan900 = Color(0xFF164E63);
  /// cyan-950
  static const Color cyan950 = Color(0xFF083344);

  // ===== Sky Color Palette =====
  
  /// sky-50
  static const Color sky50 = Color(0xFFF0F9FF);
  /// sky-100
  static const Color sky100 = Color(0xFFE0F2FE);
  /// sky-200
  static const Color sky200 = Color(0xFFBAE6FD);
  /// sky-300
  static const Color sky300 = Color(0xFF7DD3FC);
  /// sky-400
  static const Color sky400 = Color(0xFF38BDF8);
  /// sky-500
  static const Color sky500 = Color(0xFF0EA5E9);
  /// sky-600
  static const Color sky600 = Color(0xFF0284C7);
  /// sky-700
  static const Color sky700 = Color(0xFF0369A1);
  /// sky-800
  static const Color sky800 = Color(0xFF075985);
  /// sky-900
  static const Color sky900 = Color(0xFF0C4A6E);
  /// sky-950
  static const Color sky950 = Color(0xFF082F49);

  // ===== Blue Color Palette =====
  
  /// blue-50
  static const Color blue50 = Color(0xFFEFF6FF);
  /// blue-100
  static const Color blue100 = Color(0xFFDBEAFE);
  /// blue-200
  static const Color blue200 = Color(0xFFBFDBFE);
  /// blue-300
  static const Color blue300 = Color(0xFF93C5FD);
  /// blue-400
  static const Color blue400 = Color(0xFF60A5FA);
  /// blue-500
  static const Color blue500 = Color(0xFF3B82F6);
  /// blue-600
  static const Color blue600 = Color(0xFF2563EB);
  /// blue-700
  static const Color blue700 = Color(0xFF1D4ED8);
  /// blue-800
  static const Color blue800 = Color(0xFF1E40AF);
  /// blue-900
  static const Color blue900 = Color(0xFF1E3A8A);
  /// blue-950
  static const Color blue950 = Color(0xFF172554);

  // ===== Indigo Color Palette =====
  
  /// indigo-50
  static const Color indigo50 = Color(0xFFEEF2FF);
  /// indigo-100
  static const Color indigo100 = Color(0xFFE0E7FF);
  /// indigo-200
  static const Color indigo200 = Color(0xFFC7D2FE);
  /// indigo-300
  static const Color indigo300 = Color(0xFFA5B4FC);
  /// indigo-400
  static const Color indigo400 = Color(0xFF818CF8);
  /// indigo-500
  static const Color indigo500 = Color(0xFF6366F1);
  /// indigo-600
  static const Color indigo600 = Color(0xFF4F46E5);
  /// indigo-700
  static const Color indigo700 = Color(0xFF4338CA);
  /// indigo-800
  static const Color indigo800 = Color(0xFF3730A3);
  /// indigo-900
  static const Color indigo900 = Color(0xFF312E81);
  /// indigo-950
  static const Color indigo950 = Color(0xFF1E1B4B);

  // ===== Violet Color Palette =====
  
  /// violet-50
  static const Color violet50 = Color(0xFFF5F3FF);
  /// violet-100
  static const Color violet100 = Color(0xFFEDE9FE);
  /// violet-200
  static const Color violet200 = Color(0xFFDDD6FE);
  /// violet-300
  static const Color violet300 = Color(0xFFC4B5FD);
  /// violet-400
  static const Color violet400 = Color(0xFFA78BFA);
  /// violet-500
  static const Color violet500 = Color(0xFF8B5CF6);
  /// violet-600
  static const Color violet600 = Color(0xFF7C3AED);
  /// violet-700
  static const Color violet700 = Color(0xFF6D28D9);
  /// violet-800
  static const Color violet800 = Color(0xFF5B21B6);
  /// violet-900
  static const Color violet900 = Color(0xFF4C1D95);
  /// violet-950
  static const Color violet950 = Color(0xFF2E1065);

  // ===== Purple Color Palette =====
  
  /// purple-50
  static const Color purple50 = Color(0xFFFAF5FF);
  /// purple-100
  static const Color purple100 = Color(0xFFF3E8FF);
  /// purple-200
  static const Color purple200 = Color(0xFFE9D5FF);
  /// purple-300
  static const Color purple300 = Color(0xFFD8B4FE);
  /// purple-400
  static const Color purple400 = Color(0xFFC084FC);
  /// purple-500
  static const Color purple500 = Color(0xFFA855F7);
  /// purple-600
  static const Color purple600 = Color(0xFF9333EA);
  /// purple-700
  static const Color purple700 = Color(0xFF7E22CE);
  /// purple-800
  static const Color purple800 = Color(0xFF6B21A8);
  /// purple-900
  static const Color purple900 = Color(0xFF581C87);
  /// purple-950
  static const Color purple950 = Color(0xFF3B0764);

  // ===== Fuchsia Color Palette =====
  
  /// fuchsia-50
  static const Color fuchsia50 = Color(0xFFFDF4FF);
  /// fuchsia-100
  static const Color fuchsia100 = Color(0xFFFAE8FF);
  /// fuchsia-200
  static const Color fuchsia200 = Color(0xFFF5D0FE);
  /// fuchsia-300
  static const Color fuchsia300 = Color(0xFFF0ABFC);
  /// fuchsia-400
  static const Color fuchsia400 = Color(0xFFE879F9);
  /// fuchsia-500
  static const Color fuchsia500 = Color(0xFFD946EF);
  /// fuchsia-600
  static const Color fuchsia600 = Color(0xFFC026D3);
  /// fuchsia-700
  static const Color fuchsia700 = Color(0xFFA21CAF);
  /// fuchsia-800
  static const Color fuchsia800 = Color(0xFF86198F);
  /// fuchsia-900
  static const Color fuchsia900 = Color(0xFF701A75);
  /// fuchsia-950
  static const Color fuchsia950 = Color(0xFF4A044E);

  // ===== Pink Color Palette =====
  
  /// pink-50
  static const Color pink50 = Color(0xFFFDF2F8);
  /// pink-100
  static const Color pink100 = Color(0xFFFCE7F3);
  /// pink-200
  static const Color pink200 = Color(0xFFFBCFE8);
  /// pink-300
  static const Color pink300 = Color(0xFFF9A8D4);
  /// pink-400
  static const Color pink400 = Color(0xFFF472B6);
  /// pink-500
  static const Color pink500 = Color(0xFFEC4899);
  /// pink-600
  static const Color pink600 = Color(0xFFDB2777);
  /// pink-700
  static const Color pink700 = Color(0xFFBE185D);
  /// pink-800
  static const Color pink800 = Color(0xFF9D174D);
  /// pink-900
  static const Color pink900 = Color(0xFF831843);
  /// pink-950
  static const Color pink950 = Color(0xFF500724);

  // ===== Rose Color Palette =====
  
  /// rose-50
  static const Color rose50 = Color(0xFFFFF1F2);
  /// rose-100
  static const Color rose100 = Color(0xFFFFE4E6);
  /// rose-200
  static const Color rose200 = Color(0xFFFECDD3);
  /// rose-300
  static const Color rose300 = Color(0xFFFDA4AF);
  /// rose-400
  static const Color rose400 = Color(0xFFFB7185);
  /// rose-500
  static const Color rose500 = Color(0xFFF43F5E);
  /// rose-600
  static const Color rose600 = Color(0xFFE11D48);
  /// rose-700
  static const Color rose700 = Color(0xFFBE123C);
  /// rose-800
  static const Color rose800 = Color(0xFF9F1239);
  /// rose-900
  static const Color rose900 = Color(0xFF881337);
  /// rose-950
  static const Color rose950 = Color(0xFF4C0519);

  // ===== Slate Color Palette =====
  
  /// slate-50
  static const Color slate50 = Color(0xFFF8FAFC);
  /// slate-100
  static const Color slate100 = Color(0xFFF1F5F9);
  /// slate-200
  static const Color slate200 = Color(0xFFE2E8F0);
  /// slate-300
  static const Color slate300 = Color(0xFFCBD5E1);
  /// slate-400
  static const Color slate400 = Color(0xFF94A3B8);
  /// slate-500
  static const Color slate500 = Color(0xFF64748B);
  /// slate-600
  static const Color slate600 = Color(0xFF475569);
  /// slate-700
  static const Color slate700 = Color(0xFF334155);
  /// slate-800
  static const Color slate800 = Color(0xFF1E293B);
  /// slate-900
  static const Color slate900 = Color(0xFF0F172A);
  /// slate-950
  static const Color slate950 = Color(0xFF020617);

  // ===== Gray Color Palette =====
  
  /// gray-50
  static const Color gray50 = Color(0xFFF9FAFB);
  /// gray-100
  static const Color gray100 = Color(0xFFF3F4F6);
  /// gray-200
  static const Color gray200 = Color(0xFFE5E7EB);
  /// gray-300
  static const Color gray300 = Color(0xFFD1D5DB);
  /// gray-400
  static const Color gray400 = Color(0xFF9CA3AF);
  /// gray-500
  static const Color gray500 = Color(0xFF6B7280);
  /// gray-600
  static const Color gray600 = Color(0xFF4B5563);
  /// gray-700
  static const Color gray700 = Color(0xFF374151);
  /// gray-800
  static const Color gray800 = Color(0xFF1F2937);
  /// gray-900
  static const Color gray900 = Color(0xFF111827);
  /// gray-950
  static const Color gray950 = Color(0xFF030712);

  // ===== Zinc Color Palette =====
  
  /// zinc-50
  static const Color zinc50 = Color(0xFFFAFAFA);
  /// zinc-100
  static const Color zinc100 = Color(0xFFF4F4F5);
  /// zinc-200
  static const Color zinc200 = Color(0xFFE4E4E7);
  /// zinc-300
  static const Color zinc300 = Color(0xFFD4D4D8);
  /// zinc-400
  static const Color zinc400 = Color(0xFFA1A1AA);
  /// zinc-500
  static const Color zinc500 = Color(0xFF71717A);
  /// zinc-600
  static const Color zinc600 = Color(0xFF52525B);
  /// zinc-700
  static const Color zinc700 = Color(0xFF3F3F46);
  /// zinc-800
  static const Color zinc800 = Color(0xFF27272A);
  /// zinc-900
  static const Color zinc900 = Color(0xFF18181B);
  /// zinc-950
  static const Color zinc950 = Color(0xFF09090B);

  // ===== Neutral Color Palette =====
  
  /// neutral-50
  static const Color neutral50 = Color(0xFFFAFAFA);
  /// neutral-100
  static const Color neutral100 = Color(0xFFF5F5F5);
  /// neutral-200
  static const Color neutral200 = Color(0xFFE5E5E5);
  /// neutral-300
  static const Color neutral300 = Color(0xFFD4D4D4);
  /// neutral-400
  static const Color neutral400 = Color(0xFFA3A3A3);
  /// neutral-500
  static const Color neutral500 = Color(0xFF737373);
  /// neutral-600
  static const Color neutral600 = Color(0xFF525252);
  /// neutral-700
  static const Color neutral700 = Color(0xFF404040);
  /// neutral-800
  static const Color neutral800 = Color(0xFF262626);
  /// neutral-900
  static const Color neutral900 = Color(0xFF171717);
  /// neutral-950
  static const Color neutral950 = Color(0xFF0A0A0A);

  // ===== Stone Color Palette =====
  
  /// stone-50
  static const Color stone50 = Color(0xFFFAFAF9);
  /// stone-100
  static const Color stone100 = Color(0xFFF5F5F4);
  /// stone-200
  static const Color stone200 = Color(0xFFE7E5E4);
  /// stone-300
  static const Color stone300 = Color(0xFFD6D3D1);
  /// stone-400
  static const Color stone400 = Color(0xFFA8A29E);
  /// stone-500
  static const Color stone500 = Color(0xFF78716C);
  /// stone-600
  static const Color stone600 = Color(0xFF57534E);
  /// stone-700
  static const Color stone700 = Color(0xFF44403C);
  /// stone-800
  static const Color stone800 = Color(0xFF292524);
  /// stone-900
  static const Color stone900 = Color(0xFF1C1917);
  /// stone-950
  static const Color stone950 = Color(0xFF0C0A09);

  // ===== Color Maps for Easy Access =====
  
  /// Red color variants map
  static const Map<int, Color> redColors = {
    50: red50,
    100: red100,
    200: red200,
    300: red300,
    400: red400,
    500: red500,
    600: red600,
    700: red700,
    800: red800,
    900: red900,
    950: red950,
  };

  /// Orange color variants map
  static const Map<int, Color> orangeColors = {
    50: orange50,
    100: orange100,
    200: orange200,
    300: orange300,
    400: orange400,
    500: orange500,
    600: orange600,
    700: orange700,
    800: orange800,
    900: orange900,
    950: orange950,
  };

  /// Amber color variants map
  static const Map<int, Color> amberColors = {
    50: amber50,
    100: amber100,
    200: amber200,
    300: amber300,
    400: amber400,
    500: amber500,
    600: amber600,
    700: amber700,
    800: amber800,
    900: amber900,
    950: amber950,
  };

  /// Yellow color variants map
  static const Map<int, Color> yellowColors = {
    50: yellow50,
    100: yellow100,
    200: yellow200,
    300: yellow300,
    400: yellow400,
    500: yellow500,
    600: yellow600,
    700: yellow700,
    800: yellow800,
    900: yellow900,
    950: yellow950,
  };

  /// Lime color variants map
  static const Map<int, Color> limeColors = {
    50: lime50,
    100: lime100,
    200: lime200,
    300: lime300,
    400: lime400,
    500: lime500,
    600: lime600,
    700: lime700,
    800: lime800,
    900: lime900,
    950: lime950,
  };

  /// Green color variants map
  static const Map<int, Color> greenColors = {
    50: green50,
    100: green100,
    200: green200,
    300: green300,
    400: green400,
    500: green500,
    600: green600,
    700: green700,
    800: green800,
    900: green900,
    950: green950,
  };

  /// Emerald color variants map
  static const Map<int, Color> emeraldColors = {
    50: emerald50,
    100: emerald100,
    200: emerald200,
    300: emerald300,
    400: emerald400,
    500: emerald500,
    600: emerald600,
    700: emerald700,
    800: emerald800,
    900: emerald900,
    950: emerald950,
  };

  /// Teal color variants map
  static const Map<int, Color> tealColors = {
    50: teal50,
    100: teal100,
    200: teal200,
    300: teal300,
    400: teal400,
    500: teal500,
    600: teal600,
    700: teal700,
    800: teal800,
    900: teal900,
    950: teal950,
  };

  /// Cyan color variants map
  static const Map<int, Color> cyanColors = {
    50: cyan50,
    100: cyan100,
    200: cyan200,
    300: cyan300,
    400: cyan400,
    500: cyan500,
    600: cyan600,
    700: cyan700,
    800: cyan800,
    900: cyan900,
    950: cyan950,
  };

  /// Sky color variants map
  static const Map<int, Color> skyColors = {
    50: sky50,
    100: sky100,
    200: sky200,
    300: sky300,
    400: sky400,
    500: sky500,
    600: sky600,
    700: sky700,
    800: sky800,
    900: sky900,
    950: sky950,
  };

  /// Blue color variants map
  static const Map<int, Color> blueColors = {
    50: blue50,
    100: blue100,
    200: blue200,
    300: blue300,
    400: blue400,
    500: blue500,
    600: blue600,
    700: blue700,
    800: blue800,
    900: blue900,
    950: blue950,
  };

  /// Indigo color variants map
  static const Map<int, Color> indigoColors = {
    50: indigo50,
    100: indigo100,
    200: indigo200,
    300: indigo300,
    400: indigo400,
    500: indigo500,
    600: indigo600,
    700: indigo700,
    800: indigo800,
    900: indigo900,
    950: indigo950,
  };

  /// Violet color variants map
  static const Map<int, Color> violetColors = {
    50: violet50,
    100: violet100,
    200: violet200,
    300: violet300,
    400: violet400,
    500: violet500,
    600: violet600,
    700: violet700,
    800: violet800,
    900: violet900,
    950: violet950,
  };

  /// Purple color variants map
  static const Map<int, Color> purpleColors = {
    50: purple50,
    100: purple100,
    200: purple200,
    300: purple300,
    400: purple400,
    500: purple500,
    600: purple600,
    700: purple700,
    800: purple800,
    900: purple900,
    950: purple950,
  };

  /// Fuchsia color variants map
  static const Map<int, Color> fuchsiaColors = {
    50: fuchsia50,
    100: fuchsia100,
    200: fuchsia200,
    300: fuchsia300,
    400: fuchsia400,
    500: fuchsia500,
    600: fuchsia600,
    700: fuchsia700,
    800: fuchsia800,
    900: fuchsia900,
    950: fuchsia950,
  };

  /// Pink color variants map
  static const Map<int, Color> pinkColors = {
    50: pink50,
    100: pink100,
    200: pink200,
    300: pink300,
    400: pink400,
    500: pink500,
    600: pink600,
    700: pink700,
    800: pink800,
    900: pink900,
    950: pink950,
  };

  /// Rose color variants map
  static const Map<int, Color> roseColors = {
    50: rose50,
    100: rose100,
    200: rose200,
    300: rose300,
    400: rose400,
    500: rose500,
    600: rose600,
    700: rose700,
    800: rose800,
    900: rose900,
    950: rose950,
  };

  /// Slate color variants map
  static const Map<int, Color> slateColors = {
    50: slate50,
    100: slate100,
    200: slate200,
    300: slate300,
    400: slate400,
    500: slate500,
    600: slate600,
    700: slate700,
    800: slate800,
    900: slate900,
    950: slate950,
  };

  /// Gray color variants map
  static const Map<int, Color> grayColors = {
    50: gray50,
    100: gray100,
    200: gray200,
    300: gray300,
    400: gray400,
    500: gray500,
    600: gray600,
    700: gray700,
    800: gray800,
    900: gray900,
    950: gray950,
  };

  /// Zinc color variants map
  static const Map<int, Color> zincColors = {
    50: zinc50,
    100: zinc100,
    200: zinc200,
    300: zinc300,
    400: zinc400,
    500: zinc500,
    600: zinc600,
    700: zinc700,
    800: zinc800,
    900: zinc900,
    950: zinc950,
  };

  /// Neutral color variants map
  static const Map<int, Color> neutralColors = {
    50: neutral50,
    100: neutral100,
    200: neutral200,
    300: neutral300,
    400: neutral400,
    500: neutral500,
    600: neutral600,
    700: neutral700,
    800: neutral800,
    900: neutral900,
    950: neutral950,
  };

  /// Stone color variants map
  static const Map<int, Color> stoneColors = {
    50: stone50,
    100: stone100,
    200: stone200,
    300: stone300,
    400: stone400,
    500: stone500,
    600: stone600,
    700: stone700,
    800: stone800,
    900: stone900,
    950: stone950,
  };

  /// All color palettes map for dynamic access
  static const Map<String, Map<int, Color>> allColors = {
    'red': redColors,
    'orange': orangeColors,
    'amber': amberColors,
    'yellow': yellowColors,
    'lime': limeColors,
    'green': greenColors,
    'emerald': emeraldColors,
    'teal': tealColors,
    'cyan': cyanColors,
    'sky': skyColors,
    'blue': blueColors,
    'indigo': indigoColors,
    'violet': violetColors,
    'purple': purpleColors,
    'fuchsia': fuchsiaColors,
    'pink': pinkColors,
    'rose': roseColors,
    'slate': slateColors,
    'gray': grayColors,
    'zinc': zincColors,
    'neutral': neutralColors,
    'stone': stoneColors,
  };

  // ===== Utility Methods =====
  
  /// Get color by name and variant
  /// Usage: TwColors.getColor('red', 500) returns red-500
  static Color? getColor(String colorName, int variant) {
    return allColors[colorName]?[variant];
  }

  /// Get default color variant (500) by name
  /// Usage: TwColors.getDefaultColor('red') returns red-500
  static Color? getDefaultColor(String colorName) {
    return getColor(colorName, 500);
  }

  /// Check if color name exists
  static bool hasColor(String colorName) {
    return allColors.containsKey(colorName);
  }

  /// Get all available color names
  static List<String> get colorNames => allColors.keys.toList();

  /// Get all available variants for any color
  static List<int> get colorVariants => [50, 100, 200, 300, 400, 500, 600, 700, 800, 900, 950];
}
