unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,DFCodeFormatting, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ButtonFormatDelphi: TButton;
    ButtonMinifyHTML: TButton;
    ButtonFormatCSS: TButton;
    ButtonMinifySQL: TButton;
    ButtonFormatJavaScript: TButton;
    ButtonFormatXML: TButton;
    ButtonFormatPHP: TButton;
    ButtonFormatJson: TButton;
    procedure ButtonFormatDelphiClick(Sender: TObject);
    procedure ButtonMinifyHTMLClick(Sender: TObject);
    procedure ButtonFormatCSSClick(Sender: TObject);
    procedure ButtonMinifySQLClick(Sender: TObject);
    procedure ButtonFormatJavaScriptClick(Sender: TObject);
    procedure ButtonFormatXMLClick(Sender: TObject);
    procedure ButtonFormatPHPClick(Sender: TObject);
    procedure ButtonFormatJsonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonFormatCSSClick(Sender: TObject);
var
  FormattedCSS: string;
begin
  // Example: Format CSS code
  FormattedCSS := TCodeFormatter.FormatCSS(Memo1.Lines.Text);
  Memo1.Lines.Text := FormattedCSS;

end;

procedure TForm1.ButtonFormatDelphiClick(Sender: TObject);
var
  FormattedDelphi: string;
begin
  // Example: Format Delphi code
  FormattedDelphi := TCodeFormatter.FormatDelphi(Memo1.Lines.Text);
  Memo1.Lines.Text := FormattedDelphi;

end;

procedure TForm1.ButtonFormatJavaScriptClick(Sender: TObject);
var
  FormattedJS: string;
begin
  // Example: Format JavaScript code
  FormattedJS := TCodeFormatter.FormatJavaScript(Memo1.Lines.Text);
  Memo1.Lines.Text := FormattedJS;

end;

procedure TForm1.ButtonFormatJsonClick(Sender: TObject);
var
  FormattedJson: string;
begin
  // Example: Format JSON code
  FormattedJson := TCodeFormatter.FormatJson(Memo1.Lines.Text);
  Memo1.Lines.Text := FormattedJson;

end;

procedure TForm1.ButtonFormatPHPClick(Sender: TObject);
var
  FormattedPHP: string;
begin
  // Example: Format PHP code
  FormattedPHP := TCodeFormatter.FormatPHP(Memo1.Lines.Text);
  Memo1.Lines.Text := FormattedPHP;

end;

procedure TForm1.ButtonFormatXMLClick(Sender: TObject);
var
  FormattedXML: string;
begin
  // Example: Format XML code
  FormattedXML := TCodeFormatter.FormatXML(Memo1.Lines.Text);
  Memo1.Lines.Text := FormattedXML;

end;

procedure TForm1.ButtonMinifyHTMLClick(Sender: TObject);
var
  MinifiedHTML: string;
begin
  // Example: Minify HTML code
  MinifiedHTML := TCodeFormatter.MinifyHTML(Memo1.Lines.Text);
  Memo1.Lines.Text := MinifiedHTML;

end;

procedure TForm1.ButtonMinifySQLClick(Sender: TObject);
var
  MinifiedSQL: string;
begin
  // Example: Minify SQL code
  MinifiedSQL := TCodeFormatter.MinifySQL(Memo1.Lines.Text);
  Memo1.Lines.Text := MinifiedSQL;

end;

end.
