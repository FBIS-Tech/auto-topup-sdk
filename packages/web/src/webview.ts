// Bridges for closing the widget across all host environments.

declare global {
  interface Window {
    ReactNativeWebView?: { postMessage(msg: string): void };
    webkit?: { messageHandlers?: { retailcode?: { postMessage(msg: unknown): void } } };
    Android?: { close?(): void };
    RetailcodeFlutter?: { postMessage(msg: string): void }; // Flutter JavascriptChannel
  }
}

export function updateUrlStatus(status: 'successful' | 'failed'): void {
  const url = new URL(window.location.href);
  url.searchParams.set('status', status);
  window.history.replaceState({}, '', url);
}

export function closeWebview(
  onClose?: (r: { closed: true }) => void,
  unmount?: () => void,
): void {
  const url = new URL(window.location.href);
  url.searchParams.set('isClose', 'true');
  window.history.replaceState({}, '', url);

  // Always remove the widget from the DOM first
  unmount?.();

  onClose?.({ closed: true });

  if (window.ReactNativeWebView) {
    // React Native WebView
    window.ReactNativeWebView.postMessage(JSON.stringify({ action: 'close' }));
  } else if (window.RetailcodeFlutter) {
    // Flutter WebView (JavascriptChannel named RetailcodeFlutter)
    window.RetailcodeFlutter.postMessage(JSON.stringify({ action: 'close' }));
  } else if (window.webkit?.messageHandlers?.retailcode) {
    // iOS WKWebView — handler registered as 'retailcode'
    window.webkit.messageHandlers.retailcode.postMessage({ action: 'close' });
  } else if (window.Android?.close) {
    // Android WebView
    window.Android.close();
  }
  // Pure-browser embedded use: unmount() already removed the widget;
  // navigation is the consumer's responsibility via onClose.
}
