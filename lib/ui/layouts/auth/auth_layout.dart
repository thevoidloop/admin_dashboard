import 'package:admin_dashboard/ui/layouts/auth/widgets/background_app.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_title.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/links_bar.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;

  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Scrollbar(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            (size.width > 1000) ? _DesktopBody(child: child) : _MobileBody(child: child),
            LinksBar(),
          ],
        ),
      ),
    );
  }
}

class _MobileBody extends StatelessWidget {
  final Widget child;

  const _MobileBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(102, 102, 102, 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          CustomTitle(),
          Container(
            width: double.infinity,
            height: 420,
            child: child,
          ),
          Container(
              color: Colors.black45,
              width: double.infinity,
              height: 420,
              child: Row(
                children: [BackgroudApp()],
              ))
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;
  const _DesktopBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.93,
      child: Row(
        children: [
          //Twitter Backgroud
          const BackgroudApp(),
          //View Container
          Container(
            width: 600,
            height: double.infinity,
            color: const Color.fromRGBO(102, 102, 102, 40),
            child: Column(
              children: [
                const CustomTitle(),
                const SizedBox(height: 50),
                Expanded(child: child),
              ],
            ),
          )
        ],
      ),
    );
  }
}
