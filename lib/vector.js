(function() {
  var Vector;

  Vector = (function() {

    function Vector(x, y) {
      this.x = x;
      this.y = y;
    }

    Vector.prototype.add = function(vector) {
      this.x += vector.x;
      return this.y += vector.y;
    };

    Vector.prototype.sub = function(vector) {
      this.x -= vector.x;
      return this.y -= vector.y;
    };

    Vector.prototype.mult = function(scalar) {
      this.x *= scalar;
      return this.y *= scalar;
    };

    Vector.prototype.div = function(scalar) {
      this.x /= scalar;
      return this.y /= scalar;
    };

    Vector.prototype.magSq = function() {
      return this.x * this.x + this.y * this.y;
    };

    Vector.prototype.mag = function() {
      return Math.sqrt(this.magSq());
    };

    Vector.prototype.normalize = function() {
      return this.div(this.mag());
    };

    Vector.prototype.limit = function(max) {
      if (this.mag() > max) return this.normalize() && this.mult(max);
    };

    Vector.prototype.dot = function(vector) {
      return this.x * vector.x + this.y * vector.y;
    };

    return Vector;

  })();

  if (typeof window !== "undefined" && window !== null) {
    window.Vector = Vector;
  } else {
    exports.Vector = Vector;
  }

}).call(this);
