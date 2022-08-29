import 'package:animated_icon/animate_icon.dart';
import 'package:animated_icon/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class RefreshModule extends StatefulWidget {
  const RefreshModule({
    Key? key,
    required this.controller,
    required this.onRefresh,
    required this.child,
  }) : super(key: key);

  final RefreshController controller;
  final void Function() onRefresh;
  final Widget child;

  @override
  State<RefreshModule> createState() => _RefreshModuleState();
}

class _RefreshModuleState extends State<RefreshModule> {
  final _movingIconAnimation = AnimateIcon(
    key: UniqueKey(),
    onTap: () {},
    height: 40,
    color: Colors.white,
    iconType: IconType.continueAnimation,
    animateIcon: AnimateIcons.circlesMenu3,
  );

  final _idleIconAnimation = AnimateIcon(
    key: UniqueKey(),
    onTap: () {},
    height: 40,
    color: Colors.white,
    iconType: IconType.onlyIcon,
    animateIcon: AnimateIcons.circlesMenu3,
  );

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: widget.controller,
      onRefresh: widget.onRefresh,
      header: ClassicHeader(
        idleText: '',
        releaseText: '',
        refreshingText: '',
        completeText: '',
        idleIcon: _idleIconAnimation,
        releaseIcon: _idleIconAnimation,
        refreshingIcon: _movingIconAnimation,
        completeIcon: _movingIconAnimation,
        spacing: 0,
        outerBuilder: (child) => Container(
          color: Colors.transparent,
          child: child,
        ),
      ),
      child: widget.child,
    );
  }
}
