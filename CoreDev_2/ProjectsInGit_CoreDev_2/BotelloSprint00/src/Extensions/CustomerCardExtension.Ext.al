pageextension 50103 "Customer Card Extension" extends "Customer Card"
{
    Caption = 'Customer Card Extension';
    layout
    {
        addfirst(factboxes)
        {
            part(CustomerRemindersFactbox; "Customer Reminders Factbox")
            {
                Caption = 'Customer Reminders Factbox';
                SubPageLink = "Customer No." = field("No.");
                ApplicationArea = All;
                
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here // a
    }
    
    var
        myInt: Integer;
}