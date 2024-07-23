codeunit 55107 "Calculator Codeunit"
{
    trigger OnRun()
    begin

    end;    
    
    var
        Quantity: Integer;
        Price, Result, TotalCredits, TotalSales, GrandTotal : Decimal;
        InputText: Text;




    // Procedures

    procedure CalculateResult(Price: Decimal; Quantity: Integer) : Decimal
    var
        Result: Decimal;
    begin
        Result := Price * Quantity;
        exit(Result);
    end;

    procedure CalculateTotalSales(Result: Decimal; CurrentTotalSales: Decimal) : Decimal
    var
        TotalSales: Decimal;
    begin
        TotalSales := CurrentTotalSales + Result;
        exit(TotalSales);
    end;

    procedure CalculateTotalCredits(TotalSales: Decimal) : Decimal
    var
        TotalCredits: Decimal;
    begin
        TotalCredits := TotalSales * 0.1; // Example: 10% of total sales as credits
        exit(TotalCredits);
    end;

    procedure CalculateGrandTotal(TotalSales: Decimal; TotalCredits: Decimal) : Decimal
    var
        GrandTotal: Decimal;
    begin
        GrandTotal := TotalSales + TotalCredits;
        exit(GrandTotal);
    end;

procedure GetNumbers(InputText: Text) : Text
var 
    ExtractedNumbers: Text;
    i: Integer;
    CurrentChar: Text[1];
begin
    if StrLen(InputText) > 0 then
    begin
        ExtractedNumbers := '';
        for i := 1 to StrLen(InputText) do 
        begin
            CurrentChar := CopyStr(InputText, i, 1);
            
            if CurrentChar in ['0'..'9'] then
            begin
                ExtractedNumbers += CurrentChar;
            end;
        end;
        Message(ExtractedNumbers);
        exit(ExtractedNumbers);
    end
    else
    begin
        Message('Empty field');
        exit('');
    end;
end;
}

