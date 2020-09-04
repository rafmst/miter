# 📐 miter

[![Build Status](https://nimble.directory/ci/badges/miter/nimdevel/status.svg)](https://nimble.directory/ci/badges/miter/nimdevel/output.html)
[![Build Status](https://nimble.directory/ci/badges/miter/nimdevel/docstatus.svg)](https://nimble.directory/ci/badges/miter/nimdevel/doc_build_output.html)


## Instalation

```
$ nimble install miter
```

## Documentation

To get the ratio and the percentage between two dimensions. The first one is the the width and the second argument is the height.

```
$ miter 1600 900
```

The result for this will be the following:

> The ratio is: 16:9

> The percentage is: 56.25%

To get the opposite dimension of a ratio use the following method. When you want to get a height, send the value after the flag `--width` and then the width and height. To achieve the opposite, send the height value after the `--height` flag.

```
$ miter 1600 900 -w 16
$ miter 1600 900 --width 16
```

The result for this will be something like this:

> The proportional height is: 9

```
$ miter 1600 900 -h 9
$ miter 1600 900 --height 9
```

The result for this will be something like this:

> The proportional width is: 16

## Donation

[![Buy me a coffee](https://camo.githubusercontent.com/031fc5a134cdca5ae3460822aba371e63f794233/68747470733a2f2f7777772e6275796d6561636f666665652e636f6d2f6173736574732f696d672f637573746f6d5f696d616765732f6f72616e67655f696d672e706e67)](https://www.buymeacoffee.com/rafmrs)
