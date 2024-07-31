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
        addlast(Functions)
        {
            action(CalculateAvailabilityAction)
            {
                ApplicationArea = All;
                Caption = 'Calculate Availability Selected';
                ToolTip = 'Calculate Availability Selected';
                Image = Inventory;

                Trigger OnAction()
                begin
                    CalculateAvailabilitySelected();
                end;
            }
        }
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


    local procedure CalculateAvailabilitySelected()
    var
        TotalAvailability: Decimal;
        ItemRec: Record Item;
    begin
        Clear(TotalAvailability);
        Clear(ItemRec);

        // Loop through the selected records and calculate total availability
        CurrPage.SetSelectionFilter(ItemRec);
        if ItemRec.Count = 0 then
            Error('No items selected.');

        repeat
            ItemRec.CalcFields(ItemRec."Qty. on Purch. Order", ItemRec."Qty. on Sales Order", ItemRec.Inventory);
            TotalAvailability += ItemRec.Inventory + ItemRec."Qty. on Purch. Order" - ItemRec."Qty. on Sales Order";
        until ItemRec.Next() = 0;
        Message('Total Availability of selected items: %1', TotalAvailability);
    end;
}