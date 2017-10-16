//: [Previous](@previous)
//: # Exercise
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Create a program that produces the following output:
 
 ![output](output.png "Output")
 
 The algorithm (recipe) for the program is indicated by the comments.
 
 Your job is to fill in the required code.
 
 */
// Create canvas
let canvas = Canvas(width: 400, height: 300)
/*:
 ## Add your code below
 
 Fill in the blanks below the comments
 */
// Loop 4 times, counting up by 100, from 0
for i in stride(from: 0, through: 400, by: 100){
    
    // Inside the loop, generate a random number (1 or 2)
    let randomValue = random(from: 1, toButNotIncluding: 3)
    
    
    
    
    // Draw a square at the current position – black fill, white text when random number is one, otherwise, colours are inverted
    if randomValue == 1 {
        canvas.fillColor = Color.black
        canvas.textColor = Color.white
        canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 100, width: 100, height: 100)
        canvas.drawText(message: "1", size: 36, x: i, y: 150)
        
    } else {
        canvas.fillColor = Color.white
        canvas.textColor = Color.black
        canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 100, width: 100, height: 100)
        canvas.drawText(message: "2", size: 36, x: i, y: 150)
    }
    
    
}


PlaygroundPage.current.liveView = canvas.imageView


