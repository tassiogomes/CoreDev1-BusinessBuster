pageextension 55103 "CustomerListExt" extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        addfirst("&Customer")
        {
            action(RunVariableAndDatatypes)
            {
                ApplicationArea = All;
                Caption = 'Run Variable And Datatypes';
                ToolTip = 'This actin runs variables and datatypes from codeunit';
                Image = Action;

                
                trigger OnAction()
                var
                    VariableAndDatatypes: Codeunit "Variables Datatypes Codeunit";

                begin
                    VariableAndDatatypes.Run();
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}