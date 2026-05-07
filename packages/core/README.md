# @auto-topup/core

Shared API client, types, and utilities for the Auto Topup SDK.

> This package is a peer dependency used internally by `@auto-topup/web` and `@auto-topup/react-native`. You do not need to install it directly unless you are building a custom integration.

## Install

```bash
npm install @auto-topup/core
```

## Usage

```ts
import { RetailcodeApiClient } from '@auto-topup/core';

const client = new RetailcodeApiClient('pk_live_xxxx');

// Fetch subscriber config
const config = await client.fetchConfig('08012345678');

// Subscribe to airtime auto-topup
await client.subscribeAirtime({
  network: 'MTN',
  msisdn: '08012345678',
  name: 'John Doe',
  airtimeThresholdId: 'threshold_id',
  airtimeTopupValue: '500',
});

// Subscribe to data auto-topup
await client.subscribeData({
  network: 'MTN',
  msisdn: '08012345678',
  name: 'John Doe',
  dataThresholdId: 'threshold_id',
  dataTopupValue: 'plan_id',
});
```

## Full documentation

See the [main repository README](https://github.com/FBIS-Tech/auto-topup-sdk).
