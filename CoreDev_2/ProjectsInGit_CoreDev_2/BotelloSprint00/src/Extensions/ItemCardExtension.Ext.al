pageextension 50107 "Item Card Extension" extends "Item Card"
{
    Caption = 'Item Card Extension';

    layout
    {
        addfirst(factboxes)
        {
            part(SalesPriceFactbox; "Sales Price Factbox")
            {
                Caption = 'Sales Price Factbox';
                SubPageLink = "Item No." = FIELD("No.");
            }
        }
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}