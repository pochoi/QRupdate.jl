using QRupdate
using Compat
using Compat.Test
using Compat.Random
using Compat.LinearAlgebra

tests = ["qraddcol",
         "qraddrow",
         "qrdelcol"]

for t in tests
    include("$(t).jl")
end
