{Vector} = require("../src/vector")

describe "Vector", ->
  v1 = v2 = v3 = null

  beforeEach ->
    v1 = new Vector 5, 10
    v2 = new Vector 2, 4

  describe "#add()", ->
    beforeEach -> v1.add(v2)

    it "adds x position to the vector", ->
      v1.x.should.equal 7

    it "adds y position to the vector", ->
      v1.y.should.equal 14

  describe ".add()", ->
    beforeEach -> v3 = Vector.add v1, v2

    it "returns a new vector with the sum of x axis", ->
      v3.x.should.equal 7

    it "returns a new vector with the sum of y axis", ->
      v3.y.should.equal 14

  describe "#sub()", ->
    beforeEach -> v1.sub(v2)

    it "adds x position to the vector", ->
      v1.x.should.equal 3

    it "adds y position to the vector", ->
      v1.y.should.equal 6

  describe ".sub()", ->
    beforeEach -> v3 = Vector.sub v1, v2

    it "returns a new vector with the sub of x axis", ->
      v3.x.should.equal 3

    it "returns a new vector with the sub of y axis", ->
      v3.y.should.equal 6

  describe "#mult()", ->
    beforeEach -> v1.mult(10)

    it "multiplies the x position", ->
      v1.x.should.equal 50

    it "multiplies the y position", ->
      v1.y.should.equal 100

  describe ".mult()", ->
    beforeEach -> v3 = Vector.mult v1, 10

    it "returns a new vector with the x axis multiplied", ->
      v3.x.should.equal 50

    it "returns a new vector with the y axis multiplied", ->
      v3.y.should.equal 100

  describe "#div()", ->
    beforeEach -> v1.div(5)

    it "divides the x position", ->
      v1.x.should.equal 1

    it "divides the y position", ->
      v1.y.should.equal 2

  describe ".div()", ->
    beforeEach -> v3 = Vector.div v1, 5

    it "returns a new vector with the x axis divided", ->
      v3.x.should.equal 1

    it "returns a new vector with the y axis divided", ->
      v3.y.should.equal 2

  describe "#mag()", ->
    it "returns the length of the vector", ->
      v1.mag().should.equal 11.180339887498949

  describe "#magSq()", ->
    it "returns the squared length of the vector", ->
      v1.magSq().should.equal 125

  describe "#normalize()", ->
    beforeEach -> v1.normalize()

    it "normalizes x", ->
      v1.x.should.equal 0.4472135954999579

    it "normalizes y", ->
      v1.y.should.equal 0.8944271909999159

  describe "#limit()", ->
    context "when the magnitude is inferior the informed limit", ->
      beforeEach -> v1.limit(20)

      it "does nothing", ->
        v1.mag().should.equal 11.180339887498949

    context "when the magnitude is superior the informed limit", ->
      beforeEach -> v1.limit(3)

      it "scales down the vector", ->
        v1.mag().should.equal 3

  describe "#dot()", ->
    it "returns the dot product of the two vectors", ->
      v1.dot(v2).should.equal 50
