permissionset 50200 "Coding Experim. CPTE"
{
    Assignable = true;
    Caption = 'Coding Experiments';
    Permissions =
        table "Report Substitution CPTE" = X,
        tabledata "Report Substitution CPTE" = RMID,
        table "Image Library CPTE" = X,
        tabledata "Image Library CPTE" = RMID,
        table "Hierarchy Descr. CPTE" = X,
        tabledata "Hierarchy Descr. CPTE" = RMID,
        codeunit "ReportManagement Subscr. CPTE" = X,
        codeunit "Image Library Helper CPTE" = X,
        codeunit "Hierarchy Descr. Helper CPTE" = X,
        page "Report Substitutions CPTE" = X,
        page "Image Library FactBox CPTE" = X,
        page "Hierarchy Descr. CPTE" = X,
        page "Image Library Card CPTE" = X,
        page "Image Library List CPTE" = X,
        page "Hierarchy Descr. Tree CPTE" = X,
        report "Image Library CPTE" = X;
}