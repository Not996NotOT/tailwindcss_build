/// Tailwind CSS for Flutter
/// 
/// A comprehensive Flutter package that brings the power and convenience 
/// of Tailwind CSS utility classes to Flutter development.
/// 
/// This library provides utility extensions for styling widgets with 
/// familiar Tailwind CSS class names, making it easy to build responsive
/// and consistent UIs.
library tailwindcss_build;

export 'accessibility_utilities.dart';
// Flexbox & Grid
export 'align_content.dart';
export 'align_items.dart' hide CrossAxisAlignmentExt;
export 'align_self.dart';
// Layout utilities
export 'aspect_ratio.dart';
// avatar扩展已删除，使用标准TailwindCSS语法
export 'backdrop_filter.dart';
// Backgrounds
export 'background_attachment.dart';
export 'background_blend_mode.dart';
export 'background_clip.dart';
export 'background_color.dart';
export 'background_image.dart';
export 'background_origin.dart';
export 'background_position.dart';
export 'background_repeat.dart';
export 'background_size.dart';
export 'base_colors.dart';
export 'base_styles.dart';
export 'border_color.dart';
// Borders
export 'border_radius.dart';
export 'border_style.dart';
export 'border_width.dart';
// Effects
export 'box_shadow.dart';
export 'box_utilities.dart';
export 'break_utilities.dart';
// Colors
export 'colors.dart';
export 'columns.dart';
export 'display.dart';
// Filters
export 'filter.dart';
export 'flex.dart';
export 'flex_basis.dart';
export 'flex_container.dart';
export 'flex_direction.dart';
export 'flex_grow.dart';
export 'flex_shrink.dart';
export 'flex_wrap.dart';
export 'float.dart';
// Typography
export 'font_family.dart';
export 'font_size.dart';
export 'font_smoothing.dart';
export 'font_style.dart';
export 'font_weight.dart';
export 'gap.dart';
export 'grid_auto_flow.dart';
export 'grid_auto_utilities.dart';
export 'grid_column.dart';
export 'grid_row.dart';
export 'grid_template_columns.dart';
export 'grid_template_rows.dart';
// Sizing
export 'height.dart';
export 'icon_style_extensions_final.dart';
// export 'icon_extensions.dart'; // 已被icon_style_extensions.dart替代
// Interactivity
export 'interactivity.dart';
export 'isolation.dart';
export 'justify_content.dart' hide MainAxisAlignmentExt;
export 'justify_items.dart';
export 'justify_self.dart';
export 'letter_spacing.dart';
export 'line_height.dart';
// Spacing
export 'margin.dart';
export 'mask_utilities.dart';
export 'mix_blend_mode.dart';
export 'object_utilities.dart';
export 'opacity.dart';
export 'order.dart';
export 'outline_color.dart';
export 'outline_offset.dart';
export 'outline_style.dart';
export 'outline_width.dart';
export 'overflow.dart';
export 'padding.dart';
export 'place_content.dart';
export 'place_items.dart';
export 'place_self.dart';
export 'position.dart';
export 'svg_utilities.dart';
// Tables
export 'table_utilities.dart';
export 'text_align.dart';
// export 'text_color.dart'; // 已被text_style_extensions.dart替代
export 'text_decoration.dart';
export 'text_extensions.dart' hide TextStyleExt; // Text转Container扩展
export 'text_overflow.dart';
export 'text_shadow.dart';
export 'text_style_extensions_final.dart';
export 'text_transform.dart';
// Transforms
export 'transforms.dart';
// Transitions & Animation
export 'transition_animation.dart';
export 'visibility.dart' hide OpacityExt;
export 'widget_extensions.dart'; // Widget转换扩展（asRow, asColumn等）
export 'width.dart';
export 'z_index.dart';
