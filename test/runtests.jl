using QRupdate
using Test

tests = ["qraddcol",
         "qraddrow",
         "qrdelcol"]

for t in tests
    include("$(t).jl")
end
