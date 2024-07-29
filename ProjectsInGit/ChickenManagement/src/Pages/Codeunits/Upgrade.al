codeunit 60112 "Upgrade"
{

    Subtype = Upgrade;
    trigger OnUpgradePerCompany()
    var
        CurrentModuleInfo: ModuleInfo;
    begin
        // Obtém informações sobre o módulo atual
        if NavApp.GetCurrentModuleInfo(CurrentModuleInfo) then begin
            // Executa a atualização apenas se a versão major for 1
            if CurrentModuleInfo.AppVersion.Major = 1 then
                UpdateChickenType();
        end;
    end;

    local procedure UpdateChickenType()
    begin
        UpdateChickenType('CHICKEN_TYPE_1', 'Type 1', 'Chicken Type 01');
        UpdateChickenType('CHICKEN_TYPE_2', 'Type 2', 'Chicken Type 02');
        UpdateChickenType('CHICKEN_TYPE_3', 'Type 3', 'Chicken Type 03');
    end;

    local procedure UpdateChickenType(OldChickenTypeCode: Code[20]; NewChickenTypeCode: Code[20]; NewChickenTypeDescription: Text[100])
    var
        ChickenTypeRec: Record "Chicken Type Table";
    begin
        if ChickenTypeRec.Get(OldChickenTypeCode) then
            begin
                ChickenTypeRec.Rename(NewChickenTypeCode);
                ChickenTypeRec.Description := NewChickenTypeDescription;
                ChickenTypeRec.Modify();
            end;
    end;



}
