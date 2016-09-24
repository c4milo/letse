# Simple Letsencrypt CLI - DNS challenges only
[![Build Status](https://travis-ci.org/c4milo/letse.svg?branch=master)](https://travis-ci.org/c4milo/letse)

Letse allows you to easily issue free TLS certificates from LetsEncrypt by
completing the DNS Challenge of a domain name under your control.

## Features
* Requests new ECDSA or RSA signed certificates, for specific domain names.
* Defaults to using the safest and fastest signing algorithm known today: ECDSA.
* Renews certificates
* Revokes certificates
* Only DNS challenges supported
* Extendable to support multiple DNS providers, currently only Route53 is supported

## Be mindful of LetsEncrypt limits when using this CLI
https://community.letsencrypt.org/t/rate-limits-for-lets-encrypt/6769

## Usage
For Route53 make sure the following environment variables are set with
valid values before you run this CLI.

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY
* AWS_REGION

```
Simple DNS based LetsEncrypt CLI.

Usage:
  letse new <domain> -a <account-key> [-p dns-provider] [-k key-type] [-b bit-size] [-o output-dir] [--dry-run]
  letse renew <cert-file> -f
  letse revoke <cert-file> -a <account-key>
  letse keygen [-k key-type] [-b bit-size] [-o output-dir]

Options:
  -a, --account-key=<account-key>    LetsEncrypt Account Key.
  -p, --provider=<provider>          DNS Provider. [default: r53].
  -k, --key-type=<key-type>          Key type, either rsa or ecdsa. [default: ecdsa].
  -o, --output=<output>              Directory where to output secrets. [default: .].
  -f, --force                        Forces a certificate renewal.
  -b, --bit-size=<bit-size>          Bit size for the key. Defaults to 256 for ECDSA or 2048 for RSA.
  -d, --dry-run                      Uses LetsEncrypt staging server instead.

DNS Providers:
  * r53: AWS Route53
```
