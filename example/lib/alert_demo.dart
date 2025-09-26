import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

/// Alert组件演示 - 完全使用tailwindcss_build语法糖实现
/// 参考 https://www.heroui.com/docs/components/alert
class AlertDemo extends StatefulWidget {
  const AlertDemo({Key? key}) : super(key: key);

  @override
  State<AlertDemo> createState() => _AlertDemoState();
}

class _AlertDemoState extends State<AlertDemo> {
  bool isDefaultVisible = true;
  bool isPrimaryVisible = true;
  bool isSecondaryVisible = true;
  bool isSuccessVisible = true;
  bool isWarningVisible = true;
  bool isDangerVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert 警告提示组件')
            .textLg()
            .fontBold()
            .textWhite(),
        backgroundColor: Colors.blue[600],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 基础用法
            _buildSection(
              title: '基础用法',
              child: _buildBasicAlerts(),
            ),
            
            // 不同颜色
            _buildSection(
              title: '颜色变体',
              child: _buildColorAlerts(),
            ),
            
            // 不同变体
            _buildSection(
              title: '样式变体',
              child: _buildVariantAlerts(),
            ),
            
            // 圆角变体
            _buildSection(
              title: '圆角变体',
              child: _buildRadiusAlerts(),
            ),
            
            // 自定义图标
            _buildSection(
              title: '自定义图标',
              child: _buildCustomIconAlerts(),
            ),
            
            // 无图标
            _buildSection(
              title: '无图标版本',
              child: _buildNoIconAlerts(),
            ),
            
            // 带操作按钮
            _buildSection(
              title: '带操作按钮',
              child: _buildActionAlerts(),
            ),
            
            // 可控制显示/隐藏
            _buildSection(
              title: '可控制显示/隐藏',
              child: _buildControlledAlerts(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title)
              .textLg()
              .fontSemiBold()
              .textGray900()
              .mb4(),
          
          child,
        ],
      ),
    ).p4().mb6();
  }

  Widget _buildBasicAlerts() {
    return Column(
      children: [
        _buildAlert(
          title: '默认提示',
          description: '这是一个默认的提示信息，用于显示一般性的通知内容。',
          color: AlertColor.defaultColor,
          icon: Icons.info_outline,
        ).mb4(),
        
        _buildAlert(
          title: '成功提示',
          description: '操作已成功完成！数据已保存到系统中。',
          color: AlertColor.success,
          icon: Icons.check_circle_outline,
        ).mb4(),
        
        _buildAlert(
          title: '警告提示',
          description: '请注意，此操作可能会影响其他相关数据。',
          color: AlertColor.warning,
          icon: Icons.warning_amber_outlined,
        ).mb4(),
        
        _buildAlert(
          title: '错误提示',
          description: '操作失败，请检查网络连接或联系系统管理员。',
          color: AlertColor.danger,
          icon: Icons.error_outline,
        ),
      ],
    );
  }

  Widget _buildColorAlerts() {
    return Column(
      children: AlertColor.values.map((color) {
        return _buildAlert(
          title: '${color.name.toUpperCase()} Alert',
          description: '这是一个 ${color.name} 颜色的警告提示组件示例。',
          color: color,
          icon: _getDefaultIcon(color),
        ).mb3();
      }).toList(),
    );
  }

  Widget _buildVariantAlerts() {
    return Column(
      children: AlertVariant.values.map((variant) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${variant.name.toUpperCase()} Variant')
                .textSm()
                .fontMedium()
                .textGray700()
                .mb2(),
            
            _buildAlert(
              title: '${variant.name} 样式',
              description: '这是 ${variant.name} 变体的警告提示样式示例。',
              color: AlertColor.primary,
              variant: variant,
              icon: Icons.star_outline,
            ).mb4(),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildRadiusAlerts() {
    return Column(
      children: AlertRadius.values.map((radius) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${radius.name.toUpperCase()} Radius')
                .textSm()
                .fontMedium()
                .textGray700()
                .mb2(),
            
            _buildAlert(
              title: '${radius.name} 圆角',
              description: '这是 ${radius.name} 圆角样式的警告提示。',
              color: AlertColor.success,
              radius: radius,
              icon: Icons.check_circle_outline,
            ).mb4(),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildCustomIconAlerts() {
    final customIcons = [
      Icons.favorite,
      Icons.star,
      Icons.thumb_up,
      Icons.lightbulb_outline,
      Icons.rocket_launch,
    ];

    return Column(
      children: customIcons.map((icon) {
        return _buildAlert(
          title: '自定义图标',
          description: '您可以使用任何图标来个性化您的警告提示。',
          color: AlertColor.primary,
          icon: icon,
        ).mb3();
      }).toList(),
    );
  }

  Widget _buildNoIconAlerts() {
    return Column(
      children: [
        _buildAlert(
          title: '无图标提示',
          description: '这是一个没有图标的简洁警告提示。',
          color: AlertColor.defaultColor,
          hideIcon: true,
        ).mb3(),
        
        _buildAlert(
          title: '无图标包装器',
          description: '这是一个隐藏了图标包装器的警告提示。',
          color: AlertColor.secondary,
          hideIconWrapper: true,
          icon: Icons.info_outline,
        ),
      ],
    );
  }

  Widget _buildActionAlerts() {
    return Column(
      children: [
        _buildAlert(
          title: '带按钮操作',
          description: '这个警告提示包含了操作按钮，您可以执行相关操作。',
          color: AlertColor.warning,
          icon: Icons.warning_amber_outlined,
          endContent: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Text('取消')
                    .textSm()
                    .textGray600(),
              ).px3().py1(),
              
        Text('确认')
            .textSm()
            .textWhite()
            .px3()
            .py1()
            .bgColor(Colors.orange[600]!)
            .roundedMd(),
            ],
          ),
        ).mb3(),
        
        _buildAlert(
          title: '带图标按钮',
          description: '这个提示包含了图标按钮操作。',
          color: AlertColor.success,
          icon: Icons.check_circle_outline,
          endContent: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.share)
                  .iconStyle(size: 20, color: Colors.green[600]!),
              const SizedBox(width: 8),
              Icon(Icons.bookmark_border)
                  .iconStyle(size: 20, color: Colors.green[600]!),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildControlledAlerts() {
    return Column(
      children: [
        if (isDefaultVisible)
          _buildAlert(
            title: '可关闭的提示',
            description: '点击关闭按钮可以隐藏这个警告提示。',
            color: AlertColor.defaultColor,
            icon: Icons.info_outline,
            isClosable: true,
            onClose: () {
              setState(() {
                isDefaultVisible = false;
              });
            },
          ).mb3(),
        
        if (isPrimaryVisible)
          _buildAlert(
            title: '主要提示',
            description: '这是一个可关闭的主要提示信息。',
            color: AlertColor.primary,
            icon: Icons.star_outline,
            isClosable: true,
            onClose: () {
              setState(() {
                isPrimaryVisible = false;
              });
            },
          ).mb3(),
        
        // 重置按钮
        Text('重置所有Alert')
            .textSm()
            .textWhite()
            .fontMedium()
            .px4()
            .py2()
            .bgColor(Colors.blue[600]!)
            .roundedMd()
            .onTap(() {
              setState(() {
                isDefaultVisible = true;
                isPrimaryVisible = true;
                isSecondaryVisible = true;
                isSuccessVisible = true;
                isWarningVisible = true;
                isDangerVisible = true;
              });
            }),
      ],
    );
  }

  Widget _buildAlert({
    required String title,
    required String description,
    required AlertColor color,
    AlertVariant variant = AlertVariant.flat,
    AlertRadius radius = AlertRadius.md,
    IconData? icon,
    bool hideIcon = false,
    bool hideIconWrapper = false,
    bool isClosable = false,
    Widget? endContent,
    VoidCallback? onClose,
  }) {
    return Row(
      children: [
        // Icon
        if (!hideIcon && icon != null)
          Icon(icon)
              .iconStyle(size: 20, color: _getIconColor(color, variant))
              .decoration(
                color: hideIconWrapper ? null : _getIconBackgroundColor(color),
                radius: hideIconWrapper ? null : 4,
                padding: const EdgeInsets.all(8),
              )
              .mr3(),
        
        // Content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title)
                  .textSm()
                  .fontSemiBold()
                  .textColor(_getTextColor(color, variant)),
              
              const SizedBox(height: 4),
              
              Text(description)
                  .textXs()
                  .textColor(_getDescriptionColor(color, variant)),
            ],
          ),
        ),
        
        // End Content
        if (endContent != null) endContent.ml3(),
        
        // Close Button
        if (isClosable)
          Icon(Icons.close)
              .iconStyle(size: 16, color: _getTextColor(color, variant))
              .onTap(onClose)
              .ml3(),
      ],
    )
        .p4()
        .decoration(
          color: _getBackgroundColor(color, variant),
          borderColor: variant == AlertVariant.bordered ? _getBorderColor(color) : null,
          borderWidth: variant == AlertVariant.bordered ? 1.0 : 0,
          borderRadius: _getBorderRadius(radius),
          shadow: variant == AlertVariant.solid,
        );
  }

  IconData _getDefaultIcon(AlertColor color) {
    switch (color) {
      case AlertColor.defaultColor:
        return Icons.info_outline;
      case AlertColor.primary:
        return Icons.star_outline;
      case AlertColor.secondary:
        return Icons.settings_outlined;
      case AlertColor.success:
        return Icons.check_circle_outline;
      case AlertColor.warning:
        return Icons.warning_amber_outlined;
      case AlertColor.danger:
        return Icons.error_outline;
    }
  }

  Color _getBackgroundColor(AlertColor color, AlertVariant variant) {
    switch (variant) {
      case AlertVariant.solid:
        switch (color) {
          case AlertColor.defaultColor:
            return Colors.grey[100]!;
          case AlertColor.primary:
            return Colors.blue[50]!;
          case AlertColor.secondary:
            return Colors.purple[50]!;
          case AlertColor.success:
            return Colors.green[50]!;
          case AlertColor.warning:
            return Colors.orange[50]!;
          case AlertColor.danger:
            return Colors.red[50]!;
        }
      case AlertVariant.bordered:
        return Colors.white;
      case AlertVariant.flat:
        switch (color) {
          case AlertColor.defaultColor:
            return Colors.grey[50]!;
          case AlertColor.primary:
            return Colors.blue[50]!;
          case AlertColor.secondary:
            return Colors.purple[50]!;
          case AlertColor.success:
            return Colors.green[50]!;
          case AlertColor.warning:
            return Colors.orange[50]!;
          case AlertColor.danger:
            return Colors.red[50]!;
        }
      case AlertVariant.faded:
        switch (color) {
          case AlertColor.defaultColor:
            return Colors.grey[25] ?? Colors.grey[50]!;
          case AlertColor.primary:
            return Colors.blue[25] ?? Colors.blue[50]!;
          case AlertColor.secondary:
            return Colors.purple[25] ?? Colors.purple[50]!;
          case AlertColor.success:
            return Colors.green[25] ?? Colors.green[50]!;
          case AlertColor.warning:
            return Colors.orange[25] ?? Colors.orange[50]!;
          case AlertColor.danger:
            return Colors.red[25] ?? Colors.red[50]!;
        }
    }
  }

  Color _getBorderColor(AlertColor color) {
    switch (color) {
      case AlertColor.defaultColor:
        return Colors.grey[300]!;
      case AlertColor.primary:
        return Colors.blue[300]!;
      case AlertColor.secondary:
        return Colors.purple[300]!;
      case AlertColor.success:
        return Colors.green[300]!;
      case AlertColor.warning:
        return Colors.orange[300]!;
      case AlertColor.danger:
        return Colors.red[300]!;
    }
  }

  BorderRadius _getBorderRadius(AlertRadius radius) {
    switch (radius) {
      case AlertRadius.none:
        return BorderRadius.zero;
      case AlertRadius.sm:
        return BorderRadius.circular(4);
      case AlertRadius.md:
        return BorderRadius.circular(6);
      case AlertRadius.lg:
        return BorderRadius.circular(8);
      case AlertRadius.full:
        return BorderRadius.circular(9999);
    }
  }

  Color _getIconColor(AlertColor color, AlertVariant variant) {
    switch (color) {
      case AlertColor.defaultColor:
        return Colors.grey[600]!;
      case AlertColor.primary:
        return Colors.blue[600]!;
      case AlertColor.secondary:
        return Colors.purple[600]!;
      case AlertColor.success:
        return Colors.green[600]!;
      case AlertColor.warning:
        return Colors.orange[600]!;
      case AlertColor.danger:
        return Colors.red[600]!;
    }
  }

  Color _getIconBackgroundColor(AlertColor color) {
    switch (color) {
      case AlertColor.defaultColor:
        return Colors.grey[100]!;
      case AlertColor.primary:
        return Colors.blue[100]!;
      case AlertColor.secondary:
        return Colors.purple[100]!;
      case AlertColor.success:
        return Colors.green[100]!;
      case AlertColor.warning:
        return Colors.orange[100]!;
      case AlertColor.danger:
        return Colors.red[100]!;
    }
  }

  Color _getTextColor(AlertColor color, AlertVariant variant) {
    switch (color) {
      case AlertColor.defaultColor:
        return Colors.grey[800]!;
      case AlertColor.primary:
        return Colors.blue[800]!;
      case AlertColor.secondary:
        return Colors.purple[800]!;
      case AlertColor.success:
        return Colors.green[800]!;
      case AlertColor.warning:
        return Colors.orange[800]!;
      case AlertColor.danger:
        return Colors.red[800]!;
    }
  }

  Color _getDescriptionColor(AlertColor color, AlertVariant variant) {
    switch (color) {
      case AlertColor.defaultColor:
        return Colors.grey[600]!;
      case AlertColor.primary:
        return Colors.blue[600]!;
      case AlertColor.secondary:
        return Colors.purple[600]!;
      case AlertColor.success:
        return Colors.green[600]!;
      case AlertColor.warning:
        return Colors.orange[600]!;
      case AlertColor.danger:
        return Colors.red[600]!;
    }
  }
}

// 枚举定义
enum AlertColor { defaultColor, primary, secondary, success, warning, danger }
enum AlertVariant { solid, bordered, flat, faded }
enum AlertRadius { none, sm, md, lg, full }
