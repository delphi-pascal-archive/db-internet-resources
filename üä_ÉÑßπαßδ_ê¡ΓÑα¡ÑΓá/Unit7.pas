unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
Form1.ADOTable2.Edit;
Form1.ADOTable2.FieldByname('nazva_site').AsString:=Form7.Edit1.Text;
Form1.ADOTable2.FieldByname('rezume').AsString:=Form7.Memo1.Text;
Form1.ADOTable2.Post;
Close;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
Form7.Edit1.Text:=Form1.ADOTable2.FieldByname('nazva_site').AsString;
Form7.Memo1.Text:=Form1.ADOTable2.FieldByname('rezume').AsString;
end;

end.
