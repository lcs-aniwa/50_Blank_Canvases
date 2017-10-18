//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 200, height: 100)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?

//Create a starting point for travelling through Perlin noise space
var start = 0.0

//Create a Perlin noise generator
let p = PerlinGenerator()

//draw vertical lines across the canvas
    for x in stride(from: 0, through: 200, by: 1){
        
        //Move througgh Perlin noise space
        start += 0.01
        
        //Get Prtlin noise (gives us a randomnumber between -1 and 1)
        
        let randomValue = p.perlinNoise(x: start)

        //Genetate a random height
        let toY = random(from: 0, toButNotIncluding: 101)

        //Draw the line
        canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: toY)

}


/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

