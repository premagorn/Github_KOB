page 50380 "KOB_Pages_Testing"
{
    PageType = List;
    SourceTable = KOB_Table_Testing;
    Caption = 'KOB_Pages_Testing_Caption';
    ApplicationArea = All; //ตั้งเพื่อให้ถูก Serach เจอ
    UsageCategory = Tasks; //ตั้งเพื่อให้ถูก Serach เจอ
    CardPageId = "KOB_Booking Card Test";
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    Editable = false;

    layout 
    {
        area(Content) //Content(ใช้บ่อย) & FactsBoxes
        {

            repeater(data) //List ต้องมี Repeater เพื่อ Unpack และ data คือ Iterater ใน Content
            {
                field("Entry No."; Rec."Entry No.") //rfield page ทำลัด  // Entry No. = ชื่อตั้งเอง // Rec."Entry No. = Refer From Table
                {
                    ApplicationArea = All; //ต้องติดไว้เสมอ
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Register Date"; Rec."Register Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(KOB_action_test)
            {
                ApplicationArea = All;
                Caption = 'Caption_Action_TEST';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = BarCode;
            
                trigger OnAction()
                begin
                    Message('Hello World');
                end;
            }
        }
    }
}
