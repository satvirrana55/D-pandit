//
// import 'package:flutter/material.dart';
//
// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     final args = settings.arguments;
//
//     switch (settings.name) {
//       case BottomNavigationScreen.route:
//         return MaterialPageRoute(
//           builder: (_) => const BottomNavigationScreen(),
//         );
//       case LoginScreen.route:
//         return MaterialPageRoute(
//           builder: (_) => const LoginScreen(),
//         );
//       case OTPScreen.route:
//         return MaterialPageRoute(
//           builder: (_) => OTPScreen(
//             arguments: args as OTPDetailsArguments,
//           ),
//         );
//       case Settings.route:
//         return MaterialPageRoute(
//           builder: (_) => const Settings(),
//         );
//       case UpdateProfile.route:
//         return MaterialPageRoute(
//           builder: (_) => const UpdateProfile(),
//         );
//       case Pooja.route:
//         return MaterialPageRoute(
//           builder: (_) => Pooja(
//             arguments: args as PoojaArguments,
//           ),
//         );
//       case Astrologers.route:
//         return MaterialPageRoute(
//           builder: (_) => const Astrologers(),
//         );
//       case AstrologerDetails.route:
//         return MaterialPageRoute(
//           builder: (_) => const AstrologerDetails(),
//         );
//       case PoojaDetails.route:
//         return MaterialPageRoute(
//           builder: (_) => PoojaDetails(
//             arguments: args as PoojaDetailsArguments,
//           ),
//         );
//       case PanditSelection.route:
//         return MaterialPageRoute(
//           builder: (_) => const PanditSelection(),
//         );
//       case PaymentInformation.route:
//         return MaterialPageRoute(
//           builder: (_) => PaymentInformation(
//             arguments: args as PaymentInformationArguments,
//           ),
//         );
//       case Kundali.route:
//         return MaterialPageRoute(
//           builder: (_) => const Kundali(),
//         );
//       case KundaliDetails.route:
//         return MaterialPageRoute(
//           builder: (_) => const KundaliDetails(),
//         );
//       case HoroscopeMatching.route:
//         return MaterialPageRoute(
//           builder: (_) => const HoroscopeMatching(),
//         );
//       case ResultHoroscopeMatching.route:
//         return MaterialPageRoute(
//           builder: (_) => const ResultHoroscopeMatching(),
//         );
//       case DailyHoroscope.route:
//         return MaterialPageRoute(
//           builder: (_) => const DailyHoroscope(),
//         );
//       case Wallet.route:
//         return MaterialPageRoute(
//           builder: (_) => const Wallet(),
//         );
//       case OnRequestPooja.route:
//         return MaterialPageRoute(
//           builder: (_) => OnRequestPooja(),
//         );
//       case DailyHoroscopeDetails.route:
//         return MaterialPageRoute(
//           builder: (_) => DailyHoroscopeDetails(
//             arguments: args as SignDetailsArguments,
//           ),
//         );
//
//       default:
//         return _errorRoute();
//     }
//   }
//
//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(
//       builder: (_) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text('Not Found'),
//           ),
//           body: const Center(
//             child: Text('Not Found'),
//           ),
//         );
//       },
//     );
//   }
// }
