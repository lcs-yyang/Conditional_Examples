//: [Previous](@previous)
//: # Example
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Colour
 
 For details on how colour works when programming in Swift, [review the following PDF file](http://russellgordon.ca/lcs/HSB_Color_Model_Summary_Swift.pdf).
 
 To summarize:
 * hue: the "shade" of the colour
 * saturation: colour intensity
 * brightness: colour brightness
 
 This is best explored interactively by [downloading and running this program](http://russellgordon.ca/lcs/c3d.zip).
 ### Complementary colour
 Complementary colours are across from each other on the colour wheel.
 
 ![complementary](complementary-colour.png "Complementary colour")
 
 The HSB colour model makes it very easy to program colour changes.
 
 In this example:
 
 * a random hue between 0 and 360 degrees is selected
 * the hue across the colour wheel is found by adding 180 degrees
 * if the hue has become greater than 360, we then find the remainder when dividing by 360 degrees (since a hue must be between 0 and 360)
 * a random width and height is set for the inner square
 * a rectangle for each of the complementary colours is created
 
 Try running the program several times to see how a conditional statement and random number generation is used to produce interesting output.
 */
// Create canvas
let canvas = Canvas(width: 300, height: 300)

// No borders
canvas.drawShapesWithBorders = false

// Get the initial colour
let hue = random(from: 0, toButNotIncluding: 360)

// Print hue of outer square
print("Outer square hue is \(hue)")

// Draw the initial square
canvas.fillColor = Color(hue: hue, saturation: 80, brightness: 90, alpha: 100)
canvas.drawRectangle(centreX: 150, centreY: 150, width: 250, height: 250)

// Get the complementary colour
var complement = hue + 180

// Adjust complementary colour to be between 0 and 360 (if needed)
if complement > 360 {
    complement = complement % 360
}

// Print hue of inner square
print("Inner square hue is \(complement)")

// Get random width and height for the inner square (between 50 and 250)
let dimension = random(from: 25, toButNotIncluding: 200)

// Draw the inner square
canvas.fillColor = Color(hue: complement, saturation: 80, brightness: 90, alpha: 100)
canvas.drawRectangle(centreX: 150, centreY: 150, width: dimension, height: dimension)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
