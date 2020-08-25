import os, strutils

proc gcd(h, v: int): int =
  var x = h
  var y = v
  while y > 0:
    let t = y
    y = x mod y
    x = t

  x

proc main() =
  let params = commandLineParams()
  let tp = params.len
  if tp >= 2:
    var hor = parseInt(paramStr(1))
    var ver = parseInt(paramStr(2))
    let divisor = gcd(hor, ver)

    if tp == 2:
      echo "The ratio is: ", (hor / divisor).toInt, ":", (ver / divisor).toInt
      echo "The percentage is: ", (ver / hor) * 100, "%"
  else:
    echo "not enough parameters"


main()
