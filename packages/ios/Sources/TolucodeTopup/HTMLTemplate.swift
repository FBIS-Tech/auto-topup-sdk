import Foundation

func buildWidgetHTML(
    publicKey: String,
    msisdn: String,
    baseUrl: String,
    accent: String,
    version: String = "0.1.0"
) -> String {
    // Escape single quotes so values are safe inside JS string literals
    func js(_ s: String) -> String { "'\(s.replacingOccurrences(of: "'", with: "\\'"))'" }

    return """
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
      <style>
        * { margin:0; padding:0; box-sizing:border-box; }
        body { background: transparent; }
        #widget { position: fixed; inset: 0; }
      </style>
    </head>
    <body>
      <div id="widget"></div>
      <script src="https://cdn.jsdelivr.net/npm/@tolucode/web@\(version)/dist/retailcode.iife.global.js"></script>
      <script>
        RetailcodeSDK.RetailcodeTopup.create({
          publicKey: \(js(publicKey)),
          msisdn:    \(js(msisdn)),
          baseUrl:   \(js(baseUrl)),
          container: '#widget',
          theme:     { accent: \(js(accent)) },
          onSuccess: function() {
            window.webkit.messageHandlers.retailcode.postMessage({ action: 'success' });
          },
          onClose: function() {
            window.webkit.messageHandlers.retailcode.postMessage({ action: 'close' });
          },
        }).mount();
      </script>
    </body>
    </html>
    """
}
