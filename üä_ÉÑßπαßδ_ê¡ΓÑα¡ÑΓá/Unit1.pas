unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Menus, ToolWin, ImgList,
  GridsEh, DBGridEh, DBCtrls, DB, ADODB,ShellAPI, Mask, jpeg;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    ToolBar1: TToolBar;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Panel5: TPanel;
    DBEdit1: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    N15: TMenuItem;
    N16: TMenuItem;
    N11: TMenuItem;
    N17: TMenuItem;
    N4: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    ToolButton7: TToolButton;
    N5: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N18: TMenuItem;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  estyle:integer;
  //зміна пошукового сервера
  poisk:string;
implementation

uses Start, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}
//Функція запуска
function ExecuteFile(const FileName,Params,DefaultDir:string;
ShowCmd:Integer):THandle;
var
zFileName,zParams,zDir:array [0..79 ] of Char;
begin
Result :=ShellExecute(Application.MainForm.Handle,nil,
StrPCopy(zFileName,FileName),StrpCopy(zParams,Params),
StrPCopy(zDir,DefaultDir),ShowCmd);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
With Form2.ProgressBar1 do
Begin
    Position:=Position+1;
    if Position=Max Then Form2.Label1.Caption:='Завантаження завершено';
    if Position=Max then begin Form2.SpeedButton1.Visible:=True;
    end;
end;

end;

procedure TForm1.FormCreate(Sender: TObject);
var FormRgn: hRgn;
begin
Form2.Showmodal;
//Создаём форму
estyle:=getwindowlong(application.Handle,gwl_exstyle);
setwindowlong(application.Handle,gwl_exstyle,estyle or ws_ex_toolwindow);
ScreenSnap:=TRUE;
SnapBuffer:=60;
Form1.Brush.Style := bsSolid;
GetWindowRgn(Form1.Handle, FormRgn);
DeleteObject(FormRgn);
//Form1.Height := 50;
//Form1.Width := 346;
SetWindowRgn(Form1.Handle, FormRgn, TRUE);
poisk:='http://www.google.ru/search?hl=ru&q=';
end;

procedure TForm1.N11Click(Sender: TObject);
begin
Form9.ShowModal;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var s,sear:string;c,i:integer;mass:array[1..30] of string;
nazva:string;
nomer:integer;
begin
nazva:=ADOTable2.FieldByname('nazva_site').AsString;
if nazva='www.google.com.ua'   then nomer:=1;
if nazva='www.yandex.ru'   then nomer:=2;
if nazva='www.msn.com' then nomer:=3;
if nazva='www.yahoo.com'   then nomer:=4;
if nazva='www.rambler.ru'   then nomer:=5;
if nazva='www.aport.ru'   then nomer:=6;
case nomer of
1:poisk:='http://www.google.com.ua/search?hl=ru&q=';
2:poisk:='http://yandex.ru/yandsearch?stype=www&nl=0&text=';
3:poisk:='http://search.msn.com/results.aspx?q=';
4:poisk:='http://search.yahoo.com/bin/query?p=';
5:poisk:='http://search.rambler.ru/cgi-bin/rambler_search?english=0&and=1&words=';
6:poisk:='http://sm.aport.ru/scripts/template.dll?r=';
//else Edit1.Text:='Це не пошуковий сервер';
end;
//Присвоюємо фразу яку будемо шукати
s:=edit1.Text;
//Рахуємо скільки символів в рядку
c:=Length(s);
//цикл який шукає пробіли в фразі і замість  пробіла ставить +
for i:=1 to c do
begin
mass[i]:=copy(s,i,1);
if mass[i]=' ' then
mass[i]:='+';
sear:=sear+mass[i];
end;
//Відкриваємо і шукаємо
ExecuteFile(poisk+sear,'','',SW_SHOW);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var name:string;
begin
name:=ADOTable2.FieldByname('nazva_site').AsString;
//winexec('C:\Program Files\Internet Explorer\IEXPLORE.EXE',1);
ExecuteFile(name,'','',SW_SHOW);
end;

procedure TForm1.N16Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  Application.MessageBox('Автор: Викладач інформатики та інформаційних технологій:'+
  'Кузбит Іван Михайлович. '+ #13+
  'Програма - Міні довідник по Інтернету. '+#13+
  'Копіювання програми та нелегальне використання '+
  'заборонене законодавством України!',
  'My_Inet - Довідник по Інтернету');

end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
Form8.ShowModal;
end;

end.
