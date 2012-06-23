(function() {
  var Vector;

  Vector = (function() {

    function Vector(x, y, z) {
      this.x = x != null ? x : 0;
      this.y = y != null ? y : 0;
      this.z = z != null ? z : 0;
    }

    Vector.prototype.add = function(vector) {
      this.x += vector.x;
      this.y += vector.y;
      this.z += vector.z;
      return this;
    };

    Vector.add = function(v1, v2) {
      return new Vector(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z);
    };

    Vector.prototype.sub = function(vector) {
      this.x -= vector.x;
      this.y -= vector.y;
      this.z -= vector.z;
      return this;
    };

    Vector.sub = function(v1, v2) {
      return new Vector(v1.x - v2.x, v1.y - v2.y, v1.z - v2.z);
    };

    Vector.prototype.mult = function(scalar) {
      this.x *= scalar;
      this.y *= scalar;
      this.z *= scalar;
      return this;
    };

    Vector.mult = function(vector, scalar) {
      return new Vector(vector.x * scalar, vector.y * scalar, vector.z * scalar);
    };

    Vector.prototype.div = function(scalar) {
      this.x /= scalar;
      this.y /= scalar;
      this.z /= scalar;
      return this;
    };

    Vector.div = function(vector, scalar) {
      return new Vector(vector.x / scalar, vector.y / scalar, vector.z / scalar);
    };

    Vector.prototype.magSq = function() {
      return this.x * this.x + this.y * this.y + this.z * this.z;
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
      return this.x * vector.x + this.y * vector.y + this.z * vector.z;
    };

    Vector.prototype.distance = function(vector) {
      var dx, dy, dz;
      dx = this.x - vector.x;
      dy = this.y - vector.y;
      dz = this.z - vector.z;
      return Math.sqrt(dx * dx + dy * dy + dz * dz);
    };

    Vector.distance = function(v1, v2) {
      var dx, dy, dz;
      dx = v1.x - v2.x;
      dy = v1.y - v2.y;
      dz = v1.z - v2.z;
      return Math.sqrt(dx * dx + dy * dy + dz * dz);
    };

    Vector.prototype.clone = function() {
      return new Vector(this.x, this.y, this.z);
    };

    Vector.prototype.toString = function() {
      return "(" + ([this.x, this.y, this.z].join(", ")) + ")";
    };

    return Vector;

  })();

  if (typeof window !== "undefined" && window !== null) {
    window.Vector = Vector;
  } else {
    exports.Vector = Vector;
  }

}).call(this);
