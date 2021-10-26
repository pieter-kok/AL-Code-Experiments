page 50201 "Image Library Card CPTE"
{
    Caption = 'Image Library Card';
    PageType = Card;
    PromotedActionCategories = 'New,Process,Report,Source,Functions,Target';
    SourceTable = "Image Library CPTE";
    UsageCategory = None;

    layout
    {
        area(Content)
        {
            group(GeneralTab)
            {
                Caption = 'General';

                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an entry number.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a description for the image.';
                }
            }

            group(SourceTab)
            {
                Caption = 'Source';

                field("Source Base64"; Rec."Source Base64".HasValue)
                {
                    ApplicationArea = All;
                    Caption = 'Source Base64 Available';
                    ToolTip = 'Specifies whether the Base64 version of the source image is available.';
                    Editable = false;
                }
                field("Source Height"; Rec."Source Height")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the height of the source image.';
                }
                field("Source Width"; Rec."Source Width")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the width of the source image.';
                }
                field("Source Format"; Rec."Source Format")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the format of the source image.';
                }
                field("Source Format Text"; Rec."Source Format Text")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the text representation of the format of the source image.';
                }
            }
            group(FunctionParametersTab)
            {
                Caption = 'Function Parameters';

                field("Crop X"; Rec."Crop X")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the X coordinate of the rectangle.';
                }
                field("Crop Y"; Rec."Crop Y")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Y coordinate of the rectangle.';
                }
                field(Height; Rec."Height")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the height of the rectangle.';
                }
                field(Width; Rec."Width")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the width of the rectangle.';
                }
            }
            group(TargetTab)
            {
                Caption = 'Target';

                field("Target Base64"; Rec."Target Base64".HasValue)
                {
                    ApplicationArea = All;
                    Caption = 'Target Base64 Available';
                    ToolTip = 'Specifies whether the Base64 version of the target image is available.';
                    Editable = false;
                }
                field("Target Height"; Rec."Target Height")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the height of the target image.';
                }
                field("Target Width"; Rec."Target Width")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the width of the target image.';
                }
                field("Target Format"; Rec."Target Format")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the format of the target image.';
                }
                field("Target Format Text"; Rec."Target Format Text")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the text representation of the format of the target image.';
                }
            }
        }
        area(FactBoxes)
        {
            part("Image Library FactBox CPTE"; "Image Library FactBox CPTE")
            {
                ApplicationArea = All;
                SubPageLink = "Entry No." = field("Entry No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group(ReportActions)
            {
                action(Print)
                {
                    ApplicationArea = All;
                    Caption = 'Print';
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Report;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Print the image library.';

                    trigger OnAction()
                    begin
                        Rec.PrintImageLibrary();
                    end;
                }
            }
            group(SourceActions)
            {
                Caption = 'Source';

                action(ImportSourceImage)
                {
                    ApplicationArea = All;
                    Caption = 'Import Source Image';
                    Image = Import;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Uploads an image as source image.';

                    trigger OnAction()
                    begin
                        Rec.ImportImage(Rec.FieldNo("Source Image"));
                    end;
                }
                action(DeleteSourceImage)
                {
                    ApplicationArea = All;
                    Caption = 'Delete Source Image';
                    Image = Delete;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Deletes the current source image.';

                    trigger OnAction()
                    begin
                        Rec.DeleteImage(Rec.FieldNo("Source Image"));
                    end;
                }
                action(ExportSourceImageMedia)
                {
                    ApplicationArea = All;
                    Caption = 'Export Source Image';
                    Image = Export;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Exports the current source image.';

                    trigger OnAction()
                    begin
                        Rec.ExportImageFromMedia(Rec.FieldNo("Source Image"));
                    end;
                }
                action(ExportSourceImageBase64)
                {
                    ApplicationArea = All;
                    Caption = 'Export Source Base64';
                    Image = Export;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Exports the base64 version of the source image .';

                    trigger OnAction()
                    begin
                        Rec.ExportBase64(Rec.FieldNo("Source Base64"));
                    end;
                }
            }
            group(FunctionsActions)
            {
                Caption = 'Functions';

                action(CropImage)
                {
                    ApplicationArea = All;
                    Caption = 'Crop Image';
                    Image = Change;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Crops the image according to the function parameters.';

                    trigger OnAction()
                    begin
                        Rec.CropImage();
                    end;
                }
                action(ResizeImage)
                {
                    ApplicationArea = All;
                    Caption = 'Resize Image';
                    Image = Dimensions;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Resizes the image according to the function parameters.';

                    trigger OnAction()
                    begin
                        Rec.ResizeImage();
                    end;
                }
            }
            group(TargetActions)
            {
                Caption = 'Target';

                action(DeleteTargetImage)
                {
                    ApplicationArea = All;
                    Caption = 'Delete Target Image';
                    Image = Delete;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Deletes the current target image.';

                    trigger OnAction()
                    begin
                        Rec.DeleteImage(Rec.FieldNo("Target Image"));
                    end;
                }
                action(ExportTargetImage)
                {
                    ApplicationArea = All;
                    Caption = 'Export Target Image';
                    Image = Export;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Exports the current target image.';

                    trigger OnAction()
                    begin
                        Rec.ExportImageFromMedia(Rec.FieldNo("Target Image"));
                    end;
                }
                action(ExportTargetBase64)
                {
                    ApplicationArea = All;
                    Caption = 'Export Target Base64';
                    Image = Export;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Exports the base64 version of the current target image .';

                    trigger OnAction()
                    begin
                        Rec.ExportBase64(Rec.FieldNo("Target Base64"));
                    end;
                }
            }
        }
    }


}