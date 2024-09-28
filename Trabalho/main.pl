% Predicado para verificar se quatro pontos formam um retângulo
retangulo(P1, P2, P3, P4) :-
    P1 = (X1, Y1),
    P2 = (X2, Y2),
    P3 = (X3, Y3),
    P4 = (X4, Y4),

    % Calcula os comprimentos dos lados
    Lado1 is sqrt((X2 - X1)^2 + (Y2 - Y1)^2),
    Lado2 is sqrt((X3 - X2)^2 + (Y3 - Y2)^2),
    Lado3 is sqrt((X4 - X3)^2 + (Y4 - Y3)^2),
    Lado4 is sqrt((X1 - X4)^2 + (Y1 - Y4)^2),

    % Calcula os comprimentos das diagonais
    Diagonal1 is sqrt((X3 - X1)^2 + (Y3 - Y1)^2),
    Diagonal2 is sqrt((X4 - X2)^2 + (Y4 - Y2)^2),

    % Verifica se os lados opostos são iguais
    Lado1 = Lado3,
    Lado2 = Lado4,

    % Verifica se as diagonais são iguais
    Diagonal1 = Diagonal2,

    % Verifica se os lados opostos são perpendiculares
    ProdutoEscalar1 is (X2 - X1)*(X3 - X2) + (Y2 - Y1)*(Y3 - Y2),
    ProdutoEscalar2 is (X3 - X2)*(X4 - X3) + (Y3 - Y2)*(Y4 - Y3),
    ProdutoEscalar3 is (X4 - X3)*(X1 - X4) + (Y4 - Y3)*(Y1 - Y4),
    ProdutoEscalar4 is (X1 - X4)*(X2 - X1) + (Y1 - Y4)*(Y2 - Y1),
    ProdutoEscalar1 = 0,
    ProdutoEscalar2 = 0,
    ProdutoEscalar3 = 0,
    ProdutoEscalar4 = 0.
