import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class AutocompleteDemo extends StatelessWidget {
  const AutocompleteDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        // Header
        Text('Autocomplete')
            .text2Xl()
            .fontBold()
            .textGray900()
            .mb4(),
        
        Text('An autocomplete combines a text input with a listbox, allowing users to filter a list of options to items matching a query.')
            .textBase()
            .textGray600()
            .leading6()
            .mb8(),

        // Basic Autocomplete
        _buildSection(
          'Basic Usage',
          'A simple autocomplete with default styling.',
          _buildBasicAutocomplete(),
        ),

        // With Description
        _buildSection(
          'With Description',
          'Autocomplete with description and placeholder.',
          _buildDescriptionAutocomplete(),
        ).mt8(),

        // Sizes
        _buildSection(
          'Sizes',
          'Different sizes for different use cases.',
          _buildSizesAutocomplete(),
        ).mt8(),

        // Colors
        _buildSection(
          'Colors',
          'Different color variants.',
          _buildColorsAutocomplete(),
        ).mt8(),

        // Variants
        _buildSection(
          'Variants',
          'Different visual styles.',
          _buildVariantsAutocomplete(),
        ).mt8(),

        // With Start Content
        _buildSection(
          'With Icons',
          'Autocomplete with start and end icons.',
          _buildIconAutocomplete(),
        ).mt8(),

        // Async Loading
        _buildSection(
          'Async Loading',
          'Autocomplete with loading state.',
          _buildAsyncAutocomplete(),
        ).mt8(),
      ].asColumn(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ).px6()
       .py8()
       .asScrollView(),
    );
  }

  Widget _buildSection(String title, String description, Widget child) {
    return <Widget>[
      Text(title)
          .textXl()
          .fontSemiBold()
          .textGray900()
          .mb3(),
      
      Text(description)
          .textSm()
          .textGray600()
          .leading5()
          .mb6(),
      
      child.wFull()
          .p6()
          .bgWhite()
          .roundedLg()
          .border(color: Colors.grey[200]!)
          .shadowSm(),
    ].asColumn(
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }

  Widget _buildBasicAutocomplete() {
    return TailwindAutocomplete<String>(
      label: 'Favorite Animal',
      placeholder: 'Select an animal',
      items: _animalOptions,
      onSelected: (value) {
        print('Selected: $value');
      },
    );
  }

  Widget _buildDescriptionAutocomplete() {
    return TailwindAutocomplete<String>(
      label: 'Programming Language',
      placeholder: 'Select your favorite language',
      description: 'Choose the programming language you use most',
      items: _programmingLanguages,
      onSelected: (value) {
        print('Selected: $value');
      },
    );
  }

  Widget _buildSizesAutocomplete() {
    return <Widget>[
      TailwindAutocomplete<String>(
        label: 'Small Size',
        placeholder: 'Small autocomplete',
        items: _animalOptions,
        size: AutocompleteSize.sm,
        onSelected: (value) => print('Small: $value'),
      ),
      TailwindAutocomplete<String>(
        label: 'Medium Size (Default)',
        placeholder: 'Medium autocomplete',
        items: _animalOptions,
        size: AutocompleteSize.md,
        onSelected: (value) => print('Medium: $value'),
      ).mt4(),
      TailwindAutocomplete<String>(
        label: 'Large Size',
        placeholder: 'Large autocomplete',
        items: _animalOptions,
        size: AutocompleteSize.lg,
        onSelected: (value) => print('Large: $value'),
      ).mt4(),
    ].asColumn();
  }

  Widget _buildColorsAutocomplete() {
    return <Widget>[
      TailwindAutocomplete<String>(
        label: 'Default Color',
        placeholder: 'Default autocomplete',
        items: _animalOptions,
        color: AutocompleteColor.defaultColor,
        onSelected: (value) => print('Default: $value'),
      ),
      TailwindAutocomplete<String>(
        label: 'Primary Color',
        placeholder: 'Primary autocomplete',
        items: _animalOptions,
        color: AutocompleteColor.primary,
        onSelected: (value) => print('Primary: $value'),
      ).mt4(),
      TailwindAutocomplete<String>(
        label: 'Success Color',
        placeholder: 'Success autocomplete',
        items: _animalOptions,
        color: AutocompleteColor.success,
        onSelected: (value) => print('Success: $value'),
      ).mt4(),
    ].asColumn();
  }

  Widget _buildVariantsAutocomplete() {
    return <Widget>[
      TailwindAutocomplete<String>(
        label: 'Flat Variant',
        placeholder: 'Flat autocomplete',
        items: _animalOptions,
        variant: AutocompleteVariant.flat,
        onSelected: (value) => print('Flat: $value'),
      ),
      TailwindAutocomplete<String>(
        label: 'Bordered Variant',
        placeholder: 'Bordered autocomplete',
        items: _animalOptions,
        variant: AutocompleteVariant.bordered,
        onSelected: (value) => print('Bordered: $value'),
      ).mt4(),
      TailwindAutocomplete<String>(
        label: 'Underlined Variant',
        placeholder: 'Underlined autocomplete',
        items: _animalOptions,
        variant: AutocompleteVariant.underlined,
        onSelected: (value) => print('Underlined: $value'),
      ).mt4(),
    ].asColumn();
  }

  Widget _buildIconAutocomplete() {
    return <Widget>[
      TailwindAutocomplete<String>(
        label: 'With Search Icon',
        placeholder: 'Search animals...',
        items: _animalOptions,
        startContent: Icon(Icons.search, color: Colors.grey[600], size: 20),
        onSelected: (value) => print('Search: $value'),
      ),
      TailwindAutocomplete<String>(
        label: 'With User Icon',
        placeholder: 'Select user...',
        items: _userOptions,
        startContent: Icon(Icons.person, color: Colors.grey[600], size: 20),
        endContent: Icon(Icons.info_outline, color: Colors.grey[600], size: 20),
        onSelected: (value) => print('User: $value'),
      ).mt4(),
    ].asColumn();
  }

  Widget _buildAsyncAutocomplete() {
    return TailwindAutocomplete<String>(
      label: 'Async Loading',
      placeholder: 'Type to search...',
      items: _programmingLanguages,
      isLoading: true,
      onSelected: (value) => print('Async: $value'),
    );
  }

  static final List<AutocompleteItem<String>> _animalOptions = [
    AutocompleteItem(value: 'cat', label: 'Cat'),
    AutocompleteItem(value: 'dog', label: 'Dog'),
    AutocompleteItem(value: 'elephant', label: 'Elephant'),
    AutocompleteItem(value: 'lion', label: 'Lion'),
    AutocompleteItem(value: 'tiger', label: 'Tiger'),
    AutocompleteItem(value: 'giraffe', label: 'Giraffe'),
    AutocompleteItem(value: 'zebra', label: 'Zebra'),
    AutocompleteItem(value: 'monkey', label: 'Monkey'),
  ];

  static final List<AutocompleteItem<String>> _programmingLanguages = [
    AutocompleteItem(value: 'dart', label: 'Dart'),
    AutocompleteItem(value: 'flutter', label: 'Flutter'),
    AutocompleteItem(value: 'javascript', label: 'JavaScript'),
    AutocompleteItem(value: 'typescript', label: 'TypeScript'),
    AutocompleteItem(value: 'python', label: 'Python'),
    AutocompleteItem(value: 'java', label: 'Java'),
    AutocompleteItem(value: 'swift', label: 'Swift'),
    AutocompleteItem(value: 'kotlin', label: 'Kotlin'),
  ];

  static final List<AutocompleteItem<String>> _userOptions = [
    AutocompleteItem(value: 'john', label: 'John Doe'),
    AutocompleteItem(value: 'jane', label: 'Jane Smith'),
    AutocompleteItem(value: 'mike', label: 'Mike Johnson'),
    AutocompleteItem(value: 'sarah', label: 'Sarah Wilson'),
    AutocompleteItem(value: 'david', label: 'David Brown'),
  ];
}

// Autocomplete组件定义
class TailwindAutocomplete<T> extends StatefulWidget {
  final String? label;
  final String? placeholder;
  final String? description;
  final List<AutocompleteItem<T>> items;
  final void Function(T?)? onSelected;
  final Widget? startContent;
  final Widget? endContent;
  final AutocompleteSize size;
  final AutocompleteColor color;
  final AutocompleteVariant variant;
  final bool isLoading;
  final bool isDisabled;
  final bool isRequired;

  const TailwindAutocomplete({
    super.key,
    this.label,
    this.placeholder,
    this.description,
    required this.items,
    this.onSelected,
    this.startContent,
    this.endContent,
    this.size = AutocompleteSize.md,
    this.color = AutocompleteColor.defaultColor,
    this.variant = AutocompleteVariant.flat,
    this.isLoading = false,
    this.isDisabled = false,
    this.isRequired = false,
  });

  @override
  State<TailwindAutocomplete<T>> createState() => _TailwindAutocompleteState<T>();
}

class _TailwindAutocompleteState<T> extends State<TailwindAutocomplete<T>> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final OverlayPortalController _overlayController = OverlayPortalController();
  
  List<AutocompleteItem<T>> _filteredItems = [];
  bool _isOpen = false;
  AutocompleteItem<T>? _selectedItem;

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    if (_focusNode.hasFocus) {
      _openDropdown();
    }
  }

  void _openDropdown() {
    if (!_isOpen && !widget.isDisabled) {
      setState(() {
        _isOpen = true;
      });
      _overlayController.show();
    }
  }

  void _closeDropdown() {
    if (_isOpen) {
      setState(() {
        _isOpen = false;
      });
      _overlayController.hide();
    }
  }

  void _onTextChanged(String value) {
    setState(() {
      _filteredItems = widget.items
          .where((item) =>
              item.label.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
    if (!_isOpen) {
      _openDropdown();
    }
  }

  void _onItemSelected(AutocompleteItem<T> item) {
    setState(() {
      _selectedItem = item;
      _controller.text = item.label;
    });
    _closeDropdown();
    _focusNode.unfocus();
    widget.onSelected?.call(item.value);
  }

  void _clearSelection() {
    setState(() {
      _selectedItem = null;
      _controller.clear();
      _filteredItems = widget.items;
    });
    widget.onSelected?.call(null);
  }

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: _overlayController,
      overlayChildBuilder: (context) => _buildDropdown(),
      child: <Widget>[
        if (widget.label != null)
          <Widget>[
            Text(widget.label!)
                .textSm()
                .fontMedium()
                .textGray700(),
            if (widget.isRequired)
              Text('*')
                  .textSm()
                  .textRed500()
                  .ml1(),
          ].asSafeRow().mb2(),
        
        _buildInput(),
        
        if (widget.description != null)
          Text(widget.description!)
              .textXs()
              .textGray500()
              .mt2(),
      ].asColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  Widget _buildInput() {
    final EdgeInsets padding;
    final double fontSize;
    
    switch (widget.size) {
      case AutocompleteSize.sm:
        padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
        fontSize = 14;
        break;
      case AutocompleteSize.md:
        padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
        fontSize = 16;
        break;
      case AutocompleteSize.lg:
        padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 16);
        fontSize = 18;
        break;
    }

    return <Widget>[
      if (widget.startContent != null) ...[
        widget.startContent!,
        SizedBox(width: 8).asContainer(),
      ],
      
      TextField(
        controller: _controller,
        focusNode: _focusNode,
        enabled: !widget.isDisabled,
        onChanged: _onTextChanged,
        style: TextStyle(fontSize: fontSize),
        decoration: InputDecoration(
          hintText: widget.placeholder,
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.zero,
        ),
      ).asFlexible(),
      
      if (widget.isLoading)
        SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation(Colors.grey[600]!),
          ),
        ).asContainer()
      else if (_controller.text.isNotEmpty) ...[
        SizedBox(width: 8).asContainer(),
        Icon(Icons.close, size: 16, color: Colors.grey[600])
            .asGestureDetector(onTap: _clearSelection)
            .p1(),
      ],
      
      if (widget.endContent != null) ...[
        SizedBox(width: 8).asContainer(),
        widget.endContent!,
      ],
      
      SizedBox(width: 8).asContainer(),
      AnimatedRotation(
        turns: _isOpen ? 0.5 : 0,
        duration: const Duration(milliseconds: 200),
        child: Icon(
          Icons.keyboard_arrow_down,
          size: 20,
          color: Colors.grey[600],
        ),
      ),
    ].asSafeRow(
      crossAxisAlignment: CrossAxisAlignment.center,
    )
        .wFull()
        .asContainer()
        .px4()
        .py3()
        .border(color: Colors.grey[300]!)
        .roundedLg()
        .bgWhite()
        .asGestureDetector(onTap: () {
          _focusNode.requestFocus();
          _openDropdown();
        });
  }

  Widget _buildDropdown() {
    return Positioned.fill(
      child: GestureDetector(
        onTap: _closeDropdown,
        behavior: HitTestBehavior.translucent,
        child: Stack(
          children: [
            Positioned(
              top: 120, // 相对于输入框的距离
              left: 24,
              right: 24,
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(12),
                child: _filteredItems.isEmpty
                    ? _buildEmptyState()
                    : _buildItemsList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return <Widget>[
      Icon(Icons.search_off, color: Colors.grey[400], size: 48),
      Text('No results found')
          .textSm()
          .textGray500()
          .mt2(),
    ].asColumn(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    )
        .p6()
        .h(128);
  }

  Widget _buildItemsList() {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: _filteredItems.length,
      itemBuilder: (context, index) {
        final item = _filteredItems[index];
        final isSelected = _selectedItem?.value == item.value;
        
        return _buildItem(item, isSelected);
      },
    ).asContainer()
        .maxH64()
        .bgWhite();
  }

  Widget _buildItem(AutocompleteItem<T> item, bool isSelected) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _onItemSelected(item),
        child: Text(item.label)
            .textSm()
            .textColor(isSelected ? Colors.blue[700]! : Colors.grey[900]!)
            .px4()
            .py3()
            .wFull()
            .bg(isSelected ? Colors.blue[50]! : Colors.transparent)
            .asContainer(),
      ),
    );
  }
}

// 扩展方法用于样式应用
extension on Widget {
  Widget maxH64() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 256),
      child: this,
    );
  }
}

// 枚举定义
enum AutocompleteSize { sm, md, lg }
enum AutocompleteColor { defaultColor, primary, success, warning, danger }
enum AutocompleteVariant { flat, bordered, underlined, faded }

// 数据类
class AutocompleteItem<T> {
  final T value;
  final String label;
  final String? description;
  final Widget? startContent;
  final Widget? endContent;

  const AutocompleteItem({
    required this.value,
    required this.label,
    this.description,
    this.startContent,
    this.endContent,
  });
}
