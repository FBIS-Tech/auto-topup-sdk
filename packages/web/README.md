# @auto-topup/web

Auto Topup subscription widget for browsers and any WebView.

## Install

```bash
npm install @auto-topup/web
```

Or via CDN (no install):

```html
<script src="https://cdn.jsdelivr.net/npm/@auto-topup/web@0.3.0/dist/retailcode.iife.global.js"></script>
```

## Usage — React / Next.js / Vite

```ts
import { RetailcodeTopup } from '@auto-topup/web';

RetailcodeTopup.create({
  publicKey: 'pk_live_xxxx',
  msisdn:    user.phone,
  container: '#topup-widget',
  theme:     { accent: '#0057FF' },
  onSuccess: () => router.push('/success'),
  onClose:   () => router.push('/dashboard'),
}).mount();
```

### Next.js

Use `useState` + `useEffect` so the container div is in the DOM before `.mount()` runs:

```tsx
'use client';
import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { RetailcodeTopup } from '@auto-topup/web';

export default function SomePage() {
  const router = useRouter();
  const [widgetOpen, setWidgetOpen] = useState(false);

  useEffect(() => {
    if (!widgetOpen) return;
    RetailcodeTopup.create({
      publicKey: 'pk_live_xxxx',
      msisdn:    '08012345678',
      container: '#topup-widget',
      onClose:   () => setWidgetOpen(false),
      onSuccess: () => setWidgetOpen(false),
    }).mount();
  }, [widgetOpen]);

  return (
    <>
      <button onClick={() => setWidgetOpen(true)}>Open Topup</button>

      {widgetOpen && (
        <div id="topup-widget" style={{ position: 'fixed', inset: 0, zIndex: 9999 }} />
      )}
    </>
  );
}
```

## Usage — Plain HTML / CDN

```html
<script src="https://cdn.jsdelivr.net/npm/@auto-topup/web@0.3.0/dist/retailcode.iife.global.js"></script>

<div id="topup-widget"></div>

<script>
  RetailcodeSDK.RetailcodeTopup.create({
    publicKey:  'pk_live_xxxx',
    msisdn:     '08012345678',
    container:  '#topup-widget',
    theme:      { accent: '#0057FF' },
    onSuccess:  function(r) { console.log('subscribed', r); },
    onClose:    function()  { window.location.href = '/'; },
  }).mount();
</script>
```

## Options

| Option | Type | Required | Description |
|---|---|---|---|
| `publicKey` | `string` | Yes | Your Retailcode public key |
| `msisdn` | `string` | Yes | Subscriber phone number |
| `container` | `string` | Yes | CSS selector for the mount element |
| `theme.accent` | `string` | No | Hex colour for buttons and accents (default `#0057FF`) |
| `theme.fontFamily` | `string` | No | Font family override (default `'DM Sans', system-ui`) |
| `onSuccess` | `() => void` | No | Called after a successful subscription |
| `onClose` | `() => void` | No | Called when the user dismisses the widget |

> **Note:** `onSuccess` and `onClose` are mutually exclusive — only one fires per session.

## Full documentation

See the [main repository README](https://github.com/FBIS-Tech/auto-topup-sdk).
