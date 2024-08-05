pageextension 50101 "Customer Ledger Entries Ext" extends "Customer Ledger Entries"
{
    Caption = 'Customer Ledger Entries Extension';
    
    layout
    {
        addfirst(FactBoxes)
        {
            part(CustomerRemindersFactbox; "Customer Reminders Factbox")
            {
                Caption = 'Customer Reminders Factbox';
                SubPageLink = "Customer Entry No." = FIELD("Entry No.");    // Mapeia o No. da TABELA com o Customer No. da tabela original
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}

