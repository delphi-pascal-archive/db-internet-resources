unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
Form8.Edit1.Text:=Form1.ADOTable2.FieldByname('nazva_site').AsString;
Form8.Memo1.Text:=Form1.ADOTable2.FieldByname('rezume').AsString;
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
Form1.ADOTable2.Delete;
Close;
end;

end.
