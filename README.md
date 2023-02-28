## beeep
[![Build Status](https://github.com/godoes/beeep/actions/workflows/build.yml/badge.svg)](https://github.com/godoes/beeep/actions)
[![Go Reference](https://pkg.go.dev/badge/github.com/godoes/beeep.svg)](https://pkg.go.dev/github.com/godoes/beeep)
[![Go Report Card](https://goreportcard.com/badge/github.com/godoes/beeep?branch=master)](https://goreportcard.com/report/github.com/godoes/beeep) 

`beeep` provides a cross-platform library for sending desktop notifications, alerts and beeps.

### Installation

    go get -u github.com/godoes/beeep

### Build tags

* `nodbus` - disable `godbus/dbus` and use only `notify-send`

### Examples

```shell
err := beeep.Beep(beeep.DefaultFreq, beeep.DefaultDuration)
if err != nil {
    panic(err)
}
```

```shell
err := beeep.Notify("Title", "Message body", "assets/information.png")
if err != nil {
    panic(err)
}
```

```shell
err := beeep.Alert("Title", "Message body", "assets/warning.png")
if err != nil {
    panic(err)
}
```
