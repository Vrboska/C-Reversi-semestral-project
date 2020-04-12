//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <math.h>
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
 int Plocha[8][8];  //definujem pole policok
int NaTahu;       //premenna nam urcuje kto je na tahu: 1-cierny
                    //                                   -1-biely


void Kresli()      //definujem funkciu kt. vzdy vykresli stav pola Plocha

                { int x,y;
                 Form1->Image1->Canvas->Pen->Color=clBlack;

                for (y=0;y<8;y++){
                        for (x=0;x<8;x++){ Form1->Image1->Canvas->Brush->Color=clGreen; Form1->Image1->Canvas->Rectangle(x*50,y*50,x*50+50,y*50+50);
                                if (Plocha[y][x]==1){
                                                        Form1->Image1->Canvas->Brush->Color=clBlack;
                                                        Form1->Image1->Canvas->Ellipse(x*50+5,y*50+5,x*50+50-5,y*50+50-5);}

                                if (Plocha[y][x]==-1){Form1->Image1->Canvas->Pen->Color=clWhite;Form1->Image1->Canvas->Brush->Color=clWhite;
                                                        Form1->Image1->Canvas->Ellipse(x*50+5,y*50+5,x*50+50-5,y*50+50-5);
                                                        Form1->Image1->Canvas->Pen->Color=clBlack;}

                        }


                        }
                        }

int SkoreCierny()       //definujem funkciu kt. vrati pocet ciernych gulocok na ploche
        {int a=0,x,y;
         for (y=0;y<8;y++){
                        for (x=0;x<8;x++)if (Plocha[y][x]==1)a=a+1; }
         return a;
        }

int SkoreBiely()        //to iste pre bieleho

                { int a=0,x,y;
         for (y=0;y<8;y++){
                        for (x=0;x<8;x++)if (Plocha[y][x]==-1)a=a+1; }
         return a;

                }

void PisKtoJeNaTahu()   //funkcia vypise  do formulara farbu hraca kt. je prave na tahu

        { if (NaTahu==1){Form1->Label26->Font->Color=clBlack;Form1->Label26->Caption="Cierny";}
          if (NaTahu==-1) {Form1->Label26->Font->Color=clWhite;Form1->Label26->Caption="Biely";}

          }


//zadefinujem rad pomocnych funkcii


bool CiernyHoriz(int x1,int y,int x2) //pomocna funkcia kt. sa neskor vyuzije; urcuje ci medzi danymi dvoma ciernymi gulockami su len biele(horizontalne)
                {int a;
                if ((x1<0||x1>7)||(x2<0||x2>7)||(y<0||y>7))return false;
                if (x1==x2||x2==x1+1||x2==x1-1)return false;
                if ((Plocha[y][x2]==-1)||(Plocha[y][x2]==0))return false;

                    if (x1<x2) {for(a=x1+1;a<x2;a++)if (Plocha[y][a]==0||Plocha[y][a]==1)return false;}
                    if (x1>x2) {for(a=x2+1;a<x1;a++)if (Plocha[y][a]==0||Plocha[y][a]==1)return false;}
                    return true;
                    }

bool CiernyVertik(int x, int y1, int y2)  //podobne len vertikalne
                        { int a;
                if ((x<0||x>7)||(y2<0||y2>7)||(y1<0||y1>7))return false;
                if (y1==y2||y2==y1+1||y2==y1-1)return false;
                if ((Plocha[y2][x]==-1)||(Plocha[y2][x]==0))return false;

                    if (y1<y2) {for(a=y1+1;a<y2;a++)if (Plocha[a][x]==0||Plocha[a][x]==1)return false;}
                    if (y1>y2) {for(a=y2+1;a<y1;a++)if (Plocha[a][x]==0||Plocha[a][x]==1)return false;}
                    return true;}

bool CiernyDiagonal(int x, int y, int x2,int y2)  //podobne len diagonalne
                       { int a;
                       if ((x<0||x>7)||(y2<0||y2>7)||(y<0||y>7)||(x2<0||x2>7))return false;
                       if ((Plocha[y2][x2]==-1)||(Plocha[y2][x2]==0))return false;
                       if(!((fabs(x-x2)==fabs(y-y2))&&(fabs(x-x2)>=2)))return false;

                       if ((x2>x)&&(y2>y)){for (a=1;a<(x2-x);a++) if(Plocha[y+a][x+a]==0||Plocha[y+a][x+a]==1)return false;}
                       if ((x2<x)&&(y2<y)){for (a=1;a<(x-x2);a++) if(Plocha[y-a][x-a]==0||Plocha[y-a][x-a]==1)return false;}

                       if ((x2>x)&&(y2<y)){for (a=1;a<(x2-x);a++) if(Plocha[y-a][x+a]==0||Plocha[y-a][x+a]==1)return false;}
                       if ((x2<x)&&(y2>y)){for (a=1;a<(x-x2);a++) if(Plocha[y+a][x-a]==0||Plocha[y+a][x-a]==1)return false;}

                       return true; }

//Vsetko spravim aj pre biele gulocky
 bool BielyHoriz(int x1,int y,int x2)
                {int a;
                if ((x1<0||x1>7)||(x2<0||x2>7)||(y<0||y>7))return false;
                if (x1==x2||x2==x1+1||x2==x1-1)return false;
                if ((Plocha[y][x2]==1)||(Plocha[y][x2]==0))return false;

                    if (x1<x2) {for(a=x1+1;a<x2;a++)if (Plocha[y][a]==0||Plocha[y][a]==-1)return false;}
                    if (x1>x2) {for(a=x2+1;a<x1;a++)if (Plocha[y][a]==0||Plocha[y][a]==-1)return false;}
                    return true;
                    }

bool BielyVertik(int x, int y1, int y2)
                        { int a;
                if ((x<0||x>7)||(y2<0||y2>7)||(y1<0||y1>7))return false;
                if (y1==y2||y2==y1+1||y2==y1-1)return false;
                if ((Plocha[y2][x]==1)||(Plocha[y2][x]==0))return false;

                    if (y1<y2) {for(a=y1+1;a<y2;a++)if (Plocha[a][x]==0||Plocha[a][x]==-1)return false;}
                    if (y1>y2) {for(a=y2+1;a<y1;a++)if (Plocha[a][x]==0||Plocha[a][x]==-1)return false;}
                    return true;}

bool BielyDiagonal(int x, int y, int x2,int y2)
                       { int a;
                       if ((x<0||x>7)||(y2<0||y2>7)||(y<0||y>7)||(x2<0||x2>7))return false;
                       if ((Plocha[y2][x2]==1)||(Plocha[y2][x2]==0))return false;
                       if(!((fabs(x-x2)==fabs(y-y2))&&(fabs(x-x2)>=2)))return false;

                       if ((x2>x)&&(y2>y)){for (a=1;a<(x2-x);a++) if(Plocha[y+a][x+a]==0||Plocha[y+a][x+a]==-1)return false;}
                       if ((x2<x)&&(y2<y)){for (a=1;a<(x-x2);a++) if(Plocha[y-a][x-a]==0||Plocha[y-a][x-a]==-1)return false;}

                       if ((x2>x)&&(y2<y)){for (a=1;a<(x2-x);a++) if(Plocha[y-a][x+a]==0||Plocha[y-a][x+a]==-1)return false;}
                       if ((x2<x)&&(y2>y)){for (a=1;a<(x-x2);a++) if(Plocha[y+a][x-a]==0||Plocha[y+a][x-a]==-1)return false;}

                       return true; }

bool MozeKliknutCierny(int x,int y)  //funckia urci ci na dane policko moze kliknut cierny
                {int a;
                if ((x<0||x>7)||(y<0||y>7))return false;
                if (Plocha[y][x]!=0)return false;
                for (a=0;a<8;a++)if (CiernyHoriz(x,y,a))return true;
                for (a=0;a<8;a++)if (CiernyVertik(x,y,a))return true;
                for  (a=0;a<8;a++)if (CiernyDiagonal(x,y,x+a,y+a))return true;
                for  (a=0;a<8;a++)if (CiernyDiagonal(x,y,x-a,y-a))return true;
                for  (a=2;a<8;a++)if (CiernyDiagonal(x,y,x+a,y-a))return true;
                for  (a=2;a<8;a++)if (CiernyDiagonal(x,y,x-a,y+a))return true;
                return false;
                }

bool MozeKliknutBiely(int x,int y)  //funckia urci ci na dane policko moze kliknut biely
                {int a;
                if ((x<0||x>7)||(y<0||y>7))return false;
                if (Plocha[y][x]!=0)return false;
                for (a=0;a<8;a++)if (BielyHoriz(x,y,a))return true;
                for (a=0;a<8;a++)if (BielyVertik(x,y,a))return true;
                for  (a=0;a<8;a++)if (BielyDiagonal(x,y,x+a,y+a))return true;
                for  (a=0;a<8;a++)if (BielyDiagonal(x,y,x-a,y-a))return true;
                for  (a=2;a<8;a++)if (BielyDiagonal(x,y,x+a,y-a))return true;
                for  (a=2;a<8;a++)if (BielyDiagonal(x,y,x-a,y+a))return true;
                return false;
                }

bool MozeKliknutC() //funkcia zistuje ci existuje policko na kt. cierny moze kliknut
 {int x,y;
 for  (y=0;y<8;y++)
                for(x=0;x<8;x++)if(MozeKliknutCierny(x,y))return true;
  return false;}

 bool MozeKliknutB()
 {int x,y;
 for  (y=0;y<8;y++)
                for(x=0;x<8;x++)if(MozeKliknutBiely(x,y))return true;
  return false;}


 void Napoveda()        //nakresli napovedu (policka na kt. sa da kliknut)

        {if (!Form1->CheckBox1->Checked)return;
        else
        {int x,y;
         Form1->Image1->Canvas->Brush->Color=clGreen;
         Form1->Image1->Canvas->Pen->Color=clBlack;

        if (NaTahu==1)   for (y=0;y<8;y++){
                                for (x=0;x<8;x++)if (MozeKliknutCierny(x,y))Form1->Image1->Canvas->Ellipse(x*50+5,y*50+5,x*50+50-5,y*50+50-5);

                                                }
        else   for (y=0;y<8;y++){
                                for (x=0;x<8;x++)if (MozeKliknutBiely(x,y))Form1->Image1->Canvas->Ellipse(x*50+5,y*50+5,x*50+50-5,y*50+50-5);

                                                }

         }
        }




bool JeKoniec() //funkcia zistuje ci je koniec hry

        {int sucet,x,y;
        sucet=SkoreCierny()+SkoreBiely();
        if (sucet==64)return true;
        for  (y=0;y<8;y++)
               { for(x=0;x<8;x++)if((MozeKliknutBiely(x,y)||MozeKliknutCierny(x,y)))return false;
                }

           return true;


        }




void __fastcall TForm1::FormCreate(TObject *Sender) //inicializujem hru
{       int x,y;
        NaTahu=1;
        Image2->Canvas->Brush->Color=clSilver;
        Image2->Canvas->Rectangle(0,0,Image2->Width,Image2->Height);

          for (y=0;y<8;y++){
                        for (x=0;x<8;x++)Plocha[y][x]=0;}

        Plocha[3][3]=-1;
        Plocha[4][4]=-1;
        Plocha[3][4]=1;
        Plocha[4][3]=1;
        Kresli();
        Label23->Caption=2;
        Label24->Caption=2;
        Form1->Label26->Font->Color=clBlack;Form1->Label26->Caption="Cierny";
        Memo1->Text=("Zacala sa nova hra.");

}

int PlochaVrat[8][8];//pomocne pole kt. vyuzijem vo funkcii vrat tah
int NaTahu2;//pomocna premenna k funkcii vrat tah
//---------------------------------------------------------------------------
void __fastcall TForm1::Image1MouseDown(TObject *Sender,       //pozliepam vsetko dokopy
      TMouseButton Button, TShiftState Shift, int X, int Y)
{     if (X<0||X>400||Y<0||Y>400)return;
        X=X/50;
        Y=Y/50 ;
        int a,b,x2,y2;
        if (NaTahu==1&&!MozeKliknutCierny(X,Y)){Memo1->Lines->Add("Na toto policko nie je mozne polozit gulocku!");return;}
        if (NaTahu==-1&&!MozeKliknutBiely(X,Y)){Memo1->Lines->Add("Na toto policko nie je mozne polozit gulocku!");return;}


        NaTahu2=NaTahu;
        for (a=0;a<8;a++){
                        for (b=0;b<8;b++) PlochaVrat[a][b]=Plocha[a][b];}//skopirujem pomocne pole



        int Plocha2[8][8]; //definujem si pomocne pole
        for (a=0;a<8;a++){
                        for (b=0;b<8;b++) Plocha2[a][b]=Plocha[a][b];}//skopirujem druhe pomocne pole


        if (NaTahu==1){                                            //ak na dane policko cierny moze kliknuta je na tahu, tak sa vykresli novy obrazok
                                                 for (a=0;a<8;a++){if (CiernyHoriz(X,Y,a)){

                                                                        if (X<a) for(b=X+1;b<a;b++)Plocha2[Y][b]=1;
                                                                        if (X>a) for(b=a+1;b<X;b++)Plocha2[Y][b]=1;}

                                                                   if (CiernyVertik(X,Y,a)){

                                                                         if (Y<a) for(b=Y+1;b<a;b++)Plocha2[b][X]=1;
                                                                         if (Y>a) for(b=a+1;b<Y;b++)Plocha2[b][X]=1;}

                                                                   if (CiernyDiagonal(X,Y,X+a,Y+a))for(b=1;b<a;b++)Plocha2[Y+b][X+b]=1;
                                                                   if (CiernyDiagonal(X,Y,X-a,Y-a))for(b=1;b<a;b++)Plocha2[Y-b][X-b]=1;
                                                                   if (CiernyDiagonal(X,Y,X+a,Y-a))for(b=1;b<a;b++)Plocha2[Y-b][X+b]=1;
                                                                   if (CiernyDiagonal(X,Y,X-a,Y+a))for(b=1;b<a;b++)Plocha2[Y+b][X-b]=1;




                                                                        }

                                                     for (a=0;a<8;a++){
                                                        for (b=0;b<8;b++) {Plocha[a][b]=Plocha2[a][b];} Plocha[Y][X]=1;Plocha2[Y][X]=1;}

                                                     Kresli();

                                                     // este nakreslim maly stvorcek kt. bude indikovat kt. gulocka bola polozena ako posledna
                                                     Image1->Canvas->Brush->Color=clRed;
                                                     Image1->Canvas->Pen->Color=clRed;
                                                     Image1->Canvas->Rectangle(X*50+22,Y*50+22,X*50+50-22,Y*50+50-22);

                                                 }



        if (NaTahu==-1){                       //to iste s bielym
                                                 for (a=0;a<8;a++){if (BielyHoriz(X,Y,a)){

                                                                        if (X<a) for(b=X+1;b<a;b++)Plocha2[Y][b]=-1;
                                                                        if (X>a) for(b=a+1;b<X;b++)Plocha2[Y][b]=-1;}

                                                                   if (BielyVertik(X,Y,a)){

                                                                         if (Y<a) for(b=Y+1;b<a;b++)Plocha2[b][X]=-1;
                                                                         if (Y>a) for(b=a+1;b<Y;b++)Plocha2[b][X]=-1;}

                                                                   if (BielyDiagonal(X,Y,X+a,Y+a))for(b=1;b<a;b++)Plocha2[Y+b][X+b]=-1;
                                                                   if (BielyDiagonal(X,Y,X-a,Y-a))for(b=1;b<a;b++)Plocha2[Y-b][X-b]=-1;
                                                                   if (BielyDiagonal(X,Y,X+a,Y-a))for(b=1;b<a;b++)Plocha2[Y-b][X+b]=-1;
                                                                   if (BielyDiagonal(X,Y,X-a,Y+a))for(b=1;b<a;b++)Plocha2[Y+b][X-b]=-1;




                                                                        }

                                                     for (a=0;a<8;a++){
                                                        for (b=0;b<8;b++) {Plocha[a][b]=Plocha2[a][b];} Plocha[Y][X]=-1;Plocha2[Y][X]=-1;}

                                                     Kresli();
                                                     Image1->Canvas->Brush->Color=clRed;
                                                     Image1->Canvas->Pen->Color=clRed;

                                                     Image1->Canvas->Rectangle(X*50+22,Y*50+22,X*50+50-22,Y*50+50-22);
                                                 }
 a= SkoreCierny();
 b=SkoreBiely();

 Label23->Caption=a;
 Label24->Caption=b;                               //urcim nove skore

 bool t;
 t=JeKoniec();

 AnsiString x,y,z;

 x="Hra sa skoncila! Vysledok je remiza("+IntToStr(a)+" : "+IntToStr(b)+").";
 y="Hra sa skoncila! Vyhral cierny ("+Edit1->Text+"). Skore "+IntToStr(a)+" : "+IntToStr(b)+".";
 z="Hra sa skoncila! Vyhral biely ("+Edit2->Text+"). Skore "+IntToStr(a)+" : "+IntToStr(b)+".";



 if (t){if (a==b){Memo1->Lines->Add(x);ShowMessage("Hra sa skoncila!");}  //zistim ci sa neskoncila hra
        if (a>b){Memo1->Lines->Add(y);ShowMessage("Hra sa skoncila!");}
        if (a<b){Memo1->Lines->Add(z);ShowMessage("Hra sa skoncila!");}}                    //urcim  dalsieho hraca na tahu


 if (NaTahu==1&&!MozeKliknutB()&&!t)Memo1->Lines->Add("Biely nema legalny tah!Taha znova cierny!");
 else {if(NaTahu==-1&&!MozeKliknutC()&&!t)Memo1->Lines->Add("Cierny nema legalny tah!Taha znova biely!");
 else {if(NaTahu==1&&MozeKliknutB())NaTahu=-1;
 else if(NaTahu==-1&&MozeKliknutC())NaTahu=1;}}

 PisKtoJeNaTahu();
 Napoveda();



 }
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)  //tlacitko nova hra
{  int x,y;
        NaTahu=1;
        Image2->Canvas->Brush->Color=clSilver;
        Image2->Canvas->Rectangle(0,0,Image2->Width,Image2->Height);

          for (y=0;y<8;y++){
                        for (x=0;x<8;x++)Plocha[y][x]=0;}

        Plocha[3][3]=-1;
        Plocha[4][4]=-1;
        Plocha[3][4]=1;
        Plocha[4][3]=1;
        Kresli();
        Label23->Caption=2;
        Label24->Caption=2;
        Form1->Label26->Font->Color=clBlack;Form1->Label26->Caption="Cierny";
        Memo1->Text=("Zacala sa nova hra.");
        Napoveda();

}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button2Click(TObject *Sender)   //Vrati o jeden tah
{ if (SkoreBiely()==2&&SkoreCierny()==2)return;
int a,b;
NaTahu=NaTahu2;
for (a=0;a<8;a++){
                        for (b=0;b<8;b++) Plocha[a][b]=PlochaVrat[a][b];}
                        Kresli();
                        PisKtoJeNaTahu();
a= SkoreCierny();
 b=SkoreBiely();

 Label23->Caption=a;
 Label24->Caption=b;                               //urcim nove skore
 Napoveda();


}
//---------------------------------------------------------------------------

void __fastcall TForm1::CheckBox1Click(TObject *Sender)
{
if (CheckBox1->Checked)Napoveda();
else Kresli();
}
//---------------------------------------------------------------------------

