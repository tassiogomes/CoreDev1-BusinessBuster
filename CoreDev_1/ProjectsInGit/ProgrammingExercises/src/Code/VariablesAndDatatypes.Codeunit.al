codeunit 55101 "Variables Datatypes Codeunit"
{
    trigger OnRun()
    begin
        String1 := 'HelloWorldOfManyManyCharactersInTheString';
        
        // Determine the maximum length that can be assigned to String2
        String2 := CopyStr(String1, 1, MaxStrLen(String2));

        // Display the result
        Message('String1: %1', String1);
        Message('String2: %1', String2);
        Message('The value of %1 is %2', 'LoopNo', LoopNo);
    end;
    
    var
        Color: Option Red, Green, Blue;
        LoopNo: Integer;
        MyDate: Date;
        MyText: Text;
        LoopNoDec: Decimal;
        String1: Text[60];
        String2: Text[30];

}