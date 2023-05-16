table 50380 "KOB_Table_Testing"
{
    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Register Date"; Date)
        {
            Caption = 'Date';
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(RegisterKey; "Register Date") //INDEX KEY
        {

        }
    }
}