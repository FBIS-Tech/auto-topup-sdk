# auto_topup

Auto Topup subscription widget for Flutter.

## Install

Add to your app's `pubspec.yaml`:

```yaml
dependencies:
  auto_topup:
    git:
      url: https://github.com/FBIS-Tech/auto-topup-sdk.git
      path: packages/flutter
```

Then run:

```bash
flutter pub get
```

## Option 1 — Bottom sheet (recommended)

```dart
import 'package:auto_topup/auto_topup.dart';

ElevatedButton(
  onPressed: () => showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (_) => TopupWidget(
      publicKey: 'pk_live_xxxx',
      msisdn:    '08012345678',
      accent:    '#0057FF',
      onSuccess: () => Navigator.pop(context),
      onClose:   () => Navigator.pop(context),
    ),
  ),
  child: const Text('Top Up'),
)
```

## Option 2 — Full screen

```dart
Navigator.push(context, MaterialPageRoute(
  builder: (_) => Scaffold(
    body: TopupWidget(
      publicKey: 'pk_live_xxxx',
      msisdn:    '08012345678',
      onSuccess: () => Navigator.pop(context),
      onClose:   () => Navigator.pop(context),
    ),
  ),
));
```

## Parameters

| Parameter | Type | Required | Description |
|---|---|---|---|
| `publicKey` | `String` | Yes | Your Retailcode public key |
| `msisdn` | `String` | Yes | Subscriber phone number |
| `accent` | `String` | No | Hex colour for buttons and accents (default `#0057FF`) |
| `onSuccess` | `VoidCallback?` | No | Called after a successful subscription |
| `onClose` | `VoidCallback?` | No | Called when the user dismisses the widget |

> **Note:** `onSuccess` and `onClose` are mutually exclusive — only one fires per session. Safe to call `Navigator.pop()` in both without a double-pop crash.

## Full documentation

See the [main repository README](https://github.com/FBIS-Tech/auto-topup-sdk).
