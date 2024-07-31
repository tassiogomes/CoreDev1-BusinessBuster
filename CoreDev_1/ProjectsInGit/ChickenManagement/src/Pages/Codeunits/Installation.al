codeunit 60202 "Installation Codeunit"
{

    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        ChickenTypeRec: Record "Chicken Type Table";
    begin
        ChickenTypeRec.Init();
        if ChickenTypeRec.IsEmpty() then begin
            InsertDefaultChickenTypes();
        end;

    end;


    // trigger OnRun()
    // begin

    // end;
    
    var
        myInt: Integer;

    // procedures
    local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[50])
    var
        ChickenTypeRec: Record "Chicken Type Table";

    begin
        Clear(ChickenTypeRec);

        ChickenTypeRec."No." := ChickenTypeCode;
        ChickenTypeRec.Description := ChickenTypeDescription;

        ChickenTypeRec.Insert();
    end;

    local procedure InsertDefaultChickenTypes()
    var
        ChickenTypeRec: Record "Chicken Type Table";

    begin
        Clear(ChickenTypeRec);
        if not ChickenTypeRec.IsEmpty() then exit;
        begin
            // Insere três tipos de frango
            InsertChickenType('CHICKEN_TYPE_1', 'Chicken Type 1');
            InsertChickenType('CHICKEN_TYPE_2', 'Chicken Type 2');
            InsertChickenType('CHICKEN_TYPE_3', 'Chicken Type 3');
        end;      
    end;
    
}