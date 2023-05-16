tableextension 50381 "KOB_Test_Newfield" extends "Item Ledger Entry" {
    fields {
        field(50100; KOB_display; Text[100]) {
            FieldClass = FlowField;
            CalcFormula = Lookup(Item.Description where("No." = field("Item No.")));
        }
    }
}
