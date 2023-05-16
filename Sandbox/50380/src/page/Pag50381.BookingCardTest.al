page 50381 "KOB_Booking Card Test"
{
    PageType = Card;
    Caption = 'Booking';
    SourceTable = KOB_Table_Testing;
    layout
    {
        area(Content)
        {
            field("Entry No."; Rec."Entry No.")
            {
                ApplicationArea = All;
            }
            field("Register Date"; Rec."Register Date")
            {
                ApplicationArea = All;
            }
            field(Description; Rec.Description)
            {
                ApplicationArea = All;
            }
        }
    }
}