import 'package:flutter/material.dart';
import 'package:grab_app/extensions/theme.extension.dart';
import 'package:grab_app/modules/refresh.module.dart';
import 'package:grab_app/modules/search.module.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    await Future.delayed(
      const Duration(milliseconds: 1000),
    );
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palettes.primary,
      body: RefreshModule(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.transparent,
              height: 60,
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 56),
                    color: Colors.white,
                    child: Column(
                      children: const [
                        Text('asodihaosidhaosidhj'),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: -14,
                    child: SearchModule(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
