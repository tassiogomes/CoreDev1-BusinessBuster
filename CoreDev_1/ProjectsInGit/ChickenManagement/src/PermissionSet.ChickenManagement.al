    permissionset 60100 "ChickenManagement "
{
    Assignable = true;
    Caption = 'ChickenManagement ', MaxLength = 30;
    Permissions =
        table "Chicken Table" = X,
        tabledata "Chicken Table" = RMID,
        table "Chicken Type Table" = X,
        tabledata "Chicken Type Table" = RMID,
        table "Egg Production Header" = X,
        tabledata "Egg Production Header" = RMID,
        table "Egg Production Line Table" = X,
        tabledata "Egg Production Line Table" = RMID,
        table "Egg Type Table" = X,
        tabledata "Egg Type Table" = RMID,
        codeunit "Chicken Table Codeunit" = X,
        codeunit "Egg Type Codeunit" = X,
        codeunit "Installation Codeunit" = X,
        page "Chicken Type Page" = X,
        page "Egg Production Document Page" = X,
        page "Egg Production Subpgage" = X,
        page "Egg Type Page" = X,
        page "Chicken Card" = X,
        page "Chicken List" = X,
        page "Egg Production Line List" = X,
        page "Egg Production List Page" = X,
        page "Chicken Management Rolecenter" = X;
}
