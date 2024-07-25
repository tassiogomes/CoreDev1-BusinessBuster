pageextension 55113 "Items List Extension" extends "Item List"
{
    Caption = 'Items List Extensions';
    
    layout // Add changes to page layout here
    {
        addafter(InventoryField) // de onde eu tiraria isso?
        {
            field(Availability; Availability)
            {
                Caption = 'Availability';
                ApplicationArea = All;
                ToolTip = 'Displays the Availability of the item.';
                Editable = false;
                StyleExpr = "FieldStyle";       // tem que existir uma variável para esse campo
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        Availability: Decimal;
        FieldStyle: Text;

    trigger OnAfterGetRecord()
    begin
        rec.CalcFields(rec."Qty. on Purch. Order", rec."Qty. on Sales Order", rec.Inventory);
        Availability := rec.Inventory + rec."Qty. on Purch. Order" - rec."Qty. on Sales Order";
       
        if Availability = rec.Inventory then FieldStyle := 'Standard';
        if Availability < rec.Inventory then FieldStyle := 'Attention';
        if Availability > rec.Inventory then FieldStyle := 'Favorable';
    end;
}