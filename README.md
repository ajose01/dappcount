# dAppcount
A dAppcount is a loaner account for blockchains running EOSIO.

## Why?

[We](https://github.com/ajose01) [are](https://github.com/rossgeesman) engineers working on [Sense Chat](https://www.sense.chat/). One of the challenges for any new dApp to take off on EOSIO is the creation cost of new accounts. We have a few spare accounts that we use to test. _We'll loan you one_ 🎉. This should help in building "trial" or "explore" type periods without incurring an account creation expense.

## How?

We will loan you an account for 30 days. We will set a custom authorization `tester` on the account and hand you the private key. After 30 days, we'll rotate the permission and you lose access.

We will also provide an API route to funnel this key directly to your dApp.

### dApp requirements

It's pretty simple. Unless your dApp _must_ have an `active` or `owner` permission, you can set your dApp to use the `tester` authorization for in-app transactions. For most trial periods of a dApp this should be enough.

### Want your dApp to have its own authorization?

No problem. We'll have an option for your dApps custom permissions. We are working on a simple contract to just request this directly on-chain. For now just [reach out](ajose01@gmail.com) and we can get additional details.

## Sponsor

Do you have some spare EOS accounts you'd like to loan out? We could use them to share them back. We are working on having you keep the owner key and us use the active. If you'd like to just donate it right out... 🙏

### Current account sponsors
* [Sense Chat](https://www.sense.chat)

### Contributors
* [Angel Jose](https://twitter.com/ajose01)
* [Ross Geesman](https://twitter.com/rossgeesman)
