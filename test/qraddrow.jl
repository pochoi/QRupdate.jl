srand(0)

@testset "qraddrow") begin

    m, n = 3, 3
    A = randn(m,m)
    Q, R = qr(A)
    for i in 1:100
        a = randn(m)'
        A = [A; a]
        R = qraddrow(R, a)
        @test vecnorm( R'R - A'*A ) ≈ 0.0
    end

end
