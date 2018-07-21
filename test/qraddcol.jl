srand(0)

@testset "qraddcol" begin

    @testset "β = 0" begin
        m = 100
        A = randn(m,0)
        R = Array{Float64}(0,0)
        
        for i in 1:m
            a = randn(m)
            R = qraddcol(A, R, a)
            A = [A a]
            @test  vecnorm( R'*R - A'*A ) ≈ 0.0
        end
    end

    @testset "β > 0" begin
        m = 100
        A = randn(m,0)
        R = Array{Float64}(0,0)
        β = 0.1
        for i in 1:m
            a = randn(m)
            B = [A a]
            R = qraddcol(A, R, a, β)
            @test vecnorm( R'*R - B'*B - β^2*I ) ≈ 0.0
        end
    end

end
