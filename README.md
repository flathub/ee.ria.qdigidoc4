# DigiDoc4 Flatpak

DigiDoc4 is an application for interacting with the Estonian ID system.

<img src="https://github.com/minosimo/qdigidoc-flatpak/assets/19229302/d1e535ce-d86a-4c6b-ab27-b2a8d683b694" width=50% />



Using an Estonian ID card, Mobile-ID, or Smart-ID, users can:

- Sign, encrypt, and decrypt documents and containers
- Change the PIN1, PIN2 and PUK codes of Estonian ID cards

RIA distributes DigiDoc4 only for Windows, MacOS and Ubuntu. This repo is a Flatpak wrapper for [DigiDoc4](https://github.com/open-eid/DigiDoc4-Client/).

## Using ID card in the browser

DigiDoc4 is not required to use your ID card in the browser, but web authentication is a common use case so instructions are provided here.

To use your ID card in the browser, install the [Web eID browser extension](https://addons.mozilla.org/en-US/firefox/addon/web-eid-webextension/), and the Web eID "native component" application:
- Ubuntu users can install it from [id.ee](https://www.id.ee/en/article/install-id-software/).
- Fedora users can make use of [this copr](https://copr.fedorainfracloud.org/coprs/abn/web-eid/) while waiting for Web eID to be included in the Fedora repository.
- For other distros, builds can be downloaded from the [Web eID Actions](https://github.com/web-eid/web-eid-app/actions) (must be signed in with a github account to download).

> [!IMPORTANT]
> Web eID does not work with the Flatpak version of Firefox. Install Firefox from your distro's built-in repository.

Here are links to more information on [Web eID](https://www.id.ee/en/article/the-latest-version-of-the-id-software-includes-an-innovative-web-eid-interface/) and the [native component](https://github.com/web-eid/web-eid-app).

## Smartcard readers

If your smartcard reader is not recognized, please file an issue and provide your Linux distribution
name and version. The Flatpak pcsc integration depends on the daemon running on the host, which can
vary between distributions.

Ideally, the output from the following commands would be very helpful:
```sh
cat /etc/os-release | head -n 4
pcscd --version | head -n 1
```

## Thanks to
[Oskar Köök](https://github.com/oskarkook), for creating the initial flatpak repo.

The Estonian government, for making this application open source.
