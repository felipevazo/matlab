function[mantisa, pot]=Programa_principal(num)
if num==0
    fprintf('El numero en binario es 0')
    mantisa=0;
    pot=0;
else
    entera= floor(num);º
    decimal=num-entera;
    [ mantisa,pot,cont_bits]=Parte_entera( entera );
    [ decimal_binario, bits]=Parte_decimal(decimal,cont_bits);
    %%%%Visualisacion del menu
    mant_ent=num2str(mantisa);
    dec_bin=num2str(decimal_binario);
    fprintf('El numero en binario es: \t_%_._%_\n',mant_ent,dec_bin)
    %%% Dejar toda la mantisa en un solo vector
    for i=1 bits
        mantisa(i+cont_bits)=decimal_binario(i);
    end
end
end

