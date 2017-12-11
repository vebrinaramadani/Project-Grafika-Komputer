unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, Spin, StdCtrls, ColorBox;

type

  { TForm1 }


  TForm1 = class(TForm)
    Button1: TButton;
    trapesium: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    bentuk: TBitBtn;
    bintangenam: TBitBtn;
    segitiga: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    open: TBitBtn;
    save: TBitBtn;
    ColorBox2: TColorBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    OpenDialog1: TOpenDialog;
    panahkiri: TBitBtn;
    panahatas: TBitBtn;
    panahbawah: TBitBtn;
    panahkanan: TBitBtn;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    SaveDialog1: TSaveDialog;
    wajik: TBitBtn;
    segilima: TBitBtn;
    segienam: TBitBtn;
    bintanglima: TBitBtn;
    segitigasiku: TBitBtn;
    persegipanjang: TBitBtn;
    tutup: TBitBtn;
    persegi: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Button2: TButton;
    Label5: TLabel;
    Label6: TLabel;
    ColorBox1: TColorBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioGroup1: TRadioGroup;
    SpinEdit1: TSpinEdit;
    SpinEdit3: TSpinEdit;
    procedure bintangenamClick(Sender: TObject);
    procedure bintanglimaClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure bentukClick(Sender: TObject);
    procedure segitigaClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure openClick(Sender: TObject);
    procedure saveClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label3Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure panahatasClick(Sender: TObject);
    procedure panahbawahClick(Sender: TObject);
    procedure panahkananClick(Sender: TObject);
    procedure panahkiriClick(Sender: TObject);
    procedure RadioButton8Change(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure segienamClick(Sender: TObject);
    procedure segilimaClick(Sender: TObject);
    procedure wajikClick(Sender: TObject);


    procedure BitBtn19Click(Sender: TObject);
    procedure trapesiumClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure persegipanjangClick(Sender: TObject);
    procedure segitigasikuClick(Sender: TObject);
    procedure tutupClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure kubusClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BoundaryFill(x,y,fill,boundary:integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure limassegiempatClick(Sender: TObject);
    procedure persegiClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure resetClick(Sender: TObject);
    procedure TitikTengah;
  private
    { private declarations }
  public
    { public declarations }
  end;
  type
    Elemen=record
    x, y: Integer;
    end;

var
  Form1: TForm1;
  Objek: array[1..100] of Elemen;
  koordinatx, koordinaty, i,x,y:Integer;
  obj,xx,yy:String;
  tergambar: Boolean;
  X1,Y1,X2,Y2: Integer;
  Drawing : boolean;
  skala: Double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormActivate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
end;

procedure TForm1.FormClick(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.TitikTengah;
begin
  if obj='trap' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x)div 4));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y)div 4));
  end else
  if obj='segitiga' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x)div 3));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y)div 3));
  end;
  if obj='kubus' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x+Objek[7].x+Objek[8].x)div 8));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y+Objek[7].y+Objek[8].y)div 8));
  end else
  if obj='limas' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x)div 5));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y)div 5));
  end else
  if obj='persegi' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x)div 4));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y)div 4));
  end else
  if obj='persegipanjang' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x)div 4));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y)div 4));
  end else
  if obj='segitigasiku' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x)div 3));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y)div 3));
  end else
  if obj='bentuk' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x)div 6));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y)div 6));
  end else
  if obj='wajik' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x)div 4));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y)div 4));
  end else
  if obj='segilima' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x)div 5));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y)div 5));
  end else
    if obj='segienam' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x)div 6));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y)div 6));
  end else
  if obj='bintanglima' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x+Objek[7].x+Objek[8].x+Objek[9].x+Objek[10].x)div 10));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y+Objek[7].y+Objek[8].y+Objek[9].y+Objek[10].y)div 10));
  end else
  if obj='bintangenam' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x+Objek[7].x+Objek[8].x+Objek[9].x+Objek[10].x+Objek[11].x+Objek[12].x)div 12));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y+Objek[7].y+Objek[8].y+Objek[9].y+Objek[10].y+Objek[11].y+Objek[12].y)div 12));
  end else
  if obj='panahkanan' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x+Objek[7].x)div 7));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y+Objek[7].y)div 7));
  end else
  if obj='panahkiri' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x+Objek[7].x)div 7));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y+Objek[7].y)div 7));
  end else
  if obj='panahatas' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x+Objek[7].x)div 7));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y+Objek[7].y)div 7));
  end else
  if obj='panahbawah' then
  begin
    xx:=FloattoStr(round((Objek[1].x+Objek[2].x+Objek[3].x+Objek[4].x+Objek[5].x+Objek[6].x+Objek[7].x)div 7));
    yy:=FloattoStr(round((Objek[1].y+Objek[2].y+Objek[3].y+Objek[4].y+Objek[5].y+Objek[6].y+Objek[7].y)div 7));
  end else
  koordinatx:=StrtoInt(xx);
  koordinaty:=StrtoInt(yy);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
    if obj='kubus' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[4].x,Objek[4].y);
    for i:=1 to 4 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
        Image1.Canvas.MoveTo(Objek[8].x,Objek[8].y);
    for i:=5 to 8 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
     if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
    Image1.Canvas.MoveTo(Objek[1].x,Objek[1].y);
    Image1.Canvas.LineTo(Objek[5].x,Objek[5].y);
    Image1.Canvas.MoveTo(Objek[2].x,Objek[2].y);
    Image1.Canvas.LineTo(Objek[6].x,Objek[6].y);
    Image1.Canvas.MoveTo(Objek[3].x,Objek[3].y);
    Image1.Canvas.LineTo(Objek[7].x,Objek[7].y);
    Image1.Canvas.MoveTo(Objek[4].x,Objek[4].y);
    Image1.Canvas.LineTo(Objek[8].x,Objek[8].y);
  end else
  if obj='limas' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[5].x,Objek[5].y);
    for i:=1 to 5 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    Image1.Canvas.MoveTo(Objek[5].x,Objek[5].y);
    Image1.Canvas.LineTo(Objek[2].x,Objek[2].y);
    Image1.Canvas.MoveTo(Objek[5].x,Objek[5].y);
    Image1.Canvas.LineTo(Objek[3].x,Objek[3].y);
    Image1.Canvas.MoveTo(Objek[5].x,Objek[5].y);
    Image1.Canvas.LineTo(Objek[4].x,Objek[4].y);
    Image1.Canvas.MoveTo(Objek[1].x,Objek[1].y);
    Image1.Canvas.LineTo(Objek[4].x,Objek[4].y);
   end else
  if obj='trap' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[4].x,Objek[4].y);
    for i:=1 to 4 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
  end else
   if obj='segitiga' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[3].x,Objek[3].y);
    for i:=1 to 3 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='persegi' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[4].x,Objek[4].y);
    for i:=1 to 4 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='persegipanjang' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[4].x,Objek[4].y);
    for i:=1 to 4 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='segitigasiku' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[3].x,Objek[3].y);
    for i:=1 to 3 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='bentuk' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[6].x,Objek[6].y);
    for i:=1 to 6 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='wajik' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[4].x,Objek[4].y);
    for i:=1 to 4 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='segilima' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[5].x,Objek[5].y);
    for i:=1 to 5 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='segienam' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[6].x,Objek[6].y);
    for i:=1 to 6 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='bintanglima' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[10].x,Objek[10].y);
    for i:=1 to 10 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
        end else
   if obj='bintangenam' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[12].x,Objek[12].y);
    for i:=1 to 12 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='panahkanan' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[7].x,Objek[7].y);
    for i:=1 to 7 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
        end else
   if obj='panahkiri' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[7].x,Objek[7].y);
    for i:=1 to 7 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='panahatas' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[7].x,Objek[7].y);
    for i:=1 to 7 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
    end else
   if obj='panahbawah' then
  begin
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.MoveTo(Objek[7].x,Objek[7].y);
    for i:=1 to 7 do
      begin
        Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
      end;
  end;
end;

procedure TForm1.trapesiumClick(Sender: TObject);
begin
  obj:='trap';
  Objek[1].x:=150;               Objek[1].y:=200;
  Objek[2].x:=250;               Objek[2].y:=200;
  Objek[3].x:=300;               Objek[3].y:=300;
  Objek[4].x:=100;               Objek[4].y:=300;

  FormShow(Sender);
end;

procedure TForm1.BitBtn20Click(Sender: TObject);
var
    TempObjek: array[1..10] of elemen;
    Sdt: Real;
begin
  TitikTengah;
  for i:=1 to 6 do
      begin
         Objek[i].x:=Objek[i].x-koordinatx;
         Objek[i].y:=Objek[i].y-koordinaty;
         Sdt:=SpinEdit3.Value*pi/180;
         TempObjek[i].x:=round(Objek[i].x*cos(-Sdt)-Objek[i].y*sin(-Sdt));
         TempObjek[i].y:=round(Objek[i].x*sin(-Sdt)+Objek[i].y*cos(-Sdt));
         Objek[i]:=TempObjek[i];
         Objek[i].x:=Objek[i].x+koordinatx;
         Objek[i].y:=Objek[i].y+koordinaty;
      end;
  FormShow(Sender);
  TitikTengah;
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin  TitikTengah;
  for i:=1 to 35 do
      begin
        Objek[i].x:=Objek[i].x+SpinEdit1.Value;
        Objek[i].y:=Objek[i].y+SpinEdit1.Value;
      end;
  FormShow(Sender);

  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;

procedure TForm1.bintanglimaClick(Sender: TObject);
begin
  Obj:='bintanglima';
  Objek[1].x:=200; Objek[1].y:=155;
  Objek[2].x:=188; Objek[2].y:=188;
  Objek[3].x:=148; Objek[3].y:=190;
  Objek[4].x:=180; Objek[4].y:=210;
  Objek[5].x:=170; Objek[5].y:=250;
  Objek[6].x:=200; Objek[6].y:=225;
  Objek[7].x:=230; Objek[7].y:=250;
  Objek[8].x:=220; Objek[8].y:=210;
  Objek[9].x:=250; Objek[9].y:=190;
  Objek[10].x:=210; Objek[10].y:=188;
  FormShow(Sender);
end;

procedure TForm1.bintangenamClick(Sender: TObject);
begin
  Obj:='bintangenam';
  Objek[1].x:=200; Objek[1].y:=150;
  Objek[2].x:=180; Objek[2].y:=175;
  Objek[3].x:=145; Objek[3].y:=175;
  Objek[4].x:=165; Objek[4].y:=205;
  Objek[5].x:=145; Objek[5].y:=235;
  Objek[6].x:=180; Objek[6].y:=235;
  Objek[7].x:=200; Objek[7].y:=260;

  Objek[8].x:=220; Objek[8].y:=235;
  Objek[9].x:=255; Objek[9].y:=235;
  Objek[10].x:=240; Objek[10].y:=205;
  Objek[11].x:=260; Objek[11].y:=175;
  Objek[12].x:=220; Objek[12].y:=175;
  FormShow(Sender);
end;

procedure TForm1.bentukClick(Sender: TObject);
begin
  Obj:='bentuk';
  Objek[1].x:=200; Objek[1].y:=150;
  Objek[2].x:=160; Objek[2].y:=240;
  Objek[3].x:=270; Objek[3].y:=240;
  Objek[4].x:=270; Objek[4].y:=205;
  Objek[5].x:=220; Objek[5].y:=205;
  Objek[6].x:=245; Objek[6].y:=150;
  FormShow(Sender);
end;

procedure TForm1.segitigaClick(Sender: TObject);
begin
  obj:='segitiga';
  Objek[1].x:=150;               Objek[1].y:=325;
  Objek[2].x:=350;               Objek[2].y:=325;
  Objek[3].x:=250;               Objek[3].y:=200;
  FormShow(Sender);
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
  obj:='limas';
  Objek[1].x:=200;               Objek[1].y:=200;
  Objek[2].x:=200;               Objek[2].y:=400;
  Objek[3].x:=400;               Objek[3].y:=400;
  Objek[4].x:=400;               Objek[4].y:=200;
  Objek[5].x:=300;               Objek[5].y:=50;
  FormShow(Sender);
end;

procedure TForm1.openClick(Sender: TObject);
var
   bmpgraphic : TBitmap;
begin
  bmpgraphic := TBitmap.Create;
  bmpgraphic.SetSize(Image1.Width,Image1.Height);

  OpenDialog1.Execute; // buka dialog save

  if (OpenDialog1.Files.Count > 0) then
  begin // kalau ada file yang mau dibuka
      if (FileExistsUTF8(OpenDialog1.FileName)) then begin
      begin
        bmpgraphic.LoadFromFile(OpenDialog1.FileName);
        Image1.Canvas.Draw(0,0,bmpgraphic);
      end;
    end;
  end;
end;

procedure TForm1.saveClick(Sender: TObject);
var
  bmpgraphic : TBitmap;
begin
    bmpgraphic := TBitmap.Create;
  bmpgraphic.SetSize(Image1.Width,Image1.Height);

  bmpgraphic.Canvas.Draw(0,0,Image1.Picture.Graphic);

  SaveDialog1.Execute; // buka dialog save

  if SaveDialog1.Files.Count > 0 then
  begin // kalau ada yang mau disimpan

  if RightStr(SaveDialog1.FileName, 4) <> '.bmp' then
    begin
      SaveDialog1.FileName:= SaveDialog1.FileName + '.bmp';
    end;
    bmpgraphic.SaveToFile(SaveDialog1.FileName);
  end;
end;

procedure TForm1.btnOpenClick(Sender: TObject);
begin
end;

procedure TForm1.btnSaveClick(Sender: TObject);
begin
end;

procedure TForm1.ColorBox2Change(Sender: TObject);
begin

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
  begin
  Image1.Canvas.Pen.Style:=pssolid;
  end else
  if ComboBox1.ItemIndex=1 then
  begin
    Image1.Canvas.Pen.Style:=psdot;
  end else
  if ComboBox1.ItemIndex=2 then
  begin
    Image1.Canvas.Pen.Style:=psdash;
  end else
  if ComboBox1.ItemIndex=3 then
  begin
   Image1.Canvas.Pen.Style:=psdashdot;
  end ;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  if ComboBox2.ItemIndex=0 then
  begin
  Image1.Canvas.Pen.Width:=StrToInt(ComboBox2.Text);
  end else
  if ComboBox2.ItemIndex=1 then
  begin
  Image1.Canvas.Pen.Width:=StrToInt(ComboBox2.Text);
  end else
  if ComboBox2.ItemIndex=2 then
  begin
  Image1.Canvas.Pen.Width:=StrToInt(ComboBox2.Text);
  end else
  if ComboBox2.ItemIndex=3 then
  begin
  Image1.Canvas.Pen.Width:=StrToInt(ComboBox2.Text);
  end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Drawing := false;
  if  RadioGroup3.ItemIndex=1  then
  begin
      Image1.Canvas.MoveTo(X1,Y1);
      Image1.Canvas.LineTo(X,Y);
  end;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.Label7Click(Sender: TObject);
begin

end;

procedure TForm1.panahatasClick(Sender: TObject);
begin
  Obj:='panahatas';
  Objek[1].x:=200; Objek[1].y:=100;
  Objek[2].x:=140; Objek[2].y:=160;
  Objek[3].x:=160; Objek[3].y:=160;
  Objek[4].x:=160; Objek[4].y:=240;
  Objek[5].x:=240; Objek[5].y:=240;
  Objek[6].x:=240; Objek[6].y:=160;
  Objek[7].x:=260; Objek[7].y:=160;
  FormShow(Sender);
end;

procedure TForm1.panahbawahClick(Sender: TObject);
begin
  Obj:='panahbawah';
  Objek[1].x:=160; Objek[1].y:=160;
  Objek[2].x:=160; Objek[2].y:=240;
  Objek[3].x:=140; Objek[3].y:=240;
  Objek[4].x:=200; Objek[4].y:=300;
  Objek[5].x:=260; Objek[5].y:=240;
  Objek[6].x:=240; Objek[6].y:=240;
  Objek[7].x:=240; Objek[7].y:=160;
  FormShow(Sender);
end;

procedure TForm1.panahkananClick(Sender: TObject);
begin
  Obj:='panahkanan';
  Objek[1].x:=130; Objek[1].y:=160;
  Objek[2].x:=130; Objek[2].y:=240;
  Objek[3].x:=230; Objek[3].y:=240;
  Objek[4].x:=230; Objek[4].y:=260;
  Objek[5].x:=290; Objek[5].y:=200;
  Objek[6].x:=230; Objek[6].y:=140;
  Objek[7].x:=230; Objek[7].y:=160;
  FormShow(Sender);
end;

procedure TForm1.panahkiriClick(Sender: TObject);
begin
  Obj:='panahkiri';
  Objek[1].x:=160; Objek[1].y:=140;
  Objek[2].x:=100; Objek[2].y:=200;
  Objek[3].x:=160; Objek[3].y:=260;
  Objek[4].x:=160; Objek[4].y:=240;
  Objek[5].x:=260; Objek[5].y:=240;
  Objek[6].x:=260; Objek[6].y:=160;
  Objek[7].x:=160; Objek[7].y:=160;
  FormShow(Sender);
end;

procedure TForm1.RadioButton8Change(Sender: TObject);
begin

end;

procedure TForm1.RadioGroup3Click(Sender: TObject);
begin

end;

procedure TForm1.segienamClick(Sender: TObject);
begin
  Obj:='segienam';
  Objek[1].x:=210; Objek[1].y:=140;
  Objek[2].x:=160; Objek[2].y:=170;
  Objek[3].x:=160; Objek[3].y:=210;
  Objek[4].x:=210; Objek[4].y:=240;
  Objek[5].x:=260; Objek[5].y:=210;
  Objek[6].x:=260; Objek[6].y:=170;
  FormShow(Sender);
end;

procedure TForm1.segilimaClick(Sender: TObject);
begin

  Obj:='segilima';
  Objek[1].x:=210; Objek[1].y:=140;
  Objek[2].x:=160; Objek[2].y:=190;
  Objek[3].x:=180; Objek[3].y:=240;
  Objek[4].x:=240; Objek[4].y:=240;
  Objek[5].x:=260; Objek[5].y:=190;
  FormShow(Sender);
end;

procedure TForm1.wajikClick(Sender: TObject);
begin
  Obj:='wajik';
  Objek[1].x:=210; Objek[1].y:=140;
  Objek[2].x:=160; Objek[2].y:=190;
  Objek[3].x:=210; Objek[3].y:=240;
  Objek[4].x:=260; Objek[4].y:=190;
  FormShow(Sender);
end;

procedure TForm1.BitBtn19Click(Sender: TObject);
var
    TempObjek: array[1..10] of elemen;
    Sdt: Real;
begin
  TitikTengah;
  for i:=1 to 6 do
      begin
         Objek[i].x:=Objek[i].x-koordinatx;
         Objek[i].y:=Objek[i].y-koordinaty;
         Sdt:=SpinEdit3.Value*pi/180;
         TempObjek[i].x:=round(Objek[i].x*cos(Sdt)-Objek[i].y*sin(Sdt));
         TempObjek[i].y:=round(Objek[i].x*sin(Sdt)+Objek[i].y*cos(Sdt));
         Objek[i]:=TempObjek[i];
         Objek[i].x:=Objek[i].x+koordinatx;
         Objek[i].y:=Objek[i].y+koordinaty;
      end;
  FormShow(Sender);
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  obj:='kubus';
  Objek[1].x:=200;               Objek[1].y:=200;
  Objek[2].x:=200;               Objek[2].y:=400;
  Objek[3].x:=400;               Objek[3].y:=400;
  Objek[4].x:=400;               Objek[4].y:=200;
  Objek[5].x:=250;               Objek[5].y:=170;
  Objek[6].x:=250;               Objek[6].y:=370;
  Objek[7].x:=450;               Objek[7].y:=370;
  Objek[8].x:=450;               Objek[8].y:=170;
  FormShow(Sender);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  TitikTengah;
  for i:=1 to 99 do
      begin
        Objek[i].x:=Objek[i].x-SpinEdit1.Value;
        Objek[i].y:=Objek[i].y-SpinEdit1.Value;
      end;
  FormShow(Sender);
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;
procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  TitikTengah;
  for i:=1 to 99 do
      begin
        Objek[i].y:=Objek[i].y-SpinEdit1.Value;
      end;
  FormShow(Sender);
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  TitikTengah;
  for i:=1 to 99 do
      begin
        Objek[i].x:=Objek[i].x-SpinEdit1.Value;
      end;
  FormShow(Sender);
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
  end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  TitikTengah;
  for i:=1 to 99 do
      begin
        Objek[i].x:=Objek[i].x+SpinEdit1.Value;
      end;
  FormShow(Sender);
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  TitikTengah;
  for i:=1 to 99 do
      begin
        Objek[i].y:=Objek[i].y+SpinEdit1.Value;
      end;
  FormShow(Sender);
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  TitikTengah;
  for i:=1 to 99 do
      begin
        Objek[i].x:=Objek[i].x-SpinEdit1.Value;
        Objek[i].y:=Objek[i].y+SpinEdit1.Value;
      end;
  FormShow(Sender);
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  TitikTengah;
  for i:=1 to 99 do
      begin
        Objek[i].x:=Objek[i].x+SpinEdit1.Value;
        Objek[i].y:=Objek[i].y-SpinEdit1.Value;
      end;
  FormShow(Sender);
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0, Image1.Width, Image1.Height);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if RadioButton1.Checked then skala:=2.50;
  if RadioButton2.Checked then skala:=2.00;
  if RadioButton3.Checked then skala:=1.50;
  if RadioButton4.Checked then skala:=1.00;
  if RadioButton5.Checked then skala:=0.75;
  if RadioButton6.Checked then skala:=0.50;
  if RadioButton7.Checked then skala:=0.25;

    TitikTengah;
    for i:=1 to 6 do begin
      Objek[i].x:=Objek[i].x-koordinatx;
      Objek[i].y:=Objek[i].y-koordinaty;

      Objek[i].x:=round(Objek[i].x*skala);
      Objek[i].y:=round(Objek[i].y*skala);

      Objek[i].x:=Objek[i].x+koordinatx;
      Objek[i].y:=Objek[i].y+koordinaty;
    end;
    FormShow(Sender);
    TitikTengah;
  if RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(koordinatx,koordinaty,ColorBox1.Selected, Image1.Canvas.Pen.Color);
  end;
  end;

procedure TForm1.persegipanjangClick(Sender: TObject);
begin
  Obj:='persegipanjang';
  Objek[1].x:=140; Objek[1].y:=140;
  Objek[2].x:=140; Objek[2].y:=240;
  Objek[3].x:=340; Objek[3].y:=240;
  Objek[4].x:=340; Objek[4].y:=140;
  FormShow(Sender);
end;

procedure TForm1.segitigasikuClick(Sender: TObject);
begin
  Obj:='segitigasiku';
  Objek[1].x:=160; Objek[1].y:=140;
  Objek[2].x:=160; Objek[2].y:=240;
  Objek[3].x:=260; Objek[3].y:=240;
  FormShow(Sender);
end;

procedure TForm1.tutupClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.KubusClick(Sender: TObject);
begin
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.BoundaryFill(x,y,fill,boundary:integer);
var
  current:Integer;
  begin
    current:=Image1.Canvas.Pixels[x,y];
    if(current<>boundary) and (current<>fill) then
    begin
      Image1.Canvas.Pixels[x,y]:=fill;
      BoundaryFill(x+1,y,fill,boundary);
      BoundaryFill(x-1,y,fill,boundary);
      BoundaryFill(x,y+1,fill,boundary);
      BoundaryFill(x,y-1,fill,boundary);
    end;
  end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Drawing := true;
  X1:=X;
  Y1:=Y;
  if  RadioGroup1.ItemIndex=0 then
  begin
  BoundaryFill(x,y,ColorBox1.Selected,Image1.Canvas.Pen.Color);
  end;
  if  RadioGroup1.ItemIndex=1 then
  begin
  end;
  if  RadioGroup3.ItemIndex=3 then
  begin
  end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image1.Canvas.Pen.Color:=ColorBox2.Selected;
    if Drawing = true then
     begin
     if  RadioGroup3.ItemIndex=0 then
     begin
     Image1.Canvas.Line(X1, Y1, X, Y);
     X1:=X;
     Y1:=Y;
     end;
     if  RadioGroup3.ItemIndex=1 then
     begin
     Image1.Canvas.Pen.Mode := pmNotXor;
     Image1.Canvas.MoveTo(X1,Y1);
     Image1.Canvas.LineTo(X2,Y2);
     Image1.Canvas.MoveTo(X1,Y1);
     Image1.Canvas.LineTo(X,Y);
     Image1.Canvas.Pen.Mode := pmCopy;
     end;
     if  RadioGroup3.ItemIndex=2 then
     begin
     Image1.Canvas.Pen.Color:=clwhite;
     Image1.Canvas.Line(X1, Y1, X, Y);
     X1:=X;
     Y1:=Y;
     end;
   end;
   X2:=X;
   Y2:=Y;
  Edit1.Text:=IntToStr(X);
  Edit2.Text:=IntToStr(Y);
end;

procedure TForm1.LimasSegiempatClick(Sender: TObject);
begin
end;

procedure TForm1.persegiClick(Sender: TObject);
begin
  Obj:='persegi';
  Objek[1].x:=160; Objek[1].y:=140;
  Objek[2].x:=160; Objek[2].y:=240;
  Objek[3].x:=260; Objek[3].y:=240;
  Objek[4].x:=260; Objek[4].y:=140;
  FormShow(Sender);
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

end;

procedure TForm1.resetClick(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
end;

end.
