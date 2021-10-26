permissionset 50200 "Coding Experim. CPTE"
{
    Assignable = true;
    Caption = 'Coding Experiments';
    Permissions =
        tabledata "Report Substitution CPTE" = RIMD,
        tabledata "Image Library CPTE" = RIMD,
        table "Report Substitution CPTE" = X,
        table "Image Library CPTE" = X;
}