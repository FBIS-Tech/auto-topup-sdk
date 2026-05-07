# @auto-topup/react-native

Auto Topup subscription widget for React Native.

## Install

```bash
npm install @auto-topup/react-native @auto-topup/core
```

## Option 1 — Modal overlay

The widget slides up over the current screen. No navigation library required.

```tsx
import { useState } from 'react';
import { Button, View } from 'react-native';
import { TopupWidget } from '@auto-topup/react-native';

export default function HomeScreen() {
  const [open, setOpen] = useState(false);

  return (
    <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <Button title="Top Up" onPress={() => setOpen(true)} />

      {open && (
        <TopupWidget
          modal
          publicKey="pk_live_xxxx"
          msisdn="08012345678"
          theme={{ accent: '#0057FF' }}
          onSuccess={() => setOpen(false)}
          onClose={()  => setOpen(false)}
        />
      )}
    </View>
  );
}
```

## Option 2 — Dedicated screen (React Navigation)

```tsx
// In your Stack navigator
<Stack.Screen
  name="Topup"
  component={TopupScreen}
  options={{ headerShown: false }}
/>
```

```tsx
// TopupScreen.tsx
import { TopupWidget } from '@auto-topup/react-native';
import type { NativeStackScreenProps } from '@react-navigation/native-stack';

export function TopupScreen({ navigation }: NativeStackScreenProps<any>) {
  return (
    <TopupWidget
      publicKey="pk_live_xxxx"
      msisdn="08012345678"
      theme={{ accent: '#0057FF' }}
      onSuccess={() => navigation.goBack()}
      onClose={()  => navigation.goBack()}
    />
  );
}
```

Navigate to it from anywhere:

```ts
navigation.navigate('Topup');
```

The Android hardware back button is handled automatically — it fires `onClose`.

## Props

| Prop | Type | Required | Description |
|---|---|---|---|
| `publicKey` | `string` | Yes | Your Retailcode public key |
| `msisdn` | `string` | Yes | Subscriber phone number |
| `modal` | `boolean` | No | Render as a bottom-sheet modal overlay |
| `theme.accent` | `string` | No | Hex colour for buttons and accents (default `#0057FF`) |
| `onSuccess` | `() => void` | No | Called after a successful subscription |
| `onClose` | `() => void` | No | Called when the user dismisses the widget |

> **Note:** `onSuccess` and `onClose` are mutually exclusive — only one fires per session. Safe to call `navigation.goBack()` in both without a double-pop crash.

## Full documentation

See the [main repository README](https://github.com/FBIS-Tech/auto-topup-sdk).
