unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.FormActivate(Sender: TObject);
begin
Form4.Edit1.Text:=Form1.ADOTable1.FieldByname('kategorija').AsString;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Form1.ADOTable1.Edit;
Form1.ADOTable1.FieldByname('kategorija').AsString:=Form4.Edit1.Text;
Form1.ADOTable1.Post;
Close;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
