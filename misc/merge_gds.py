import gdstk

# Load both GDS files
chip_art_lib = gdstk.read_gds("gds/chip_art.gds")
my_lib = gdstk.read_gds("my_chip.gds")

# Get the top cell from chip_art
chip_art_cell = chip_art_lib.top_level()[0]

# Add it to your library
my_lib.add(chip_art_cell)

# Reference it inside your top cell at position (x, y)
my_top = my_lib.top_level()[0]
my_top.add(gdstk.Reference(chip_art_cell, origin=(200, 200)))

# Save
my_lib.write_gds("my_chip_with_art.gds")