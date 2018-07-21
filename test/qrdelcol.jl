srand(0)

@testset "qrdelcol" begin
    m = 100
    A = randn(m,m)
    Q, R = qr(A)
    for i in 100:-1:1
        k = rand(1:i)
        A = A[:,1:i .!= k]
        R = qrdelcol(R, k)
        @test vecnorm( R'*R - A'*A ) ≈ 0.0
    end
end
