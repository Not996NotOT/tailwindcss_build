import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(),
            const SizedBox(height: 20),
            _buildSettingsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: Colors.blue[50],
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue[600],
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '用户名',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'user@example.com',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsList() {
    return Column(
      children: [
        _buildSettingItem(
          icon: Icons.dark_mode,
          title: '深色模式',
          trailing: Switch(
            value: _isDarkMode,
            onChanged: (value) {
              setState(() {
                _isDarkMode = value;
              });
            },
          ),
        ),
        _buildSettingItem(
          icon: Icons.language,
          title: '语言',
          subtitle: '中文',
          onTap: () {
            _showLanguageDialog();
          },
        ),
        _buildSettingItem(
          icon: Icons.notifications,
          title: '通知设置',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('通知设置功能开发中...')),
            );
          },
        ),
        _buildSettingItem(
          icon: Icons.privacy_tip,
          title: '隐私设置',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('隐私设置功能开发中...')),
            );
          },
        ),
        _buildSettingItem(
          icon: Icons.help,
          title: '帮助与反馈',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('帮助功能开发中...')),
            );
          },
        ),
        _buildSettingItem(
          icon: Icons.info,
          title: '关于',
          onTap: () {
            _showAboutDialog();
          },
        ),
      ],
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
    String? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.2),
        ),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue[600]),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        trailing: trailing ?? 
            (onTap != null ? const Icon(Icons.arrow_forward_ios, size: 16) : null),
        onTap: onTap,
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('选择语言'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('中文'),
              leading: const Icon(Icons.check, color: Colors.blue),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text('English'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  void _showAboutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('关于'),
        content: const Text(
          'TailwindCSS Build 聊天应用演示\n\n'
          '这是一个展示 TailwindCSS Build 功能的示例应用。\n\n'
          '版本: 1.0.0',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }
}
