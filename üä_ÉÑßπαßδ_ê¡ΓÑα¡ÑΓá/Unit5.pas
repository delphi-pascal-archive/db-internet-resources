unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
Form1.ADOTable1.Delete;
Close;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
Form5.Edit1.Text:=Form1.ADOTable1.FieldByname('kategorija').AsString;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
