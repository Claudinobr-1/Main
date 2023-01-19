%Claudino Ramos de Moura
%12211ECP003
resolve(Rep) :-
    Rep =  bastidor(_,_,_,_,_),
    %O programa das 21 horas é apresentado pela apresentadora de vestido Amarelo
    mulher(A,Rep),
    horario(A,21),
    vestido(A,amarelo),
    %Cíntia está ao lado da apresentadora do programa das 18 horas
    aolado(B,C,Rep),
    nome(B,cintia),
    horario(C,18),
    %A mulher de 45 anos está em algum lugar entre a mulher de 50 anos e a mulher de 40 anos, nessa ordem
    algum_lugar_entre(D,E,F,Rep),
    idade(D,45),
    idade(E,50),
    idade(F,40),
    %A mulher de Verde está em algum lugar à esquerda da apresentadora do signo de Câncer
    algum_lugar_esquerda(G,H,Rep),
    vestido(G,verde),
    signo(H,cancer),
    %A apresentadora do programa de Humor está ao lado da apresentadora de 40 anos
    aolado(I,J,Rep),
    programa(I,humor),
    idade(J,40),
    %A mulher de Amarelo está em algum lugar entre a apresentadora das 20 horas e a Rebeca, nessa ordem
    algum_lugar_entre(K,L,M,Rep),
    vestido(K,amarelo),
    horario(L,20),
    nome(M,rebeca),
    %Renata está ao lado da mulher mais velha
    aolado(N,O,Rep),
    nome(N,renata),
    idade(O,55),
    %A mulher de vestido Vermelho apresenta o programa das 18 horas
    mulher(P,Rep),
    vestido(P,vermelho),
    horario(P,18),
    %A apresentadora do signo de Escorpião está ao lado da apresentadora mais nova
    aolado(Q,R,Rep),
    signo(Q,escorpiao),
    idade(R,35),
    %A apresentadora do programa Musical está ao lado da apresentadora do programa Humorístico
    aolado(S,T,Rep),
    programa(S,musica),
    programa(T,humor),
    %A mulher de 35 anos está em algum lugar à direita da mulher de vestido Branco
    algum_lugar_direita(U,V,Rep),
    idade(U,35),
    vestido(V,branco),
    %A mulher de vestido Amarelo está em algum lugar entre a mulher que apresenta o programa de Cinema e a Renata, nessa ordem
    algum_lugar_entre(W,X,Y,Rep),
    vestido(W,amarelo),
    programa(X,cinema),
    nome(Y,renata),
    %A apresentadora do programa das 22 horas está exatamente à esquerda da apresentadora do programa das 18 horas
    exatamente_esquerda(Z,Z1,Rep),
    horario(Z,22),
    horario(Z1,18),
    %A mulher de Azul apresenta o programa cujo tema é Cinema
    mulher(A1,Rep),
    vestido(A1,azul),
    programa(A1,cinema),
    %Patrícia está exatamente à esquerda da apresentadora de Branco
    exatamente_esquerda(B1,C1,Rep),
    nome(B1,patricia),
    vestido(C1,branco),
    %A apresentadora do programa das 19 horas está exatamente à direita da apresentadora do signo de Libra
    exatamente_direita(D1,E1,Rep),
    horario(D1,19),
    signo(E1,libra),
    %A mulher de Amarelo está em algum lugar entre a mulher de 50 anos e a mulher do signo de Câncer, nessa ordem
    algum_lugar_entre(F1,G1,H1,Rep),
    vestido(F1,amarelo),
    idade(G1,50),
    signo(H1,cancer),
    %A mulher do signo de Aquário está exatamente à esquerda da apresentadora do programa de Música
    exatamente_esquerda(I1,J1,Rep),
    signo(I1,aquario),
    programa(J1,musica),
    %A apresentadora do signo de Áries está ao lado da apresentadora de vestido Amarelo
    aolado(K1,L1,Rep),
    signo(K1,aries),
    vestido(L1,amarelo),
    %fechamento
    terceira(M1,Rep),
    idade(M1,45),
    mulher(P1,Rep),
    horario(P1,22),
    programa(P1,culinaria),
    mulher(Q1,Rep),
    nome(Q1,silvia),
    mulher(R1,Rep),
    programa(R1,turismo).

mulher(X,bastidor(X,_,_,_,_)).
mulher(X,bastidor(_,X,_,_,_)).
mulher(X,bastidor(_,_,X,_,_)).
mulher(X,bastidor(_,_,_,X,_)).
mulher(X,bastidor(_,_,_,_,X)).

terceira(X,bastidor(_,_,X,_,_)).

vestido(apresentadora(X,_,_,_,_,_),X).
nome(apresentadora(_,X,_,_,_,_),X).
programa(apresentadora(_,_,X,_,_,_),X).
horario(apresentadora(_,_,_,X,_,_),X).
idade(apresentadora(_,_,_,_,X,_),X).
signo(apresentadora(_,_,_,_,_,X),X).

aolado(X,Y,bastidor(X,Y,_,_,_)).
aolado(X,Y,bastidor(Y,X,_,_,_)).
aolado(X,Y,bastidor(_,X,Y,_,_)).
aolado(X,Y,bastidor(_,Y,X,_,_)).
aolado(X,Y,bastidor(_,_,X,Y,_)).
aolado(X,Y,bastidor(_,_,Y,X,_)).
aolado(X,Y,bastidor(_,_,_,X,Y)).
aolado(X,Y,bastidor(_,_,_,Y,X)).

algum_lugar_direita(X,Y,bastidor(Y,X,_,_,_)).
algum_lugar_direita(X,Y,bastidor(Y,_,X,_,_)).
algum_lugar_direita(X,Y,bastidor(Y,_,_,X,_)).
algum_lugar_direita(X,Y,bastidor(Y,_,_,_,X)).
algum_lugar_direita(X,Y,bastidor(_,Y,X,_,_)).
algum_lugar_direita(X,Y,bastidor(_,Y,_,X,_)).
algum_lugar_direita(X,Y,bastidor(_,Y,_,_,X)).
algum_lugar_direita(X,Y,bastidor(_,_,Y,X,_)).
algum_lugar_direita(X,Y,bastidor(_,_,Y,_,X)).
algum_lugar_direita(X,Y,bastidor(_,_,_,Y,X)).

algum_lugar_esquerda(X,Y,Bastidor) :-
    algum_lugar_direita(Y,X,Bastidor).

exatamente_esquerda(X,Y,bastidor(X,Y,_,_,_)).
exatamente_esquerda(X,Y,bastidor(_,X,Y,_,_)).
exatamente_esquerda(X,Y,bastidor(_,_,X,Y,_)).
exatamente_esquerda(X,Y,bastidor(_,_,_,X,Y)).

exatamente_direita(X,Y,Bastidor) :-
    exatamente_esquerda(Y,X,Bastidor).

algum_lugar_entre(X,Y,Z,bastidor(Y,X,Z,_,_)).
algum_lugar_entre(X,Y,Z,bastidor(Y,X,_,Z,_)).
algum_lugar_entre(X,Y,Z,bastidor(Y,X,_,_,Z)).
algum_lugar_entre(X,Y,Z,bastidor(Y,_,X,Z,_)).
algum_lugar_entre(X,Y,Z,bastidor(Y,_,X,_,Z)).
algum_lugar_entre(X,Y,Z,bastidor(Y,_,_,X,Z)).
algum_lugar_entre(X,Y,Z,bastidor(_,Y,X,Z,_)).
algum_lugar_entre(X,Y,Z,bastidor(_,Y,X,_,Z)).
algum_lugar_entre(X,Y,Z,bastidor(_,Y,_,X,Z)).
algum_lugar_entre(X,Y,Z,bastidor(_,_,Y,X,Z)).






