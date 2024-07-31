codeunit 60200 "Chicken Table Codeunit"
{
    trigger OnRun()
    begin
        
    end;
    
    var
        EggProductionLineRec: Record "Egg Production Line Table";
        ChickenTableRec: Record "Chicken Table";
        ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs, you can''t detele it.', Comment = '%1 = Chicken No. ; %2 = Chicken Description' ;        
        
    
    procedure DeletionLogic()
    begin

        Clear(EggProductionLineRec); // limpa a variável EggProd...

        EggProductionLineRec.SetRange(EggProductionLineRec."Chicken No.", ChickenTableRec."No."); // filtra a variável em relação ao Chicken atual
            
            if EggProductionLineRec.IsEmpty() then // Check if any records exist for the given Chicken No.
                Error(ChickenHasEggsErr, ChickenTableRec."No.", ChickenTableRec.Description); // Raise an error if there are eggs associated with the chicken
    end;
    
}