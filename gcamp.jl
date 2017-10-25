using Unitful
using AxisArrays
using OMETIFF
using Images
dataDir = "/media/tyler/9640DAD740DABD65"
dataFile = "C1-MAX_091117_Ag731_2242Gs_hSS_DlxR.lif - Series005-1.tif"
dataFile = "100516_Ag924Gs - series 5.tif"
dataFile = "AVG_100516_Ag924Gs - series 5.ome.tif"
# dataFile = "ser5-maxproject.tif"
dataFile = "series5-saveastiff.tif"

dataDir = "/home/tyler/Dropbox/data/pasca/jimena"
dataFile = "JA16 hSC-HS Fusion A Tub d10_high mag HS all video.ome.tif"
dataFile = "JA16 hSC-HS Fusion A Tub d10_high mag HS all video.tif"

tifs = load(joinpath(dataDir,dataFile))
println("size", size(tifs))
