using Images
dataFile = "julia_memory_blowup.ome.tif"

tifs = load(dataFile)
println("tifs uses ", sizeof(tifs)/1024^2, " MB")
