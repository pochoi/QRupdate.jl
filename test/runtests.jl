using QRupdate
using Random
using LinearAlgebra
using Test

tests = ["qraddcol",
         "qraddrow",
         "qrdelcol"]

for t in tests
    include("$(t).jl")
end
