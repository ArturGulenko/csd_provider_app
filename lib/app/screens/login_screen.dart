import 'package:csd_provider_app/app/services/add_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/l10n.dart';
import '../config/colors.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          'assets/icons/logo.svg',
        ),
        Center(
          child: Text(S.current.tLogInCSD,
              style: Theme.of(context).textTheme.labelLarge),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: TextButton(
              onPressed: () {
                AzureAuthService.login(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryBlueColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/icons/winlogo.svg',
                        colorFilter: const ColorFilter.mode(
                            kPrimaryWhiteColor, BlendMode.srcIn),
                      ),
                    ),
                    Text(S.current.bLogin,
                        style: const TextStyle(color: kPrimaryWhiteColor)),
                  ],
                ),
              )),
        )
      ]),
    );
  }
}
