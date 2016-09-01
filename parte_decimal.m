
    function[ decimal_binario, bits]=Parte_decimal( decimal, cont_bits)
        %decimal:numero en base 10 decimal
        %cont_bits:Cantidad de bits usadas por la parte entera de la
        %mantisa
        %decimal_binario: mantisa decimal
        %bits: Digitos usados en la mantisa parte decimal
        if decimal==0
            decimal_binario=0;
            bits=0;
        else
            i=1;
            n=23-cont_bits;
            while decimal ˜=0&& i<=n
                decimal=decimal*2;
                decimal_binario(i)=floor(decimal);%parte decimal del binario
                decimal=decimal-decimal_binario(i);
                i=i+1;
            end
            bits=i-1;
        end
    end
