import 'package:digitalastro/ui/screens/common/login_screen.dart';
import 'package:digitalastro/ui/screens/common/onboarding_screen.dart';
import 'package:digitalastro/ui/screens/common/signup_screen.dart';
import 'package:digitalastro/ui/screens/common/splash_screen.dart';
import 'package:digitalastro/ui/screens/common/verify_otp_screen.dart';
import 'package:digitalastro/ui/screens/panditji/chat_screen_panditji.dart';
import 'package:digitalastro/ui/screens/panditji/my_account_screen_panditji.dart';
import 'package:digitalastro/ui/screens/panditji/my_bookings.dart';
import 'package:digitalastro/ui/screens/panditji/personal_detials_screen.dart';
import 'package:digitalastro/ui/screens/panditji/pooja_details_screen.dart';
import 'package:digitalastro/ui/screens/user/home_screen.dart';
import 'package:digitalastro/ui/screens/user/online_pooja_details_screen.dart';
import 'package:digitalastro/ui/screens/user/online_pooja_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../ui/screens/common/choose_user_type_screen.dart';
import '../ui/screens/panditji/booking_details_screen.dart';
import '../ui/screens/panditji/home_screen_panditji.dart';
import '../ui/screens/panditji/update_profile_screen_panditji.dart';
import '../ui/screens/user/all_packages.dart';
import '../ui/screens/user/approve_pooja_details.dart';
import '../ui/screens/user/book_pandit_ji.dart';
import '../ui/screens/user/booking_panditji_online_screen.dart';
import '../ui/screens/user/booking_panditji_payment.dart';
import '../ui/screens/user/chat.dart';
import '../ui/screens/user/choose_consultant.dart';
import '../ui/screens/user/complete_pooja_details.dart';
import '../ui/screens/user/consultant_details_screen.dart';
import '../ui/screens/user/faqs.dart';
import '../ui/screens/user/help_center.dart';
import '../ui/screens/user/my_account.dart';
import '../ui/screens/user/my_booking.dart';
import '../ui/screens/user/my_consultations.dart';
import '../ui/screens/user/my_wallet.dart';
import '../ui/screens/user/notification.dart';
import '../ui/screens/user/offline_pooja_screen.dart';
import '../ui/screens/user/on_request_special_pooja.dart';
import '../ui/screens/user/order_details.dart';
import '../ui/screens/user/pandit_details.dart';
import '../ui/screens/user/pooja_screen.dart';
import '../ui/screens/user/recharge_my_wallet.dart';
import '../ui/screens/user/reject_pooja_details.dart';
import '../ui/screens/user/request_refund.dart';
import '../ui/screens/user/update_profile.dart';
import '../ui/screens/user/virtual_pooja_detail.dart';
import '../ui/screens/user/virtual_pooja_payment.dart';
import '../ui/screens/user/virtual_pooja_screen.dart';

class MyRouter {
  static var onBoardingProcessScreen = "/onBoardingProcessScreen";
  static var loginScreen = "/loginScreen";
  static var chooseUserScreen = "/chooseUserScreen";
  static var verifyOtpScreen = "/verifyOtpScreen";
  static var signUpScreen = "/signUpScreen";
  static var bookingDetailsScreen = "/bookingDetailsScreen";
  static var panditJiPoojaDetailsScreen = "/panditJiPoojaDetailsScreen";

  //User Screens*******************************************************
  static var userHomeScreen = "/userHomeScreen";

  //Pandit JI Screens*******************************************************

  static var panditjiPersonalDetailsScreen = "/panditjiPersonalDetailsScreen";
  static var homeScreenPanditji = "/HomeScreenPanditji";
  static var chatScreenPanditji = "/chatScreenPanditji";
  static var myAccountScreenPanditji = "/myAccountScreenPanditji";
  static var updateProfilePanditji = "/updateProfilePanditji";
  static var allbookingsScreen = "/allbookingsScreen";
  static var splashScreen = "/splashScreen";

  //user Screen***********************
  static var userPoojaScreen = "/userPoojaScreen";
  static var userOnlinePoojaScreen = "/userOnlinePoojaScreen";
  static var onlinePoojaDetailsScreen = "/onlinePoojaDetailsScreen";
  static var consultantDetailsScreen = "/consultantDetailsScreen";
  static var virtualPoojaScreen = "/virtualPoojaScreen";
  static var virtualPoojaDetails = "/virtualPoojaDetails";
  static var virtualPoojaPayment = "/virtualPoojaPayment";
  static var updateProfileUserScreen = "/updateProfileUserScreen";
  static var requestForRefund = "/requestForRefund";
  static var rejectPoojaDetails = "/rejectPoojaDetails";
  static var rechargeWallet = "/rechargeWallet";
  static var orderViewPooja = "/orderViewPooja";
  static var specialPoojaRequest = "/specialPoojaRequest";
  static var userNotification = "/userNotification";
  static var myWallet = "/myWallet";
  static var myConsultations = "/myConsultations";
  static var userAllBookingsScreen = "/userAllBookingsScreen";
  static var userMyAccountScreen = "/userMyAccountScreen";
  static var helpCenter = "/helpCenter";
  static var fAQScreen = "/fAQScreen";
  static var completedPoojaDetails = "/completedPoojaDetails";
  static var allPanditScreen = "/allPanditScreen";
  static var chooseConsultantScreen = "/chooseConsultantScreen";
  static var chatScreenUser = "/chatScreenUser";
  static var bookingPanditJiPayment = "/bookingPanditJiPayment";
  static var bookingPanditJiOnlineScreen = "/bookingPanditJiOnlineScreen";
  static var approvedPoojaDetails = "/approvedPoojaDetails";
  static var allPackages = "/allPackages";
  static var userOfflinePoojaScreen = "/userOfflinePoojaScreen";
  static var panditProflie = "/panditProflie";

  static var route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(
        name: MyRouter.onBoardingProcessScreen, page: () => OnBoardingScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => LoginScreen()),
    GetPage(name: MyRouter.chooseUserScreen, page: () => ChooseUserType()),
    GetPage(name: MyRouter.verifyOtpScreen, page: () => OTPScreen()),
    GetPage(name: MyRouter.signUpScreen, page: () => SignUpScreen()),
    GetPage(
        name: MyRouter.bookingDetailsScreen,
        page: () => BookingDetailsScreen()),

//User Screens*******************************************************
    GetPage(name: MyRouter.userHomeScreen, page: () => UserHomeScreen()),
    GetPage(name: MyRouter.userPoojaScreen, page: () => UserPoojaScreen()),
    GetPage(
        name: MyRouter.consultantDetailsScreen,
        page: () => ConsultantDetailsScreen()),
    GetPage(
        name: MyRouter.userOnlinePoojaScreen,
        page: () => UserOnlinePoojaScreen()),
    GetPage(
        name: MyRouter.onlinePoojaDetailsScreen,
        page: () => OnlinePoojaDetailsScreen()),
    GetPage(
        name: MyRouter.virtualPoojaScreen, page: () => VirtualPoojaScreen()),
    GetPage(
        name: MyRouter.virtualPoojaPayment, page: () => VirtualPoojaPayment()),
    GetPage(
        name: MyRouter.virtualPoojaDetails, page: () => VirtualPoojaDetail()),
    GetPage(
        name: MyRouter.updateProfileUserScreen,
        page: () => UpdateProfileUserScreen()),
    GetPage(name: MyRouter.requestForRefund, page: () => RequestForRefund()),
    GetPage(
        name: MyRouter.rejectPoojaDetails, page: () => RejectPoojaDetails()),
    GetPage(name: MyRouter.rechargeWallet, page: () => RechargeWallet()),
    GetPage(name: MyRouter.orderViewPooja, page: () => OrderViewPooja()),
    GetPage(
        name: MyRouter.specialPoojaRequest, page: () => SpecialPoojaRequest()),
    GetPage(name: MyRouter.userNotification, page: () => UserNotification()),
    GetPage(name: MyRouter.myWallet, page: () => MyWallet()),
    GetPage(name: MyRouter.myConsultations, page: () => MyConsultations()),
    GetPage(
        name: MyRouter.userAllBookingsScreen,
        page: () => UserAllBookingsScreen()),
    GetPage(
        name: MyRouter.userMyAccountScreen, page: () => UserMyAccountScreen()),
    GetPage(name: MyRouter.helpCenter, page: () => HelpCenter()),
    GetPage(name: MyRouter.fAQScreen, page: () => FAQS()),
    GetPage(
        name: MyRouter.completedPoojaDetails,
        page: () => CompletedPoojaDetails()),
    GetPage(name: MyRouter.allPanditScreen, page: () => AllPanditScreen()),
    GetPage(
        name: MyRouter.chooseConsultantScreen,
        page: () => ChooseConsultantScreen()),
    GetPage(name: MyRouter.chatScreenUser, page: () => ChatScreenUser()),
    GetPage(
        name: MyRouter.bookingPanditJiPayment,
        page: () => BookingPanditJiPayment()),
    GetPage(
        name: MyRouter.bookingPanditJiOnlineScreen,
        page: () => BookingPanditJiOnlineScreen()),
    GetPage(
        name: MyRouter.approvedPoojaDetails,
        page: () => ApprovedPoojaDetails()),
    GetPage(name: MyRouter.allPackages, page: () => AllPackages()),
    GetPage(name: MyRouter.panditProflie, page: () => PanditProflie()),

//Pandit JI Screens*******************************************************
    GetPage(
        name: MyRouter.panditjiPersonalDetailsScreen,
        page: () => PanditjiPersonalDetailsScreen()),
    GetPage(
        name: MyRouter.homeScreenPanditji, page: () => HomeScreenPanditji()),
    GetPage(
        name: MyRouter.chatScreenPanditji, page: () => ChatScreenPanditji()),
    GetPage(
        name: MyRouter.myAccountScreenPanditji,
        page: () => MyAccountPanditjiScreen()),
    GetPage(
        name: MyRouter.updateProfilePanditji,
        page: () => UpdateProfilePanditJiScreen()),
    GetPage(name: MyRouter.allbookingsScreen, page: () => AllBookingsScreen()),
    GetPage(
        name: MyRouter.userOfflinePoojaScreen,
        page: () => UserOfflinePoojaScreen()),
    GetPage(
        name: MyRouter.panditJiPoojaDetailsScreen,
        page: () => PanditJiPoojaDetailsScreen()),
  ];
}
