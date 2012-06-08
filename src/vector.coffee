class Vector
  constructor: (@x, @y) ->

  add: (vector) ->
    @x += vector.x
    @y += vector.y

  @add: (v1, v2) ->
    new Vector v1.x + v2.x, v1.y + v2.y

  sub: (vector) ->
    @x -= vector.x
    @y -= vector.y

  @sub: (v1, v2) ->
    new Vector v1.x - v2.x, v1.y - v2.y

  mult: (scalar) ->
    @x *= scalar
    @y *= scalar

  @mult: (vector, scalar) ->
    new Vector vector.x * scalar, vector.y * scalar

  div: (scalar) ->
    @x /= scalar
    @y /= scalar

  @div: (vector, scalar) ->
    new Vector vector.x / scalar, vector.y / scalar

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

  clone: ->
    new Vector @x, @y

if window? then window.Vector = Vector else exports.Vector = Vector
