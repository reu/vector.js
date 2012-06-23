{Vector} = require("../src/vector")

describe "Vector", ->
  v1 = v2 = v3 = v4 = null

  describe "constructor", ->
    it "returns a new vector with all values of zero by default", ->
      v1 = new Vector
      v1.x.should.equal 0
      v1.y.should.equal 0
      v1.z.should.equal 0

  describe "#add()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v2 = new Vector 2, 4
        v1.add(v2)

      it "adds x position to the vector", ->
        v1.x.should.equal 7

      it "adds y position to the vector", ->
        v1.y.should.equal 14

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 15
        v2 = new Vector 2, 3, 6
        v1.add(v2)

      it "adds x position to the vector", ->
        v1.x.should.equal 7

      it "adds y position to the vector", ->
        v1.y.should.equal 13

      it "adds z position to the vector", ->
        v1.z.should.equal 21

  describe ".add()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v2 = new Vector 2, 4
        v3 = Vector.add v1, v2

      it "returns a new vector with the sum of x axis", ->
        v3.x.should.equal 7

      it "returns a new vector with the sum of y axis", ->
        v3.y.should.equal 14

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 15
        v2 = new Vector 2, 3, 6
        v3 = Vector.add v1, v2

      it "returns a new vector with the sum of x axis", ->
        v3.x.should.equal 7

      it "returns a new vector with the sum of y axis", ->
        v3.y.should.equal 13

      it "returns a new vector with the sum of z axis", ->
        v3.z.should.equal 21

  describe "#sub()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v2 = new Vector 2, 4
        v1.sub(v2)

      it "subtracts x position to the vector", ->
        v1.x.should.equal 3

      it "subtracts y position to the vector", ->
        v1.y.should.equal 6

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 15
        v2 = new Vector 2, 3, 4
        v1.sub(v2)

      it "subtracts x position to the vector", ->
        v1.x.should.equal 3

      it "subtracts y position to the vector", ->
        v1.y.should.equal 7

      it "subtracts z position to the vector", ->
        v1.z.should.equal 11

  describe ".sub()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v2 = new Vector 2, 4
        v3 = Vector.sub v1, v2

      it "returns a new vector with the sub of x axis", ->
        v3.x.should.equal 3

      it "returns a new vector with the sub of y axis", ->
        v3.y.should.equal 6

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 15
        v2 = new Vector 2, 4, 5
        v3 = Vector.sub v1, v2

      it "returns a new vector with the sub of x axis", ->
        v3.x.should.equal 3

      it "returns a new vector with the sub of y axis", ->
        v3.y.should.equal 6

      it "returns a new vector with the sub of z axis", ->
        v3.z.should.equal 10

  describe "#mult()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v1.mult(10)

      it "multiplies the x position", ->
        v1.x.should.equal 50

      it "multiplies the y position", ->
        v1.y.should.equal 100

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 20
        v1.mult(10)

      it "multiplies the x position", ->
        v1.x.should.equal 50

      it "multiplies the y position", ->
        v1.y.should.equal 100

      it "multiplies the z position", ->
        v1.z.should.equal 200

  describe ".mult()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v2 = Vector.mult v1, 10

      it "returns a new vector with the x axis multiplied", ->
        v2.x.should.equal 50

      it "returns a new vector with the y axis multiplied", ->
        v2.y.should.equal 100

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 20
        v2 = Vector.mult v1, 10

      it "returns a new vector with the x axis multiplied", ->
        v2.x.should.equal 50

      it "returns a new vector with the y axis multiplied", ->
        v2.y.should.equal 100

      it "returns a new vector with the z axis multiplied", ->
        v2.z.should.equal 200

  describe "#div()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v1.div(5)

      it "divides the x position", ->
        v1.x.should.equal 1

      it "divides the y position", ->
        v1.y.should.equal 2

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 20
        v1.div(5)

      it "divides the x position", ->
        v1.x.should.equal 1

      it "divides the y position", ->
        v1.y.should.equal 2

      it "divides the z position", ->
        v1.z.should.equal 4

  describe ".div()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v2 = Vector.div v1, 5

      it "returns a new vector with the x axis divided", ->
        v2.x.should.equal 1

      it "returns a new vector with the y axis divided", ->
        v2.y.should.equal 2

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 20
        v2 = Vector.div v1, 5

      it "returns a new vector with the x axis divided", ->
        v2.x.should.equal 1

      it "returns a new vector with the y axis divided", ->
        v2.y.should.equal 2

      it "returns a new vector with the z axis divided", ->
        v2.z.should.equal 4

  describe "#mag()", ->
    context "with 2D vectors", ->
      beforeEach -> v1 = new Vector 5, 10

      it "returns the length of the vector", ->
        v1.mag().should.equal 11.180339887498949

    context "with 3D vectors", ->
      beforeEach -> v1 = new Vector 5, 10, 15

      it "returns the length of the vector", ->
        v1.mag().should.equal 18.708286933869708

  describe "#magSq()", ->
    context "with 2D vectors", ->
      beforeEach -> v1 = new Vector 5, 10

      it "returns the squared length of the vector", ->
        v1.magSq().should.equal 125

    context "with 3D vectors", ->
      beforeEach -> v1 = new Vector 5, 10, 15

      it "returns the squared length of the vector", ->
        v1.magSq().should.equal 350

  describe "#normalize()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v1.normalize()

      it "normalizes x", ->
        v1.x.should.equal 0.4472135954999579

      it "normalizes y", ->
        v1.y.should.equal 0.8944271909999159

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 15
        v1.normalize()

      it "normalizes x", ->
        v1.x.should.equal 0.2672612419124244

      it "normalizes y", ->
        v1.y.should.equal 0.5345224838248488

      it "normalizes z", ->
        v1.z.should.equal 0.8017837257372731

  describe "#limit()", ->
    context "when the magnitude is inferior the informed limit", ->
      context "with a 2D vector", ->
        beforeEach ->
          v1 = new Vector 5, 10
          v1.limit(20)

        it "does nothing", ->
          v1.mag().should.equal 11.180339887498949

      context "with a 3D vector", ->
        beforeEach ->
          v1 = new Vector 5, 10, 15
          v1.limit(20)

        it "does nothing", ->
          v1.mag().should.equal 18.708286933869708

    context "when the magnitude is superior the informed limit", ->
      context "with a 2D vector", ->
        beforeEach ->
          v1 = new Vector 5, 10
          v1.limit(5)

        it "scales down the vector", ->
          v1.mag().should.equal 5

      context "with a 3D vector", ->
        beforeEach ->
          v1 = new Vector 5, 10, 15
          v1.limit(5)

        it "scales down the vector", ->
          v1.mag().should.equal 5

  describe "#dot()", ->
    context "with 2D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10
        v2 = new Vector 2, 4

      it "returns the dot product of the two vectors", ->
        v1.dot(v2).should.equal 50

    context "with 3D vectors", ->
      beforeEach ->
        v1 = new Vector 5, 10, 15
        v2 = new Vector 2, 4, 6

      it "returns the dot product of the two vectors", ->
        v1.dot(v2).should.equal 140

  describe "#distance()", ->
    beforeEach ->
      v1 = new Vector 0, 0, 0
      v2 = new Vector 10, 0, 0
      v3 = new Vector 0, 10, 0
      v4 = new Vector 0, 0, 10

    it "returns the distance from the other vector", ->
      v1.distance(v2).should.equal 10
      v1.distance(v3).should.equal 10
      v1.distance(v4).should.equal 10

  describe ".distance()", ->
    beforeEach ->
      v1 = new Vector 0, 0, 0
      v2 = new Vector 10, 0, 0
      v3 = new Vector 0, 10, 0
      v4 = new Vector 0, 0, 10

    it "returns the distance between the two vectors", ->
      Vector.distance(v1, v2).should.equal 10
      Vector.distance(v1, v3).should.equal 10
      Vector.distance(v1, v4).should.equal 10

  describe "#clone()", ->
    beforeEach ->
      v1 = new Vector 5, 10, 15
      v2 = v1.clone()

    it "returns a new object", ->
      v2.should.not.equal v1

    it "has the same x value", ->
      v2.x.should.equal v1.x

    it "has the same y value", ->
      v2.y.should.equal v1.y

    it "has the same z value", ->
      v2.z.should.equal v1.z

  describe "#toString()", ->
    it "should indicate its x, y and z positions", ->
      new Vector(10, 20, 30).toString().should.equal "(10, 20, 30)"
