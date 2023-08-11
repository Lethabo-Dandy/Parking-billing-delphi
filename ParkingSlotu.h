//---------------------------------------------------------------------------

#ifndef ParkingSlotuH
#define ParkingSlotuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class TfrmParkingSlot : public TForm
{
__published:	// IDE-managed Components
        TLabel *lblComment;
        TLabel *lblCarRNo;
        TLabel *lblArrivalTime;
        TLabel *lblDepartureTime;
        TEdit *edtCarNo;
        TEdit *edtArrTime;
        TLabel *lblTotalCharge;
        TEdit *edtTCharge;
        TButton *btnCalcTCharge;
        TButton *btnClear;
        TLabel *lblTime;
        TButton *btnTAssigner;
        TMaskEdit *medtDepTime;
        TEdit *edtTotTime;
        TLabel *lblTimeDiff;
   TLabel *lblDep;
   TLabel *lblFree;
   TLabel *lblHead;
   TLabel *lblFormat;
	TLabel *Label1;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall btnTAssignerClick(TObject *Sender);
        void __fastcall btnClearClick(TObject *Sender);
        void __fastcall btnCalcTChargeClick(TObject *Sender);
private:	// User declarations
        TDateTime timeArrTime;
        TDateTime timeDepTime;
        TDateTime timeTotal;
public:		// User declarations
        __fastcall TfrmParkingSlot(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmParkingSlot *frmParkingSlot;
//---------------------------------------------------------------------------
#endif
