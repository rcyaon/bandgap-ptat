import gdstk

# Load both GDS files
chip_art_lib = gdstk.read_gds("chip_art.gds")
my_lib = gdstk.read_gds("chip_without_art.gds")

# Get the top cell from chip_art
chip_art_cell = chip_art_lib.top_level()[0]

# Add it to your library
my_lib.add(chip_art_cell)

# Reference it inside your top cell at position (x, y)
my_top = my_lib.top_level()[0]
my_top.add(gdstk.Reference(chip_art_cell, origin=(30, 130)))

# Save
my_lib.write_gds("tt_um_rcyaon.gds")