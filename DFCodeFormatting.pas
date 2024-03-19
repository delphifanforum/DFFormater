unit DFCodeFormatting;

interface

uses
  System.SysUtils,
  System.Classes,
  System.StrUtils,
  System.JSON,
  XML.XMLDoc;

type
  TCodeFormatter = record
  public type
    TIndentationType = (Spaces, Tabs);
  public
    // Format methods
    class function FormatDelphi(delphi: String; IndentationType: TIndentationType = TIndentationType.Spaces; IndentationCount: Integer = 2): String; static;
    class function FormatHTML(html: String; IndentationType: TIndentationType = TIndentationType.Spaces; IndentationCount: Integer = 2): String; static;
    class function FormatCSS(css: String; IndentationType: TIndentationType = TIndentationType.Spaces; IndentationCount: Integer = 2): String; static;
    class function FormatSQL(sql: String; IndentationType: TIndentationType = TIndentationType.Spaces; IndentationCount: Integer = 2): String; static;
    class function FormatJavaScript(js: String; IndentationType: TIndentationType = TIndentationType.Spaces; IndentationCount: Integer = 2): String; static;
    class function FormatXML(xml: String; IndentationType: TIndentationType = TIndentationType.Spaces; IndentationCount: Integer = 2): String; static;
    class function FormatPHP(php: String; IndentationType: TIndentationType = TIndentationType.Spaces; IndentationCount: Integer = 2): String; static;
    class function FormatJson(json: String; IndentationType: TIndentationType = TIndentationType.Spaces; IndentationCount: Integer = 2): String; static;

    // Minify methods
    class function MinifyDelphi(delphi: String; RemoveComments: Boolean = True): String; static;
    class function MinifyHTML(html: String): String; static;
    class function MinifyCSS(css: String): String; static;
    class function MinifySQL(sql: String): String; static;
    class function MinifyJavaScript(js: String): String; static;
    class function MinifyXML(xml: String): String; static;
    class function MinifyPHP(php: String): String; static;
    class function MinifyJson(json: String): String; static;
  end;

implementation

class function TCodeFormatter.FormatDelphi(delphi: String; IndentationType: TIndentationType; IndentationCount: Integer): String;
var
  SL: TStringList;
  Line: string;
  IndentString: string;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := delphi;
    IndentString := '';
    if IndentationType = TIndentationType.Spaces then
      IndentString := StringOfChar(' ', IndentationCount)
    else if IndentationType = TIndentationType.Tabs then
      IndentString := StringOfChar(#9, IndentationCount);

    for I := 0 to SL.Count - 1 do
      SL[I] := IndentString + SL[I]; // Add indentation to each line

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.FormatHTML(html: String; IndentationType: TIndentationType; IndentationCount: Integer): String;
var
  SL: TStringList;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := html;
    for I := 0 to SL.Count - 1 do
      SL[I] := StringOfChar(' ', IndentationCount) + SL[I]; // Add spaces for indentation

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.FormatCSS(css: String; IndentationType: TIndentationType; IndentationCount: Integer): String;
var
  SL: TStringList;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := css;
    for I := 0 to SL.Count - 1 do
      SL[I] := StringOfChar(' ', IndentationCount) + SL[I]; // Add spaces for indentation

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.FormatSQL(sql: String; IndentationType: TIndentationType; IndentationCount: Integer): String;
var
  SL: TStringList;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := sql;
    if IndentationType = TIndentationType.Spaces then
    begin
      for I := 0 to SL.Count - 1 do
        SL[I] := StringOfChar(' ', IndentationCount) + SL[I]; // Add spaces for indentation
    end
    else if IndentationType = TIndentationType.Tabs then
    begin
      for I := 0 to SL.Count - 1 do
        SL[I] := StringOfChar(#9, IndentationCount) + SL[I]; // Add tabs for indentation
    end;

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.FormatJavaScript(js: String; IndentationType: TIndentationType; IndentationCount: Integer): String;
var
  SL: TStringList;
  Line: string;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := js;
    for I := 0 to SL.Count - 1 do
      SL[I] := StringOfChar(' ', IndentationCount) + SL[I]; // Add spaces for indentation

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.FormatXML(xml: String; IndentationType: TIndentationType; IndentationCount: Integer): String;
var
  XMLDoc: TXMLDocument;
begin
  XMLDoc := TXMLDocument.Create(nil);
  try
    XMLDoc.LoadFromXML(xml);
    Result := XMLDoc.XML.Text;
  finally
    XMLDoc.Free;
  end;
end;

class function TCodeFormatter.FormatPHP(php: String; IndentationType: TIndentationType; IndentationCount: Integer): String;
var
  SL: TStringList;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := php;
    for I := 0 to SL.Count - 1 do
      SL[I] := StringOfChar(' ', IndentationCount) + SL[I]; // Add spaces for indentation

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.FormatJson(json: String; IndentationType: TIndentationType; IndentationCount: Integer): String;
var
  JsonObject: TJSONObject;
begin
  JsonObject := TJSONObject.ParseJSONValue(json) as TJSONObject;
  try
    Result := JsonObject.Format(IndentationCount);
  finally
    JsonObject.Free;
  end;
end;

class function TCodeFormatter.MinifyDelphi(delphi: String; RemoveComments: Boolean): String;
begin
  if RemoveComments then
  begin
    // Remove single-line comments
    Result := StringReplace(delphi, '//', '', [rfReplaceAll]);
    // Remove multi-line comments
    Result := StringReplace(Result, '/*', '', [rfReplaceAll]);
    Result := StringReplace(Result, '*/', '', [rfReplaceAll]);
  end
  else
    Result := delphi;
end;

class function TCodeFormatter.MinifyHTML(html: String): String;
begin
  Result := StringReplace(html, sLineBreak, '', [rfReplaceAll]); // Remove line breaks
  Result := StringReplace(Result, ' ', '', [rfReplaceAll]); // Remove spaces
end;

class function TCodeFormatter.MinifyCSS(css: String): String;
var
  SL: TStringList;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := css;
    for I := 0 to SL.Count - 1 do
      SL[I] := Trim(SL[I]); // Trim leading and trailing spaces

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.MinifySQL(sql: String): String;
var
  SL: TStringList;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := sql;
    for I := 0 to SL.Count - 1 do
      SL[I] := Trim(SL[I]); // Trim leading and trailing spaces

    Result := SL.Text;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.MinifyJavaScript(js: String): String;
var
  SL: TStringList;
  Line: string;
  I: Integer;
begin
  SL := TStringList.Create;
  try
    SL.Text := js;
    for I := 0 to SL.Count - 1 do
    begin
      Line := Trim(SL[I]);
      if Line <> '' then
        Result := Result + Line + ' '; // Combine lines and add space between them
    end;
  finally
    SL.Free;
  end;
end;

class function TCodeFormatter.MinifyXML(xml: String): String;
var
  XMLDoc: TXMLDocument;
begin
  XMLDoc := TXMLDocument.Create(nil);
  try
    XMLDoc.LoadFromXML(xml);
    Result := XMLDoc.XML.Text;
  finally
    XMLDoc.Free;
  end;
end;

class function TCodeFormatter.MinifyPHP(php: String): String;
begin
  Result := StringReplace(php, sLineBreak, '', [rfReplaceAll]); // Remove line breaks
  Result := StringReplace(Result, ' ', '', [rfReplaceAll]); // Remove spaces
end;

class function TCodeFormatter.MinifyJson(json: String): String;
begin
  // Placeholder implementation - Return input string
  Result := json;
end;

end.

