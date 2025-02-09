import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onChanged;
  final double width;
  final double height;
  final Color activeColor;
  final Color inactiveColor;

  const CustomSwitch({
    super.key,
    this.initialValue = false,
    this.onChanged,
    this.width = 55,
    this.height = 20,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late ValueNotifier<bool> _isOn;

  @override
  void initState() {
    super.initState();
    _isOn = ValueNotifier(widget.initialValue);
  }

  void _toggleSwitch() {
    _isOn.value = !_isOn.value;
    widget.onChanged?.call(_isOn.value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: ValueListenableBuilder<bool>(
        valueListenable: _isOn,
        builder: (context, isOn, child) {
          return Stack(
            alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
            children: [
              // Switch Background (Tab)
              Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(widget.height / 2),
                  color: isOn ? widget.activeColor : widget.inactiveColor,
                ),
              ),
              // Floating Switch Ball (Bigger)
              Positioned(
                left: isOn ? widget.width - widget.height - 4 : -2,
                child: Container(
                  width: widget.height + 6, // Bigger than the tab
                  height: widget.height + 6, // Bigger than the tab
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      // BoxShadow(
                      //   color: Colors.black26,
                      //   blurRadius: 2,
                      //   offset: Offset(1, 1),
                      // ),
                      // BoxShadow(
                      //   color: Colors.grey,
                      //   blurRadius: 2,
                      //   offset: Offset(0, 1),
                      // ),
                    ],
                  ),
                  child: Center(
                      child: Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Color(0xff296225),
                        borderRadius: BorderRadius.circular(50)),
                  )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _isOn.dispose();
    super.dispose();
  }
}
