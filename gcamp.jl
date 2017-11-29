# import Unitful
# import AxisArrays
# import OMETIFF
# import Images, ImageView
using Images
# import TestImages
import PyPlot
plt = PyPlot
dataDir = "/media/tyler/9640DAD740DABD65/COLM_Data/2017-10-23/Im10x_organoid_AG10-4_2242_sample2_20171023_150845/VW0/LOC000"

files = [joinpath(dataDir,dataFile) for dataFile in readdir(dataDir)]

function readStack(stackFile)
    i = read(stackFile)
    reinterpret(Int16, i)
    # return reshape(i,2048,2048,:)/2^16
    return reshape(i,2048,2048,:)/2^16
end

i = readStack(files[1])
Gray.(i[:,:,1])
# plt.imshow(i[1,:,:])
plt.imshow(i[:,:,10])
# doesn't look right...
