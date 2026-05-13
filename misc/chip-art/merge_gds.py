import gdstk

chip_art_lib = gdstk.read_gds("chip_art.gds")
my_lib = gdstk.read_gds("chip_without_art.gds")

chip_art_cell = chip_art_lib.top_level()[0]
my_lib.add(chip_art_cell)

my_top = my_lib.top_level()[0]

# Offset by (6, 76) 
my_top.add(gdstk.Reference(chip_art_cell, origin=(36, 200)))

my_lib.write_gds("tt_um_rcyaon.gds")
