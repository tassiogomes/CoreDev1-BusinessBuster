page 55107 "Get Numbers Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Get Numbers Page';
    
    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(InputText; InputText)
                {
                    Caption = 'Input';
                    ApplicationArea = All;  
                }
            }
        }
    }
    
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
                    ExtractedNumbers := Calc.GetNumbers(InputText);
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
        InputText: Text;
        ExtractedNumbers: Text;
}