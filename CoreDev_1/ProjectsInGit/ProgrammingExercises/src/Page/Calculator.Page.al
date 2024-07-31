page 55104 "Calaculator Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Calculator Card Page';

    layout
    {
        area(Content)
        {
            // first group
            group(Inputs)
            {
                Caption = 'Input';
                field(FristValue; FirstValue)
                {
                    Caption = 'Frist Value';
                    ApplicationArea = All;
                }
                field(SecondValeu; SecondValue)
                {
                    Caption = 'Second Value';
                    ApplicationArea = All;
                }
            }

            // Second Group
            group(Outputs)
            {
                Caption = 'Output';

                group(LeftSide)
                {
                    field(Result; Result)
                    {
                        Caption = 'Result';
                        ApplicationArea = All;
                    }
                }
                group(Rightide)
                {
                    field(IsBigger; IsBigger)
                    {
                        Caption = 'IsBigger';
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field(IsSmaller; IsSmaller)
                    {
                        Caption = 'IsSmaller';
                        ApplicationArea = All;
                        Editable = false;
                    }
                }

            }
        }
    }

    actions
    {

        area(Processing)
        {
            action(Plus)
            {
                Caption = '+';
                ApplicationArea = All;
                Image = Calculate;
                Promoted = true;
                PromotedIsBig = true; // verificar isso

                trigger OnAction()
                begin
                    ClearComparisons();
                    Result := FirstValue + SecondValue;
                end;
            }
            action(Minus)
            {
                Caption = '-';
                ApplicationArea = All;
                Image = Calculate;
                Promoted = true;
                PromotedIsBig = true; //

                trigger OnAction()
                begin
                    ClearComparisons();
                    Result := FirstValue - SecondValue;
                end;
            }
            action(Multiply)
            {
                Caption = '*';
                ApplicationArea = All;
                Image = Calculate;
                Promoted = true;
                PromotedIsBig = true; //

                trigger OnAction()
                begin
                    ClearComparisons();
                    Result := FirstValue * SecondValue;
                end;
            }
            action(Divide)
            {
                Caption = '/';
                ApplicationArea = All;
                Image = Calculate;
                Promoted = true;
                PromotedIsBig = true; //

                trigger OnAction()
                begin
                    if SecondValue <> 0 then begin
                        ClearComparisons();
                        Result := FirstValue / SecondValue;
                    end else begin
                        Message('Division by zero is not allowed');
                    end;

                end;
            }
            action(Bigger)
            {
                Caption = '>';
                ApplicationArea = All;
                Image = Calculate;
                Promoted = true;
                PromotedIsBig = true;//

                trigger OnAction()
                begin
                    ClearComparisons();
                    CheckIsBigger();
                end;
            }
            // action(Lower)
            // {
            //     Caption = '<';
            //     ApplicationArea = All;
            //     Image = Calculate;
            //     Promoted = true;
            //     PromotedIsBig = true;//

            //     trigger OnAction()
            //     begin
            //         ClearComparisons();
            //         CheckIsBigger();
            //     end;
            // }
            action(Div)
            {
                Caption = 'DIV';
                ApplicationArea = All;
                Image = Calculate;
                Promoted = true;
                PromotedIsBig = true; //

                trigger OnAction()
                begin
                    if SecondValue <> 0 then begin
                        ClearComparisons();
                        Result := (FirstValue DIV SecondValue);
                    end else begin
                        Message('Division by zero is not allowed');
                    end;

                end;
            }
            action(Modulo)
            {
                Caption = 'MOD';
                ApplicationArea = All;
                Image = Calculate;
                Promoted = true;
                PromotedIsBig = true; //

                trigger OnAction()
                begin
                    if SecondValue <> 0 then begin
                        ClearComparisons();
                        Result := FirstValue MOD SecondValue;
                    end else begin
                        Message('Division by zero is not allowed');
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
        FirstValue, SecondValue, Result : decimal;
        IsBigger, IsSmaller : boolean;

local procedure CheckIsBigger()
begin
    if FirstValue > SecondValue then
        IsBigger := true
    else if FirstValue < SecondValue then
        IsSmaller := true
    else
        ; // Não faz nada se forem iguais
end;

    local procedure ClearComparisons()
    begin
        IsBigger := false;
        IsSmaller := false;
    end;

}