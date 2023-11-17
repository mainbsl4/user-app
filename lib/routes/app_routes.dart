import 'package:flutter/material.dart';
import 'package:user_app/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:user_app/presentation/destination_ten_screen/destination_ten_screen.dart';
import 'package:user_app/presentation/destination_screen/destination_screen.dart';
import 'package:user_app/presentation/login_one_screen/login_one_screen.dart';
import 'package:user_app/presentation/login_screen/login_screen.dart';
import 'package:user_app/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:user_app/presentation/destination_add_screen/destination_add_screen.dart';
import 'package:user_app/presentation/destination_six_screen/destination_six_screen.dart';
import 'package:user_app/presentation/destination_twelve_screen/destination_twelve_screen.dart';
import 'package:user_app/presentation/destination_thirteen_screen/destination_thirteen_screen.dart';
import 'package:user_app/presentation/destination_seventeen_screen/destination_seventeen_screen.dart';
import 'package:user_app/presentation/destination_eleven_screen/destination_eleven_screen.dart';
import 'package:user_app/presentation/destination_twenty_screen/destination_twenty_screen.dart';
import 'package:user_app/presentation/destination_nine_screen/destination_nine_screen.dart';
import 'package:user_app/presentation/destination_eight_tab_container_screen/destination_eight_tab_container_screen.dart';
import 'package:user_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:user_app/presentation/destination_seven_screen/destination_seven_screen.dart';
import 'package:user_app/presentation/destination_fifteen_tab_container_screen/destination_fifteen_tab_container_screen.dart';
import 'package:user_app/presentation/destination_five_screen/destination_five_screen.dart';
import 'package:user_app/presentation/destination_four_screen/destination_four_screen.dart';
import 'package:user_app/presentation/location_permission_screen/location_permission_screen.dart';
import 'package:user_app/presentation/destination_fourteen_screen/destination_fourteen_screen.dart';
import 'package:user_app/presentation/destination_two_screen/destination_two_screen.dart';
import 'package:user_app/presentation/review_screen/review_screen.dart';
import 'package:user_app/presentation/destination_three_screen/destination_three_screen.dart';
import 'package:user_app/presentation/login_three_screen/login_three_screen.dart';
import 'package:user_app/presentation/login_two_screen/login_two_screen.dart';
import 'package:user_app/presentation/destination_one_screen/destination_one_screen.dart';
import 'package:user_app/presentation/pay_screen/pay_screen.dart';
import 'package:user_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String destinationTenScreen = '/destination_ten_screen';

  static const String destinationScreen = '/destination_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String loginScreen = '/login_screen';

  static const String welcomePageScreen = '/welcome_page_screen';

  static const String destinationAddScreen = '/destination_add_screen';

  static const String destinationSixScreen = '/destination_six_screen';

  static const String destinationTwelveScreen = '/destination_twelve_screen';

  static const String destinationThirteenScreen =
      '/destination_thirteen_screen';

  static const String destinationSeventeenScreen =
      '/destination_seventeen_screen';

  static const String destinationElevenScreen = '/destination_eleven_screen';

  static const String destinationTwentyScreen = '/destination_twenty_screen';

  static const String destinationNineScreen = '/destination_nine_screen';

  static const String homePageOnePage = '/home_page_one_page';

  static const String destinationEightPage = '/destination_eight_page';

  static const String destinationEightTabContainerScreen =
      '/destination_eight_tab_container_screen';

  static const String destinationEighteenPage = '/destination_eighteen_page';

  static const String destinationNineteenPage = '/destination_nineteen_page';

  static const String signUpScreen = '/sign_up_screen';

  static const String destinationSevenScreen = '/destination_seven_screen';

  static const String destinationFifteenPage = '/destination_fifteen_page';

  static const String destinationFifteenTabContainerScreen =
      '/destination_fifteen_tab_container_screen';

  static const String destinationSixteenPage = '/destination_sixteen_page';

  static const String destinationFiveScreen = '/destination_five_screen';

  static const String destinationFourScreen = '/destination_four_screen';

  static const String locationPermissionScreen = '/location_permission_screen';

  static const String destinationFourteenScreen =
      '/destination_fourteen_screen';

  static const String destinationTwoScreen = '/destination_two_screen';

  static const String reviewScreen = '/review_screen';

  static const String destinationThreeScreen = '/destination_three_screen';

  static const String loginThreeScreen = '/login_three_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String destinationOneScreen = '/destination_one_screen';

  static const String payScreen = '/pay_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homePageContainerScreen: HomePageContainerScreen.builder,
        destinationTenScreen: DestinationTenScreen.builder,
        destinationScreen: DestinationScreen.builder,
        loginOneScreen: LoginOneScreen.builder,
        loginScreen: LoginScreen.builder,
        welcomePageScreen: WelcomePageScreen.builder,
        destinationAddScreen: DestinationAddScreen.builder,
        destinationSixScreen: DestinationSixScreen.builder,
        destinationTwelveScreen: DestinationTwelveScreen.builder,
        destinationThirteenScreen: DestinationThirteenScreen.builder,
        destinationSeventeenScreen: DestinationSeventeenScreen.builder,
        destinationElevenScreen: DestinationElevenScreen.builder,
        destinationTwentyScreen: DestinationTwentyScreen.builder,
        destinationNineScreen: DestinationNineScreen.builder,
        destinationEightTabContainerScreen:
            DestinationEightTabContainerScreen.builder,
        signUpScreen: SignUpScreen.builder,
        destinationSevenScreen: DestinationSevenScreen.builder,
        destinationFifteenTabContainerScreen:
            DestinationFifteenTabContainerScreen.builder,
        destinationFiveScreen: DestinationFiveScreen.builder,
        destinationFourScreen: DestinationFourScreen.builder,
        locationPermissionScreen: LocationPermissionScreen.builder,
        destinationFourteenScreen: DestinationFourteenScreen.builder,
        destinationTwoScreen: DestinationTwoScreen.builder,
        reviewScreen: ReviewScreen.builder,
        destinationThreeScreen: DestinationThreeScreen.builder,
        loginThreeScreen: LoginThreeScreen.builder,
        loginTwoScreen: LoginTwoScreen.builder,
        destinationOneScreen: DestinationOneScreen.builder,
        payScreen: PayScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomePageContainerScreen.builder
      };
}
