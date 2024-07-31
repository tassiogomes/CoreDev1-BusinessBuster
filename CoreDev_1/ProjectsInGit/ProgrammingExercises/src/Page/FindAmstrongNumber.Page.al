page 55108 "Find Amstrong Number"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Find Amstrong Number';

    layout
    {
        area(Content)
        {
            group(RetirarDepois)
            {
                Caption = 'Enter a Start and End Number';

                field(StartNumber; StartNumber)
                {
                    Caption = 'Start Number';
                    ToolTip = 'Start Number';
                    ApplicationArea = All;
                }
                field(EndNumber; EndNumber)
                {
                    Caption = 'End Number';
                    ToolTip = 'End Number';
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetAmstrongNumbers)
            {
                Caption = 'Get Amstrong Numbers';
                ApplicationArea = All;
                Image = FileContract;
                Promoted = true;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    AmstrongCodeunit: Codeunit "Amstrong Codeunit";
                    AmstrongNumbers: List of [Integer];
                    i: Integer;
                    NumberText: Text;
                    AmstrongNumbersMessage: Text;
                begin

                    // Loop from StartNumber to EndNumber
                    for i := StartNumber to EndNumber do begin
                        if AmstrongCodeunit.CheckAmstrongNumber(i) then begin
                            AmstrongNumbers.Add(i);
                        end;
                    end;

                    // Display the results
                    if AmstrongNumbers.Count > 0 then begin
                        AmstrongNumbersMessage := '';
                        foreach i in AmstrongNumbers do begin
                            NumberText := Format(i);
                            if StrLen(AmstrongNumbersMessage) > 0 then
                                AmstrongNumbersMessage += ', ';
                            AmstrongNumbersMessage += NumberText;
                        end;

                        Message('Found %1 Armstrong numbers: %2', AmstrongNumbers.Count, AmstrongNumbersMessage);
                    end else begin
                        Message('No Armstrong numbers found in the given range.');
                    end;
                end;
            }
        }
    }

    var
        StartNumber, EndNumber : Integer;
}