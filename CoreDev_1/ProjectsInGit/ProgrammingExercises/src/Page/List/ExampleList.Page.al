page 55113 "Example List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Example Table";
    CardPageId = "Example Card Page";
    Editable = false;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                
                field(FieldOne; Rec.FieldOne)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Field One field.', Comment = '%';
                }
                field(FieldTwo; Rec.FieldTwo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Field Two field.', Comment = '%';
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