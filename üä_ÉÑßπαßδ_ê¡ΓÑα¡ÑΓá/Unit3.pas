unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
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
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Form1.ADOTable1.Edit;
Form1.ADOTable1.Last;
Form1.ADOTable1.Insert;
Form1.ADOTable1.FieldByname('kategorija').AsString:=Form3.Edit1.Text;
Close;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
Form3.Edit1.Text:='';
end;

end.
