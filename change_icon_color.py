from PIL import Image
import colorsys

def change_color(image_path, output_path):
    img = Image.open(image_path).convert("RGBA")
    data = img.getdata()
    
    new_data = []
    for item in data:
        # Get RGBA
        r, g, b, a = item
        
        # Convert to HSV
        h, s, v = colorsys.rgb_to_hsv(r/255.0, g/255.0, b/255.0)
        
        # Original green hue is around 0.33 (120 degrees)
        # We want to change it to wine/red (around 0.95 or 0.0)
        
        # Check if the pixel is greenish
        if 0.2 < h < 0.45 and s > 0.2:
            # Shift hue to wine red (around 340 degrees = 0.94)
            new_h = 0.94 
            # Make it slightly darker for "wine" look
            new_v = v * 0.9
            
            # Convert back to RGB
            nr, ng, nb = colorsys.hsv_to_rgb(new_h, s, new_v)
            new_data.append((int(nr*255), int(ng*255), int(nb*255), a))
        else:
            new_data.append(item)
            
    img.putdata(new_data)
    img.save(output_path)
    print(f"Icon saved to {output_path}")

if __name__ == "__main__":
    change_color(
        "/home/marcos/.gemini/antigravity/playground/nebular-planetary/assets/icons/original_icon.png",
        "/home/marcos/.gemini/antigravity/playground/nebular-planetary/assets/icons/app_icon.png"
    )
