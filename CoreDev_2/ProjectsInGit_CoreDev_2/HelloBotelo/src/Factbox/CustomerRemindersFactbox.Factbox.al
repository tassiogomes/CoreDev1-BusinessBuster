// page 50100 "Customer Reminders Factbox"
// {
//     Caption = 'Customer Reminders Factbox';
//     PageType = ListPart;
//     ApplicationArea = All;
//     UsageCategory = Lists;
//     SourceTable = "Reminder/Fin. Charge Entry";
//     Editable = false;
    
//     layout
//     {
//         area(Content)
//         {
//             repeater(GroupName)
//             {
//                 field(Name; NameSource)
//                 {
//                     ApplicationArea = All;
                    
//                 }
//             }
//         }
//         area(Factboxes)
//         {
            
//         }
//     }
    
//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {
//                 ApplicationArea = All;
                
//                 trigger OnAction()
//                 begin
                    
//                 end;
//             }
//         }
//     }
// }