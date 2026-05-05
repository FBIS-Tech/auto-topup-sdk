/// Generates a self-contained HTML page that loads the widget from CDN
/// and wires up the Flutter JavascriptChannel bridge.
String buildWidgetHtml({
  required String publicKey,
  required String msisdn,
  required String baseUrl,
  required String accent,
  String version = '0.1.0',
}) {
  return '''
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body { background: transparent; }
    #widget { position: fixed; inset: 0; }
  </style>
</head>
<body>
  <div id="widget"></div>

  <script src="https://cdn.jsdelivr.net/npm/\@tolucode/web@$version/dist/retailcode.iife.global.js"></script>
  <script>
    RetailcodeSDK.RetailcodeTopup.create({
      publicKey: ${_jsStr(publicKey)},
      msisdn:    ${_jsStr(msisdn)},
      baseUrl:   ${_jsStr(baseUrl)},
      container: '#widget',
      theme:     { accent: ${_jsStr(accent)} },
      onSuccess: function() {
        RetailcodeFlutter.postMessage(JSON.stringify({ action: 'success' }));
      },
      onClose: function() {
        RetailcodeFlutter.postMessage(JSON.stringify({ action: 'close' }));
      },
    }).mount();
  </script>
</body>
</html>
''';
}

/// Wraps a value in a JS string literal, escaping single quotes.
String _jsStr(String value) => "'${value.replaceAll("'", r"\'")}'";
