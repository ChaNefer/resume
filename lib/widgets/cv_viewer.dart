import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CVViewer extends StatefulWidget {
  @override
  _CVViewerState createState() => _CVViewerState();
}

class _CVViewerState extends State<CVViewer> {
  final String cvUrl = "https://aleksandraweber.studio/resume-app/index.html";
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // Wymagane inicjalizowanie WebView
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(cvUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interaktywne CV"),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
