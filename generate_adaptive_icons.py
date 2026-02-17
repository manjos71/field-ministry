#!/usr/bin/env python3
"""
Generate Android adaptive icons without white borders.
The icon fills the safe zone properly for a cleaner look.
"""

from PIL import Image
import os

# Base directory
BASE_DIR = "/home/marcos/Dev/Mobile/Field Ministry"
ICON_SOURCE = f"{BASE_DIR}/assets/icons/app_icon.png"
RES_DIR = f"{BASE_DIR}/android/app/src/main/res"

# Adaptive icon sizes (foreground layer is 108dp, icon in 72dp safe zone)
# For foreground: we want the icon to fill ~80% of the canvas
FOREGROUND_SIZES = {
    "mipmap-mdpi": 108,
    "mipmap-hdpi": 162,
    "mipmap-xhdpi": 216,
    "mipmap-xxhdpi": 324,
    "mipmap-xxxhdpi": 432,
}

# Legacy icon sizes (for older Android versions)
LEGACY_SIZES = {
    "mipmap-mdpi": 48,
    "mipmap-hdpi": 72,
    "mipmap-xhdpi": 96,
    "mipmap-xxhdpi": 144,
    "mipmap-xxxhdpi": 192,
}

def create_foreground_icon(source_path, output_path, size):
    """
    Create foreground icon that fills the adaptive icon area.
    The icon is scaled to fill ~85% of the canvas to minimize white space.
    """
    img = Image.open(source_path).convert("RGBA")
    
    # Scale icon to fill 85% of the canvas (leaves small safe margin)
    icon_size = int(size * 0.85)
    img_resized = img.resize((icon_size, icon_size), Image.Resampling.LANCZOS)
    
    # Create transparent canvas
    canvas = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    
    # Center the icon
    offset = (size - icon_size) // 2
    canvas.paste(img_resized, (offset, offset), img_resized)
    
    canvas.save(output_path, "PNG")
    print(f"  Created foreground: {output_path}")

def create_legacy_icon(source_path, output_path, size):
    """Create legacy launcher icon."""
    img = Image.open(source_path).convert("RGBA")
    img_resized = img.resize((size, size), Image.Resampling.LANCZOS)
    img_resized.save(output_path, "PNG")
    print(f"  Created legacy: {output_path}")

def create_adaptive_xml():
    """Create the adaptive icon XML configuration."""
    # Create mipmap-anydpi-v26 directory
    anydpi_dir = f"{RES_DIR}/mipmap-anydpi-v26"
    os.makedirs(anydpi_dir, exist_ok=True)
    
    # ic_launcher.xml - adaptive icon definition
    launcher_xml = '''<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@color/ic_launcher_background"/>
    <foreground android:drawable="@mipmap/ic_launcher_foreground"/>
</adaptive-icon>
'''
    
    with open(f"{anydpi_dir}/ic_launcher.xml", "w") as f:
        f.write(launcher_xml)
    print(f"  Created: {anydpi_dir}/ic_launcher.xml")
    
    # Create the background color in values
    values_dir = f"{RES_DIR}/values"
    os.makedirs(values_dir, exist_ok=True)
    
    # Check if colors.xml exists and update it, or create new
    colors_file = f"{values_dir}/colors.xml"
    colors_xml = '''<?xml version="1.0" encoding="utf-8"?>
<resources>
    <color name="ic_launcher_background">#8B4557</color>
</resources>
'''
    with open(colors_file, "w") as f:
        f.write(colors_xml)
    print(f"  Created: {colors_file}")

def main():
    print("Generating adaptive icons...")
    print(f"Source: {ICON_SOURCE}")
    print()
    
    # Verify source exists
    if not os.path.exists(ICON_SOURCE):
        print(f"ERROR: Source icon not found: {ICON_SOURCE}")
        return
    
    # Generate foreground icons
    print("Creating foreground icons:")
    for folder, size in FOREGROUND_SIZES.items():
        folder_path = f"{RES_DIR}/{folder}"
        os.makedirs(folder_path, exist_ok=True)
        output_path = f"{folder_path}/ic_launcher_foreground.png"
        create_foreground_icon(ICON_SOURCE, output_path, size)
    
    print()
    
    # Generate legacy icons (keeps compatibility)
    print("Creating legacy icons:")
    for folder, size in LEGACY_SIZES.items():
        folder_path = f"{RES_DIR}/{folder}"
        os.makedirs(folder_path, exist_ok=True)
        output_path = f"{folder_path}/ic_launcher.png"
        create_legacy_icon(ICON_SOURCE, output_path, size)
    
    print()
    
    # Create adaptive icon XML
    print("Creating adaptive icon configuration:")
    create_adaptive_xml()
    
    print()
    print("Done! Adaptive icons generated successfully.")

if __name__ == "__main__":
    main()
