# AutoTopup

Auto Topup subscription widget for iOS (SwiftUI).

## Install

In Xcode → **File → Add Package Dependencies** → paste:

```
https://github.com/FBIS-Tech/auto-topup-sdk
```

Select the **AutoTopup** product and add it to your target.

Requires **iOS 15+**.

## Option 1 — Sheet (recommended)

```swift
import AutoTopup

struct ContentView: View {
    @State private var showTopup = false

    var body: some View {
        Button("Top Up") { showTopup = true }
            .sheet(isPresented: $showTopup) {
                TopupView(
                    publicKey: "pk_live_xxxx",
                    msisdn:    "08012345678",
                    accent:    "#0057FF",
                    onSuccess: { showTopup = false },
                    onClose:   { showTopup = false }
                )
            }
    }
}
```

## Option 2 — NavigationLink / full screen

```swift
NavigationLink("Top Up") {
    TopupView(
        publicKey: "pk_live_xxxx",
        msisdn:    "08012345678",
        onClose:   { /* navigation back is automatic */ }
    )
    .ignoresSafeArea()
}
```

## Parameters

| Parameter | Type | Required | Description |
|---|---|---|---|
| `publicKey` | `String` | Yes | Your Retailcode public key |
| `msisdn` | `String` | Yes | Subscriber phone number |
| `accent` | `String` | No | Hex colour for buttons and accents (default `#0057FF`) |
| `onSuccess` | `(() -> Void)?` | No | Called after a successful subscription |
| `onClose` | `(() -> Void)?` | No | Called when the user dismisses the widget |

> **Note:** `onSuccess` and `onClose` are mutually exclusive — only one fires per session. Safe to call `dismiss()` in both without a double-dismiss crash.

## Full documentation

See the [main repository README](https://github.com/FBIS-Tech/auto-topup-sdk).
