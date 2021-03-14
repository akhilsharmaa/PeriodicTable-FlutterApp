import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState{
  Future<InitializationStatus> initialization ;

  AdState(this.initialization);

  String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-4745993238831334~4205230863'
      : 'ca-app-pub-4745993238831334/6929814161';

  AdListener get  adListener => _adListener;

  AdListener _adListener = AdListener(
    onAdLoaded: (ad) => print('Ad loaded: ${ad.adUnitId}'),
    onAdClosed:  (ad) => print ('Ad closed: ${ad.adUnitId}'),
    onAdFailedToLoad: (ad,error) =>
        print('Ad failed to load : ${ad.adUnitId} , $error)'),

    onAdOpened: (ad) => print('Ad Opened ${ad.adUnitId}'),
    onAppEvent: (ad,name,data) => print('Ad event : ${ad.adUnitId}, $name , $data'),
    onApplicationExit: (ad) => print('Add Exit : ${ad.adUnitId}'),
    onNativeAdClicked: (nativeAd) => print('Native ad clicked ${nativeAd.adUnitId}'),
    onNativeAdImpression: (nativeAd) => print('Native ad Impression: ${nativeAd.adUnitId}'),
    onRewardedAdUserEarnedReward: (ad, reward) =>
        print("User reward ${ad.adUnitId} , ${reward.amount} , ${reward.type}"),


  );


}