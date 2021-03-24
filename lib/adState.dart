// import 'dart:io';
//
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
//  Version 1.2.0 +3 completed.

//
// class AdState{
//   Future<InitializationStatus> initialization ;
//
//   AdState(this.initialization);
//
//   String get bannerAdUnitId => Platform.isAndroid
//       // ? 'ca-app-pub-4745993238831334/9152760622'
//       // : 'ca-app-pub-4745993238831334/6929814161';
//
//       ?  'ca-app-pub-3940256099942544/6300978111'
//       :  'ca-app-pub-3940256099942544/2934735716';
//
//   AdListener get  adListener => _adListener;
//
//   AdListener _adListener = AdListener(
//     onAdLoaded: (ad) => print('Ad loaded: ${ad.adUnitId}'),
//     onAdClosed:  (ad) => print ('Ad closed: ${ad.adUnitId}'),
//     onAdFailedToLoad: (ad,error) =>
//         print('Ad failed to load : ${ad.adUnitId} , $error)'),
//
//     onAdOpened: (ad) => print('Ad Opened ${ad.adUnitId}'),
//     onAppEvent: (ad,name,data) => print('Ad event : ${ad.adUnitId}, $name , $data'),
//     onApplicationExit: (ad) => print('Add Exit : ${ad.adUnitId}'),
//     onNativeAdClicked: (nativeAd) => print('Native ad clicked ${nativeAd.adUnitId}'),
//     onNativeAdImpression: (nativeAd) => print('Native ad Impression: ${nativeAd.adUnitId}'),
//     onRewardedAdUserEarnedReward: (ad, reward) =>
//         print("User reward ${ad.adUnitId} , ${reward.amount} , ${reward.type}"),
//
//
//   );
//
// }