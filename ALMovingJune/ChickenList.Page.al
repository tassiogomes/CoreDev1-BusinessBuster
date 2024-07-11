page 60106 "Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Chicken;
    CardPageId = "Chicken Card";    // Isso faz que ao clicar no id na lista, abra o card.
    Editable = true;                        // Impede edição direta na lista.
    InsertAllowed = true;  					// Impede inserções.
    ModifyAllowed = true;  					// Permite modificações.
    DeleteAllowed = false;  				// Impede deleções.
    Caption = 'Chicken List';
    
    layout
    {
        area(Content)
        {
            repeater(ChickenList)           // sempre que for list usar o repeater.
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                    ApplicationArea = All;
                    TableRelation = "ChickenType"."No.";
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = 'TESTE COMMENT';
                    ApplicationArea = All;
                }
                field(ChickenTypeCode; Rec.ChickenTypeCode)
                {
                    ToolTip = 'Specifies the value of the Chicken Type Code field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {
            
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