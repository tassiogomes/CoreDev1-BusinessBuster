pageextension 50102 "Customer List Extension" extends "Customer List"
{
    Caption = 'Customer List Extension';
    layout
    {
        addfirst(FactBoxes) // adiciona como a primeira factobox
        {
            part(CustomerRemindersFactbox; "Customer Reminders Factbox")  // Mapeia o No. da factbox com o Customer No. da tabela original
            {
                Caption = 'Customer Reminders Factbox';
                SubPageLink = "Customer No." = FIELD("No.");
                ApplicationArea = All;
            }
        }
    }

    var
        myInt: Integer;
}
