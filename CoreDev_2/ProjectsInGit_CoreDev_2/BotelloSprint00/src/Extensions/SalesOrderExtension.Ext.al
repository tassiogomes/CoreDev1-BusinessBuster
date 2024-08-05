pageextension 50105 "Saler Order Extension" extends "Sales Order"
{
    Caption = 'Saler Order Extension';

    layout
    {
        addafter(Control1906127307)                 // Adiciona abaixo outras factoboxes e (Factboxes) é pré definido.
        {
            part(SalesPriceFactbox; "Sales Price Factbox")
            {
                Caption = 'Sales Price Factbox';
                Provider = SalesLines;
                SubPageLink = "Item No."  = FIELD("No."); // Link o item No. da tabela Sales Order com o Id da linha em Sales Line.
                // Nesse bloco o provider foi usaso para tornar o FIELD("No.") para a Tabela Sales line.
                // Se nao usar o provider o No. vai para a Saler Header que é a tabela mãe.
                

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