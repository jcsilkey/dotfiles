# GPG Key Setup

## Create GPG Key

```
> gpg --expert --full-gen-key
> gpg --expert --edit-key
    gpg> addkey (sign)
    gpg> addkey (encrypt)
    gpg> addkey (auth)
    gpg> save
> gpg -a --export [key_id] > [key_id].pub.gpgkey
> gpg -a --export-secret-keys [key_id] > [key_id].priv.gpgkey
> gpg -a --export-secret-subkeys [subkey_id]! > [subkey_id].sign.priv.gpgkey
> gpg -a --export-secret-subkeys [subkey_id]! > [subkey_id].encrypt.priv.gpgkey
> gpg -a --export-secret-subkeys [subkey_id]! > [subkey_id].auth.priv.gpgkey
> gpg --delete-secret-key [key_id]
> gpg --import [subkey_id].sign.prinv.gpgkey
> gpg --import [subkey_id].encrypt.prinv.gpgkey
> gpg --import [subkey_id].auth.prinv.gpgkey
```

## Setup Yubikey

Insert Yubikey

```
> ykman openpgp reset
> ykman piv reset
> ykman piv change-pin
> ykman piv change-puk
> ykman piv change-management-key --generate --protect
> gpg --card-edit
    gpg/card> admin
    gpg/card> passwd
    gpg/card> name
    gpg/card> login
    gpg/card> lang
    gpg/card> sex
    gpg/card> quit
```

## Move Keys to Yubikey

Insert Yubikey

```
> gpg --expert --edit-key [key_id]
    gpg> key 1
    gpg> keytocard
    gpg> key 1
    gpg> key 2
    gpg> keytocard
    gpg> key 2
    gpg> key 3
    gpg> keytocard
    gpg> save
```

## SSH

```
> ssh-add -L > publickey.pub
> ssh-copy-id me@somewhere.com
```

## References
- https://blog.eleven-labs.com/en/openpgp-almost-perfect-key-pair-part-1/
- https://blog.eleven-labs.com/en/openpgp-secret-keys-yubikey-part-2/
- https://spin.atomicobject.com/2013/11/24/secure-gpg-keys-guide/
- https://opensource.com/article/19/4/gpg-subkeys-ssh
- http://ocramius.github.io/blog/yubikey-for-ssh-gpg-git-and-local-login/
- https://www.linode.com/docs/security/authentication/gpg-key-for-ssh-authentication/
- https://github.com/drduh/YubiKey-Guide
- https://www.ryanlue.com/posts/2017-06-29-gpg-for-ssh-auth

