import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';

import '../data.dart';

bool _isLargeScreen(BuildContext context) => getWindowType(context) >= AdaptiveWindowType.large;

bool _isMediumScreen(BuildContext context) => getWindowType(context) == AdaptiveWindowType.medium;

class NavigationTrailing extends StatelessWidget {
  const NavigationTrailing({
    Key? key,
    required this.useLightMode,
    required this.colorSelected,
    required this.handleBrightnessChange,
    required this.handleColorSelect,
  }) : super(key: key);

  final bool useLightMode;
  final ColorSeed colorSelected;
  final void Function(bool useLightMode) handleBrightnessChange;
  final void Function(int value) handleColorSelect;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: _isLargeScreen(context) ? _expandedTrailingActions() : _trailingActions(),
    ));
  }

  Widget _expandedTrailingActions() => Container(
        constraints: const BoxConstraints.tightFor(width: 250),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Text('Light'),
                Expanded(child: Container()),
                Switch(
                    value: useLightMode,
                    onChanged: (value) {
                      handleBrightnessChange(value);
                    })
              ],
            ),
            const Divider(),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 200.0),
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                    ColorSeed.values.length,
                    (i) => IconButton(
                          icon: const Icon(Icons.radio_button_unchecked),
                          color: ColorSeed.values[i].color,
                          isSelected: colorSelected.color == ColorSeed.values[i].color,
                          selectedIcon: const Icon(Icons.circle),
                          onPressed: () {
                            handleColorSelect(i);
                          },
                        )),
              ),
            ),
          ],
        ),
      );

  Widget _trailingActions() => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: _BrightnessButton(
              handleBrightnessChange: handleBrightnessChange,
              showTooltipBelow: false,
            ),
          ),
          Flexible(
            child: _ColorSeedButton(
              handleColorSelect: handleColorSelect,
              colorSelected: colorSelected,
            ),
          ),
        ],
      );
}

List<Widget> appBarActions(
  BuildContext context,
  ColorSeed colorSelected,
  void Function(bool useLightMode) handleBrightnessChange,
  void Function(int value) handleColorSelect,
) {
  return !_isMediumScreen(context) && !_isLargeScreen(context)
      ? [
          _BrightnessButton(
            handleBrightnessChange: handleBrightnessChange,
          ),
          _ColorSeedButton(
            handleColorSelect: handleColorSelect,
            colorSelected: colorSelected,
          ),
        ]
      : [Container()];
}

class _BrightnessButton extends StatelessWidget {
  const _BrightnessButton({
    required this.handleBrightnessChange,
    this.showTooltipBelow = true,
  });

  final Function handleBrightnessChange;
  final bool showTooltipBelow;

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;
    return Tooltip(
      preferBelow: showTooltipBelow,
      message: 'Toggle light',
      child: IconButton(
        icon: isBright ? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined),
        onPressed: () => handleBrightnessChange(!isBright),
      ),
    );
  }
}

class _ColorSeedButton extends StatelessWidget {
  const _ColorSeedButton({
    required this.handleColorSelect,
    required this.colorSelected,
  });

  final void Function(int) handleColorSelect;
  final ColorSeed colorSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.palette_outlined,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      tooltip: 'Select a seed color',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (context) {
        return List.generate(ColorSeed.values.length, (index) {
          ColorSeed currentColor = ColorSeed.values[index];

          return PopupMenuItem(
            value: index,
            enabled: currentColor != colorSelected,
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    currentColor == colorSelected ? Icons.color_lens : Icons.color_lens_outlined,
                    color: currentColor.color,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(currentColor.label),
                ),
              ],
            ),
          );
        });
      },
      onSelected: handleColorSelect,
    );
  }
}
