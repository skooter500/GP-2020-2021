// This code gets run at the start
void setup()
{
  size(500, 500); // Sets the size of the drawing window
  colorMode(HSB); // Sets the color mode to be hue saturation, brightness
  // Can also use RGB colors
}

void draw()
{
  stroke(100, 255, 255); // Set the outline color of shapes. Values goes between 0-255
  
  strokeWeight(5); // The size of each pixel
  line(10, 10, 80, 80); // x1, y1, x2, y2
  point(200, 20); // A single pixel
  noStroke(); // No outline
  fill(30, 255, 255); // Sets the fill color
  ellipse(200, 200, 60, 90); // cx, cy, w, h
  fill(200, 255, 255); // Sets the fill color  
  rect(90, 100, 20, 80); // tlx, tly, w, h
  fill(255, 255, 255); // Sets the fill color    
  triangle(50, 350, 300, 390, 20, 200); // Vertices of the triangle
  
  
}
