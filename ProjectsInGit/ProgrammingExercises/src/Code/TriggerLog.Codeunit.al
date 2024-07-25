codeunit 55113 "TriggerLog Codeunit"
{
    trigger OnRun()
    begin
        // O código do trigger OnRun vai aqui se necessário
    end;

    procedure InsertLogEntry(ObjectName: Text[100]; TriggerName: Text[100])
    var
        LastEntry: Integer;                         // variável que receberá o No +1
        TriggerLogRec: Record "TriggerLog Table";   // variável record que puxa os valores de BD

    begin
        // Encontrar o último número de entrada
        if TriggerLogRec.FindLast() then
            LastEntry := TriggerLogRec."Entry No."
        else
            LastEntry := 0;


        // Inicializar e inserir o novo registro
        TriggerLogRec.Init();
        TriggerLogRec."Entry No." := LastEntry + 1;
        TriggerLogRec."Object Name" := ObjectName;
        TriggerLogRec."Trigger Name" := TriggerName;
        TriggerLogRec."TimeStampp" := CurrentDateTime();
        TriggerLogRec.Insert();
    end;



    procedure ClearLogEntries()
    var
        TriggerLogRec: Record "TriggerLog Table";

    begin
        if TriggerLogRec.FindSet() then
            TriggerLogRec.DeleteAll();
    end;
}
