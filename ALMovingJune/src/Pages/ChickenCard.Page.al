page 60105 "Chicken Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration; // não se usa isso pq não quer que o card seja pesquisável.
    SourceTable = Chicken;
    Caption = 'Chicken Card';
    Editable = true;                        // Impede edição direta na lista.
    InsertAllowed = true;  					// Impede inserções.
    ModifyAllowed = true;  					// Permite modificações.
    DeleteAllowed = false;  				// Impede deleções.

    layout
    {
        area(Content)
        {
            group(ChickenInfo)
            {
                Caption = 'Chicken Info';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(ChickenTypeCode; Rec.ChickenTypeCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Type Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(LastDateModified; Rec.LastDateModified)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Date Modified field.', Comment = '%';
                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Picture field.', Comment = '%';
                }
                field(ChickenTypeDescription; Rec.ChickenTypeDescription)
                {
                    ApplicationArea = All;
                    ToolTip = 'Chicken Type Description FlowField Exercise', Comment = '%';
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





