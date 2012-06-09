# Vector.js
When developing games or physics simulations you probably (and should) have already used vectors.

Although math vectors are very simple to abstrac, lot's of languages have a native implementation of it. As this is not the case with Javascript, we always reproduce the same code over and over again in each project we need it. This library aims to extract all this logic to a common place and cover it with unit test.

[![Build Status](https://secure.travis-ci.org/reu/vector.js.png)](http://travis-ci.org/reu/vector.js)

# Instalation
`npm install vector`

# Usage
node.js
```javascript
var Vector = require("vector").Vector;

v1 = new Vector(10, 30);
v2 = new Vector(30, 40);

v1.add(v2);
v1.mult(v2);
v1.normalize();
```

You can also use it directly on the browser. Just copy the lib/vector.js to a public folder on your app.

```html
<script src="vector.js" language="text/javascript" />
<script language="text/javascript">
  var v1 = new Vector(10, 20);
  var v2 = new Vector(30, 40);
  ...
</script>
```

# Development

Vector.js is written in CoffeeScript, so if you want to make a contribution, edit the src/vector.coffee and generate the js by running `cake build` or `cake watch`.

All the unit tests are also written in CoffeeScript. To run then, just type `cake test`.

# TODO

* Documentation for each method
* Pratical examples
