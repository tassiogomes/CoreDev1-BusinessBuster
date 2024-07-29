codeunit 60201 "Egg Type Codeunit"
{
    trigger OnRun()
    begin

    end;

    var
        EggTypeRec: Record "Egg Type Table";


    procedure InsertEggType(EggTypeCode: Code[20]; EggTypeDescription: Code[20])
    begin
        Clear(EggTypeRec);                                      // limpa

        EggTypeRec."No." := EggTypeCode;                        // assign o parâmetro a variável
        EggTypeRec.Description := EggTypeDescription;           // assign o parâmetro a variável 

        EggTypeRec.Insert();

    end;

}

