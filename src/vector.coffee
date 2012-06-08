class Vector
  constructor: (@x, @y) ->

  add: (vector) ->
    @x += vector.x
    @y += vector.y

  sub: (vector) ->
    @x -= vector.x
    @y -= vector.y

  mult: (scalar) ->
    @x *= scalar
    @y *= scalar

  div: (scalar) ->
    @x /= scalar
    @y /= scalar

  magSq: ->
    @x * @x + @y * @y

  mag: ->
    Math.sqrt @magSq()

  normalize: ->
    @div(@mag())

  limit: (max) ->
    do @normalize and @mult(max) if @mag() > max

  dot: (vector) ->
    @x * vector.x + @y * vector.y

if window? then window.Vector = Vector else exports.Vector = Vector
