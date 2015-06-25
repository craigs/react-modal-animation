###!
  Copyright (c) 2015 Jed Watson.
  Licensed under the MIT License (MIT), see
  http://jedwatson.github.io/classnames
###

window.classNames = ->

  classes = ''

  for arg in arguments

    if !arg
      continue

    argType = typeof arg

    if 'string' == argType or 'number' == argType
      classes += ' ' + arg
    else if Array.isArray(arg)
      classes += ' ' + classNames.apply(null, arg)
    else if 'object' == argType
      for key of arg
        if arg.hasOwnProperty(key) and arg[key]
          classes += ' ' + key

  classes.substr 1