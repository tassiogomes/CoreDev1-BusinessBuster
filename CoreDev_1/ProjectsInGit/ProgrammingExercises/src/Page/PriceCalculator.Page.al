page 55106 "Price Calculator Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Price Calulator';


    layout
    {
        area(Content)
        {
            // first group, inputs
            group(Inputs)
            {
                Caption = 'Input';
                field(Quantity; Quantity)
                {
                    Caption = 'Quantity';
                    ApplicationArea = All;
                }
                field(Price; Price)
                {
                    Caption = 'Price';
                    ApplicationArea = All;
                }
            }
            // second group, outputs
            group(Outputs)
            {
                Caption = 'Output';
                // leftside
                group(LeftSide)
                {
                    field(Result; Result)
                    {
                        Caption = 'Result';
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field(TotalSales; TotalSales)
                    {
                        Caption = 'Total Sales';
                        ApplicationArea = All;
                        Editable = false;
                    }
                }
                // right side
                group(RightSide)
                {
                    Caption = 'Right Side';
                    field(TotalCredits; TotalCredits)
                    {
                        Caption = 'Total Credits';
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field(GrandTotal; GrandTotal)
                    {
                        Caption = 'Grand Total';
                        ApplicationArea = All;
                        Editable = false;
                    }
                }
            }
        }
    }

    // actions
    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                Caption = 'Execute';
                ToolTip = 'Execute';
                ApplicationArea = All;
                Image = FileContract;
                Promoted = true;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    Calc: Codeunit "Calculator Codeunit";
                begin
                    Result := Calc.CalculateResult(Price, Quantity);
                    TotalSales := Calc.CalculateTotalSales(Result, TotalSales);
                    TotalCredits := Calc.CalculateTotalCredits(TotalSales);
                    GrandTotal := Calc.CalculateGrandTotal(TotalSales, TotalCredits);
                    begin
                        if Quantity = 0 then begin
                            Exit;
                        end else begin
                            Result := Quantity * Price;
                            GrandTotal += Result;
                            if Result < 0 then begin
                                TotalCredits += Result;
                            end else begin
                                TotalSales += Result;
                            end;
                        end;
                    end;
                end;
            }
            action(Clear)
            {
                ApplicationArea = All;
                Caption = 'Clear';
                Image = ClearLog;
                Promoted = true;
                PromotedIsBig = true; //

                trigger OnAction()
                begin
                    ClearAll();
                end;
            }
        }
    }

    var
        Quantity: Integer;
        Price, Result, TotalCredits, TotalSales, GrandTotal : Decimal;

}