pageextension 50380 "KOB_Test_Newfield" extends "Item Ledger Entries" {
    layout {
        addbefore("Order Type") {
            field(KOB_display; Rec."KOB_display") {
                ApplicationArea = All;
            }
        }
    }
}
