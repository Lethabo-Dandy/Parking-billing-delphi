//----Parking Slot-----------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "ParkingSlotu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmParkingSlot *frmParkingSlot;
//---------------------------------------------------------------------------
__fastcall TfrmParkingSlot::TfrmParkingSlot(TComponent* Owner)
		: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmParkingSlot::FormCreate(TObject *Sender)
{
	//shows the current time of opening the app(time of arrival at the parking)
	lblTime->Caption = TimeToStr( Now() );
	timeArrTime = Now();
}
//---------------------------------------------------------------------------
void __fastcall TfrmParkingSlot::btnTAssignerClick(TObject *Sender)
{
	//make the labels visible
   lblDep->Visible = true;
   lblFormat->Visible = true;
   btnCalcTCharge->Visible = true;

   //enters the current time
   edtArrTime->Text = lblTime->Caption;
   medtDepTime->SetFocus();

   edtArrTime->ReadOnly = true;
   btnTAssigner->Enabled = false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmParkingSlot::btnClearClick(TObject *Sender)
{
	//clears all the entries
   edtArrTime->Clear();
   medtDepTime->Clear();
   edtTotTime->Clear();
   edtTCharge->Clear();
   edtCarNo->Clear();
   lblComment->Caption = "";
}
//---------------------------------------------------------------------------
void __fastcall TfrmParkingSlot::btnCalcTChargeClick(TObject *Sender)
{
	//calculate the time and charge fee
   int preValue;

   timeTotal = (StrToTime(medtDepTime->Text) - StrToTime(edtArrTime->Text));
   if ((double)timeTotal > (1.0/(24*2)))      // == 30 mins; first 30 mins free
   {
	  edtTotTime->Text = FormatDateTime("h:nn:ss' [hour:min:sec]'",timeTotal);
						//TimeToStr(timeTotal);    - formatted
	  preValue = (double)timeTotal * 86400 * 0.12;   // answer in cent
	  // fraction of ONE day * 86400[s in 1 day] * 0.12[c/sec]

	  edtTCharge->Text = FloatToStrF((double)preValue/100, ffCurrency, 8, 2);
										  // preValue[in c] / 100[to get Rand];
   }
   else
   {
	  lblFree->Caption = "Your parking was FREE for today.";
   }
   lblComment->Caption = "THANKS CALL AGAIN AND HAVE NICE DAY";
}
//---------------------------------------------------------------------------


