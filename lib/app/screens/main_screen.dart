import 'package:csd_provider_app/app/widgets/offers/offers.dart';
import 'package:csd_provider_app/app/widgets/shedule/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../config/colors.dart';
import '../providers/state_provider.dart';
import '../widgets/home/home.dart';
import '../widgets/messages/massages.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScrenState();
}

class _MainScrenState extends State<MainScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<bool> _onWillPop() async {
    if (Provider.of<StateProvider>(context, listen: false)
            .selectedScreenIndex ==
        0) {
      return false;
    } else {
      Provider.of<StateProvider>(context, listen: false).selectedScreenIndex =
          0;
      return false;
    }
  }

  final List<Widget> _children = [
    const Home(),
    const Schedule(),
    const Offers(),
    const Messages(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Consumer<StateProvider>(
        builder: (context, state, child) {
          return Scaffold(
            backgroundColor: kBackgroundColor,
            key: _scaffoldKey,
            body: _children[state.selectedScreenIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: kBackgroundColor,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              onTap: (int value) => state.selectedScreenIndex = value,
              selectedLabelStyle: const TextStyle(fontSize: 12, color: kPrimaryBlueColor),
              currentIndex: state.selectedScreenIndex,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/homeFill.svg',
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/homeFill.svg',
                    colorFilter: const ColorFilter.mode(
                        kPrimaryBlueColor, BlendMode.srcIn),
                  ),
                  label: S.current.lHome,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/scheduleFill.svg',
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/scheduleFill.svg',
                    colorFilter: const ColorFilter.mode(
                        kPrimaryBlueColor, BlendMode.srcIn),
                  ),
                  label: S.current.lSchedule,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/offerFill.svg',
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/offerFill.svg',
                    colorFilter: const ColorFilter.mode(
                        kPrimaryBlueColor, BlendMode.srcIn),
                  ),
                  label: S.current.lOffers,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/messagesFill.svg',
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/messagesFill.svg',
                    colorFilter: const ColorFilter.mode(
                        kPrimaryBlueColor, BlendMode.srcIn),
                  ),
                  label: S.current.lMessages,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
