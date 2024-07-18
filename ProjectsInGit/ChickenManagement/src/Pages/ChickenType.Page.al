page 60107 "Chicken Type Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Chicken Type Table";
    Editable = true;                        // Impede edição direta na lista.
    InsertAllowed = true;  					// Impede inserções.
    ModifyAllowed = true;  					// Permite modificações.
    DeleteAllowed = false;  				// Impede deleções.
    Caption = 'Chicken Type List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'Chicken type';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
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

    var
        myInt: Integer;
}