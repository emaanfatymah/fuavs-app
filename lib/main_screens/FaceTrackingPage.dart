// import 'package:flutter/material.dart';
// import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class FaceTracking extends StatefulWidget {


//   @override
//   State<FaceTracking> createState() => _FaceTrackingState();
// }

// class _FaceTrackingState extends State<FaceTracking> {

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//   final controller = WebViewController()
//   ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   ..setBackgroundColor(const Color(0x00000000))
//   ..setNavigationDelegate(
//   NavigationDelegate(
//   onProgress: (int progress) {
//   // Update loading bar.
//   },
//   onPageStarted: (String url) {},
//   onPageFinished: (String url) {},
//   onWebResourceError: (WebResourceError error) {},
//   onNavigationRequest: (NavigationRequest request) {
//   if (request.url.startsWith('https://www.youtube.com/')) {
//   return NavigationDecision.prevent;
//   }
//   return NavigationDecision.navigate;
//   },
//   ),
//   )
//   ..loadRequest(Uri.parse('http://127.0.0.1:8000'));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Flutter Simple Example')),
//       body: WebViewWidget(controller: controller),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FaceTracking extends StatefulWidget {


  @override
  State<FaceTracking> createState() => _FaceTrackingState();
}

class _FaceTrackingState extends State<FaceTracking> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('http://10.0.2.2:5000'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Face Tracking')),
      body: WebViewWidget(controller: controller),
    );
  }
}