
function[ salida, pot, cont_bits]= Parte_entera(num)
%num: es el digito entero
%salida: digitos de mantisa base 2
%pot:potencia de primer digito
%con_bits: es la cantidad de bits de la mantisa usada por la parte entera
if num==0
    salida=0;
    pot=0;
    cont_bits=0;
else
    cociente=num;
    cont=1;
    while cociente>0&&cont<=23
        aux(cont)=rem(cociente,2);
        cociente=floor(cociente/2);
        cont=cont+1;
    end
    %%vueltacadena
    for i=1:1:cont-1
        salida(i)=aux(cont-1);
    end
    cont_bits=cont-1;
    pot=cont-2;
end
end
               
        