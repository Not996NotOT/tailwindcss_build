import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 可折叠的代码示例展示组件
class CodeExampleWidget extends StatefulWidget {
  final String code;
  final String title;
  final Widget? child;

  const CodeExampleWidget({
    super.key,
    required this.code,
    this.title = '示例代码',
    this.child,
  });

  @override
  State<CodeExampleWidget> createState() => _CodeExampleWidgetState();
}

class _CodeExampleWidgetState extends State<CodeExampleWidget> 
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _controller;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: widget.code));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('代码已复制到剪贴板'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 效果展示区域
        if (widget.child != null) ...[
          widget.child!,
          const SizedBox(height: 12),
        ],
        
        // 代码展示区域
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              // 标题栏
              InkWell(
                onTap: _toggleExpanded,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.code,
                        size: 18,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 8),
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[700],
                        ),
                      ),
                      const Spacer(),
                      if (_isExpanded)
                        IconButton(
                          onPressed: _copyToClipboard,
                          icon: Icon(
                            Icons.copy,
                            size: 16,
                            color: Colors.grey[600],
                          ),
                          tooltip: '复制代码',
                          padding: const EdgeInsets.all(4),
                          constraints: const BoxConstraints(
                            minWidth: 24,
                            minHeight: 24,
                          ),
                        ),
                      AnimatedRotation(
                        turns: _isExpanded ? 0.5 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // 代码内容区域
              SizeTransition(
                sizeFactor: _expandAnimation,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: SelectableText(
                    widget.code,
                    style: const TextStyle(
                      fontFamily: 'Courier',
                      fontSize: 13,
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// 简化的代码展示组件，只有代码没有效果展示
class SimpleCodeWidget extends StatelessWidget {
  final String code;
  final String title;

  const SimpleCodeWidget({
    super.key,
    required this.code,
    this.title = '示例代码',
  });

  @override
  Widget build(BuildContext context) {
    return CodeExampleWidget(
      code: code,
      title: title,
    );
  }
}
