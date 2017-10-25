using TestImages, Images, ImageView, Gadfly
dataDir = "/home/tyler/Dropbox/data/pasca"
dataFile = "JA16 hSC-HS Fusion A Tub d10_high mag HS all video.tif"

# only use channel 2, assume 4 channels
tifs = float(load(joinpath(dataDir,dataFile))[:,:,2:4:end])

function threeDdiff(a::Array{<:Number,3})
    x,y,t = size(a)
    r = reshape(a,(x*y,t))
    n = diff(r,2)
    return reshape(n,(x,y,t-1))
end

difftif = threeDdiff(tifs)
x,y,t = size(tifs)
avgPixelDiff = collect(Iterators.flatten(sum(difftif,(1,2))))/(x*y)
myplot = plot(x=1:length(avgPixelDiff),y=avgPixelDiff, xintercept=[15], Geom.line,
     Geom.vline(style=[[1mm,1mm]]), Guide.xlabel("time"),
     Guide.ylabel("avg Δ pixels"))

draw(SVG("muscle_twitch_time_series.svg", 6inch, 3inch), myplot)
