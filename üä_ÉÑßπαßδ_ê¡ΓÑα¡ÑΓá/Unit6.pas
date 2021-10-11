unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
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
  Form6: TForm6;

implementation

uses Start, Unit1, Unit3;

{$R *.dfm}

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Form1.ADOTable2.Edit;
Form1.ADOTable2.Last;
Form1.ADOTable2.Insert;
Form1.ADOTable2.FieldByname('nazva_site').AsString:=Form6.Edit1.Text;
Form1.ADOTable2.FieldByname('rezume').AsString:=Form6.Memo1.Text;
Close;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
Form6.Edit1.Text:='';
Memo1.Clear;
end;

end.
