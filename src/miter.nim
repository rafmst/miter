import os, strutils, math

# Execute the main calculations
proc main() =
  let params = commandLineParams()
  let tp = params.len
  if tp >= 2:
    var w = parseInt(params[0])
    var h = parseInt(params[1])
    let divisor = gcd(w, h)

    # if only 2 parameters were received
    if tp == 2:
      echo "The ratio is: ", (w / divisor).toInt, ":", (h / divisor).toInt
      echo "The percentage is: ", (h / w) * 100, "%"

    # if 4 parameters were received
    elif tp == 4:
      var newValue = parseInt(params[3])
      case params[2]:
        of "-w", "--width":
          echo "The proportional height is: ", ((newValue * h) / w).toInt
        of "-h", "--height":
          echo "The proportional height is: ", ((newValue * w) / h).toInt
        else:
          echo "The structure is incorrect, please check the docs"
    else:
      echo "The structure is incorrect, please check the docs"
  else:
    echo "The structure is incorrect, please check the docs"


main()
