page 60115 "Egg Production Subpgage"
{
    Caption = 'Egg Production Subpage';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Line Table";
    AutoSplitKey = true;                    // Autoincremento a cada uma criada pelo user.
    DelayedInsert = true;  
    DeleteAllowed = true;                 // Só completa a transaction depois de cada uma ser realizada, fica em fila.

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken No."; Rec."Chicken No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken No. field.', Comment = '%';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Description field.', Comment = '%';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Production Date field.', Comment = '%';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Type Code field.', Comment = '%';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.', Comment = '%';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}