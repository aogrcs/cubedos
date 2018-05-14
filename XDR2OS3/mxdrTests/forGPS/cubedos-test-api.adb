--------------------------------------------------------------------------------
-- FILE   : cubedos-test-api.adb
-- SUBJECT: Body of a package that implements the test API
-- AUTHOR : (C) Copyright 2017 by Vermont Technical College
-- All the subprograms in this package must be task safe. They can be simultaneously
--called from multiple tasks. If possible, make every subprogram here a pure function.
--------------------------------------------------------------------------------
pragma SPARK_Mode(On);

with Ada.Real_Time;
use Ada.Real_Time;

with CubedOS.Lib.XDR;
with CubedOS.Lib;
use CubedOS.Lib;
use CubedOS.Lib.XDR;

package body CubedOS.test.API is

   function v75_Encode
      (Sender_Domain : Domain_ID_Type;
      Sender : Module_ID_Type;
      --TODO
      Priority : System.Priority := System.Default_Priority) return Message_Record
   is
      Message : Message_Record;
      Request_ID : Request_ID_Type;
      Position : XDR_Index_Type;
   begin
      Get_Next_Request_ID(Request_ID);
      Message := Make_Empty_Message(
         Sender_Domain   => Sender_Domain,
         Receiver_Domain => Domain_ID,
         Sender     => Sender,
         Receiver   => ID,
         Request_ID   => Request_ID,
         Message_ID => Message_Type'Pos(v75),
         Priority   => Priority);
      Position := 0;
      --TODO
      Message.Size := Position;
      return Message;
   end v75_Encode;


   function v76_Encode
      (Receiver_Domain : Domain_ID_Type;
      Receiver : Module_ID_Type;
      --TODO
      Priority : System.Priority := System.Default_Priority) return Message_Record
   is
      Message : Message_Record := Make_Empty_Message(
         Sender_Domain   => Domain_ID,
         Receiver_Domain => Receiver_Domain,
         Sender     => ID,
         Receiver   => Receiver,
         Request_ID   => 0,
         Message_ID => Message_Type'Pos(v76),
         Priority   => Priority);
      Position : XDR_Index_Type;
   begin
      Position := 0;
      --TODO
      Message.Size := Position;
      return Message;
   end v76_Encode;


   function v79_Encode
      (Sender_Domain : Domain_ID_Type;
      Sender : Module_ID_Type;
      sv1 : v1;
      sv2 : v2;
      sv3 : v3;
      sv4 : v4;
      sv5 : v5;
      sv6 : v6;
      sv7 : v7;
      sv8 : v8;
      sv9 : v9;
      sv10 : v10;
      sv11 : v11;
      sv12 : v12;
      sv13 : v13;
      sv14 : v14;
      sv15 : v15;
      sv16 : v16;
      sv18 : v18;
      sv19 : v19;
      sv20 : v20;
      sv21 : v21;
      sv22 : v22;
      sv23 : v23;
      sv24 : v24;
      sv25 : v25;
      sv26 : v26;
      sv27 : v27;
      sv28 : v28;
      sv29 : v29;
      sv30 : v30;
      sv31 : v31;
      sv32 : v32;
      sv33 : v33;
      sv34 : v34;
      sv35 : v35;
      sv36 : v36;
      sv37 : v37;
      sv38 : v38;
      sv39 : v39;
      sv41 : v41;
      sv42 : v42;
      sv43 : v43;
      sv44 : v44;
      sv47 : v47;
      sv48 : v48;
      sv49 : v49;
      sv50 : v50;
      sv51 : v51;
      sv52 : v52;
      sv53 : v53;
      sv54 : v54;
      sv56 : v56;
      sv57 : v57;
      sv58 : v58;
      sv59 : v59;
      sv60 : v60;
      sv61 : v61;
      sv62 : v62;
      sv63 : v63;
      sv64 : v64;
      sv65 : v65;
      sv66 : v66;
      sv67 : v67;
      sv68 : v68;
      sv69 : v69;
      sv70 : v70;
      sv72 : v72;
      sv73 : v73;
      sv74 : v74;
      v79 : Lib.Quadruple_Octet;
      sv76 : Integer;
      v79 : Lib.U_Hyper_Type;
      sv78 : Lib.Hyper_Type;
      sv79 : Float;
      sv80 : Double;
      sv81 : Boolean;
      sv82 : String;
      sv83 : tai_kwon_do;
      sv84 : Ada.Real_Time.Time_Span;
      sv85 : Ada.Real_Time.Time;
      sv86 : CubedOS.Lib.Octet_Array;
      sv88 : CubedOS.Lib.Octet_Array;
      sv90 : String;
      sv91 : tai_kwon_doo_wop;
      sv92 : v98;
      sv93 : v99;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   is
      Message : Message_Record;
      Request_ID : Request_ID_Type;
      Position : XDR_Index_Type;
      Last : XDR_Index_Type;
      Interval : constant Duration := Ada.Real_Time.To_Duration(sv84);
      Seconds  : Ada.Real_Time.Seconds_Count;
      Fraction : Ada.Real_Time.Time_Span;
   begin
      Get_Next_Request_ID(Request_ID);
      Message := Make_Empty_Message(
         Sender_Domain   => Sender_Domain,
         Receiver_Domain => Domain_ID,
         Sender     => Sender,
         Receiver   => ID,
         Request_ID   => Request_ID,
         Message_ID => Message_Type'Pos(v79),
         Priority   => Priority);
      
      Ada.Real_Time.Split(sv85, Seconds, Fraction);

      Position := 0;
      XDR.Encode(XDR.XDR_Unsigned(sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv8), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv9), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv10), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv11), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv12), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv13), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv14), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean'Val(v15'Pos(sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv16'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv16, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv24)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv25)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv26)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv27)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv28.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv28.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv29.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv30.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv30.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv30.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv30.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv30.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv30.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv30.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v79.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v79.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v79.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v79.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv30.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv30.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv30.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv30.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv30.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv30.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv30.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv30.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv30.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv31.sv1.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv31.sv1.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv31.sv1.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv31.sv1.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv1.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv31.sv1.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv31.sv1.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v31.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v31.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v31.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v31.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv31.sv1.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv31.sv1.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv31.sv1.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv31.sv1.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv31.sv1.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv31.sv1.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv31.sv1.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv1.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv1.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv31.sv2.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv31.sv2.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv31.sv2.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv31.sv2.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv2.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv31.sv2.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv31.sv2.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v31.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v31.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v31.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v31.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv31.sv2.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv31.sv2.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv31.sv2.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv31.sv2.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv31.sv2.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv31.sv2.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv31.sv2.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv2.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv2.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv32.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv32.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv32.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv32.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv32.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv32.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv32.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v79.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v79.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v79.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v79.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv32.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv32.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv32.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv32.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv32.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv32.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv32.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv32.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv32.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv33.sv1.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv33.sv1.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv33.sv1.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv33.sv1.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv1.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv33.sv1.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv33.sv1.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v33.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v33.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v33.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v33.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv33.sv1.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv33.sv1.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv33.sv1.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv33.sv1.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv33.sv1.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv33.sv1.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv33.sv1.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv1.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv1.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv33.sv2.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv33.sv2.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv33.sv2.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv33.sv2.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv2.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv33.sv2.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv33.sv2.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v33.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v33.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v33.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v33.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv33.sv2.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv33.sv2.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv33.sv2.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv33.sv2.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv33.sv2.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv33.sv2.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv33.sv2.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv2.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv2.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv34), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv35), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv36), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv37), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv38), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv39), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv42'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv42, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv43'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv43, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv47), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv48), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv49), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv50), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv51), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv52), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean'Val(v53'Pos(sv53)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv54'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv54, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v60'Pos(sv60)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v61'Pos(sv61)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv62.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv63.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv63.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv63.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv63.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv63.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv63.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv63.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v79.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v79.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v79.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v79.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v60'Pos(sv63.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v61'Pos(sv63.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv63.sv15.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv64.sv1.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv64.sv1.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv64.sv1.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv64.sv1.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv64.sv1.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv64.sv1.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv64.sv1.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v64.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v64.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v64.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v64.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v60'Pos(sv64.sv1.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v61'Pos(sv64.sv1.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv64.sv1.sv15.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv64.sv2.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv64.sv2.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv64.sv2.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv64.sv2.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv64.sv2.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv64.sv2.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv64.sv2.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v64.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v64.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v64.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v64.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v60'Pos(sv64.sv2.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v61'Pos(sv64.sv2.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv64.sv2.sv15.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv65), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv66), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv67), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv68), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv69), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv70), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv72'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv72, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv73'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv73, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv75), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv76), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv77), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv78), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv79), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv80), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean'Val(Boolean'Pos(sv81)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv82'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv82, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv86'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv86, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv90'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv90, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv92), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv93), Message.Payload, Position, Last);
      Position := Last + 1;
      Message.Size := Position;
      return Message;
   end v79_Encode;

   procedure v79_Decode
      (Message : in  Message_Record;
      sv1 : out v1;
      sv2 : out v2;
      sv3 : out v3;
      sv4 : out v4;
      sv5 : out v5;
      sv6 : out v6;
      sv7 : out v7;
      sv8 : out v8;
      sv9 : out v9;
      sv10 : out v10;
      sv11 : out v11;
      sv12 : out v12;
      sv13 : out v13;
      sv14 : out v14;
      sv15 : out v15;
      sv16 : out v16;
      sv18 : out v18;
      sv19 : out v19;
      sv20 : out v20;
      sv21 : out v21;
      sv22 : out v22;
      sv23 : out v23;
      sv24 : out v24;
      sv25 : out v25;
      sv26 : out v26;
      sv27 : out v27;
      sv28 : out v28;
      sv29 : out v29;
      sv30 : out v30;
      sv31 : out v31;
      sv32 : out v32;
      sv33 : out v33;
      sv34 : out v34;
      sv35 : out v35;
      sv36 : out v36;
      sv37 : out v37;
      sv38 : out v38;
      sv39 : out v39;
      sv41 : out v41;
      sv42 : out v42;
      sv43 : out v43;
      sv44 : out v44;
      sv47 : out v47;
      sv48 : out v48;
      sv49 : out v49;
      sv50 : out v50;
      sv51 : out v51;
      sv52 : out v52;
      sv53 : out v53;
      sv54 : out v54;
      sv56 : out v56;
      sv57 : out v57;
      sv58 : out v58;
      sv59 : out v59;
      sv60 : out v60;
      sv61 : out v61;
      sv62 : out v62;
      sv63 : out v63;
      sv64 : out v64;
      sv65 : out v65;
      sv66 : out v66;
      sv67 : out v67;
      sv68 : out v68;
      sv69 : out v69;
      sv70 : out v70;
      sv72 : out v72;
      sv73 : out v73;
      sv74 : out v74;
      v79 : out Lib.Quadruple_Octet;
      sv76 : out Integer;
      v79 : out Lib.U_Hyper_Type;
      sv78 : out Lib.Hyper_Type;
      sv79 : out Float;
      sv80 : out Double;
      sv81 : out Boolean;
      sv82 : out String;
      sv82_Size : out Natural;
      sv83 : out tai_kwon_do;
      sv84 : out Ada.Real_Time.Time_Span;
      sv85 : out Ada.Real_Time.Time;
      sv86 : out CubedOS.Lib.Octet_Array;
      Size : out CubedOS.Lib.Octet_Array_Count;
      sv88 : out CubedOS.Lib.Octet_Array;
      Size : out CubedOS.Lib.Octet_Array_Count;
      sv90 : out String;
      sv90_Size : out Natural;
      sv91 : out tai_kwon_doo_wop;
      sv92 : out v98;
      sv93 : out v99;
      Decode_Status : out Message_Status_Type)
   is
      Position : XDR_Index_Type;
      Raw_sv1   : XDR.XDR_Unsigned;
      Raw_sv2   : XDR.XDR_Unsigned;
      Raw_sv3   : XDR.XDR_Unsigned;
      Raw_sv4   : XDR.XDR_Integer;
      Raw_sv5   : XDR.XDR_Integer;
      Raw_sv6   : XDR.XDR_Integer;
      Raw_sv7   : XDR.XDR_Unsigned_Hyper;
      Raw_sv8   : XDR.XDR_Unsigned_Hyper;
      Raw_sv9   : XDR.XDR_Unsigned_Hyper;
      Raw_sv10   : XDR.XDR_Hyper;
      Raw_sv11   : XDR.XDR_Hyper;
      Raw_sv12   : XDR.XDR_Hyper;
      Raw_sv13   : XDR.XDR_Float;
      Raw_sv14   : XDR.XDR_Double;
      Raw_sv15   : XDR.XDR_Boolean;
      Raw_sv16_Size : XDR.XDR_Unsigned;
      Raw_sv18   : XDR.XDR_Unsigned;
      Raw_sv19   : XDR.XDR_Unsigned;
      Raw_sv20   : XDR.XDR_Unsigned;
      Raw_sv21   : XDR.XDR_Unsigned;
      Raw_sv22   : XDR.XDR_Unsigned;
      Raw_sv23   : XDR.XDR_Unsigned;
      Raw_sv24 : XDR.XDR_Unsigned;
      Raw_sv25 : XDR.XDR_Unsigned;
      Raw_sv26 : XDR.XDR_Unsigned;
      Raw_sv27 : XDR.XDR_Unsigned;
      Raw_sv28_sav1   : XDR.XDR_Unsigned;
      Raw_sv28_sv1   : XDR.XDR_Integer;
      Raw_sv29_sv1   : XDR.XDR_Integer;
      Raw_sv30_sv1   : XDR.XDR_Unsigned;
      Raw_sv30_sv2   : XDR.XDR_Integer;
      Raw_sv30_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv30_sv4   : XDR.XDR_Hyper;
      Raw_sv30_sv5   : XDR.XDR_Float;
      Raw_sv30_sv6   : XDR.XDR_Double;
      Raw_sv30_sv7   : XDR.XDR_Boolean;
      Raw_sv30_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv30_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv30_sv13 : XDR.XDR_Unsigned;
      Raw_sv30_sv14 : XDR.XDR_Unsigned;
      Raw_sv30_sv15 : XDR.XDR_Unsigned;
      Raw_sv30_sv16 : XDR.XDR_Unsigned;
      Raw_sv30_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv30_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv30_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv30_sv19   : XDR.XDR_Float;
      Raw_sv30_sv20   : XDR.XDR_Float;
      Raw_sv31_sv1_sv1   : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv2   : XDR.XDR_Integer;
      Raw_sv31_sv1_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv31_sv1_sv4   : XDR.XDR_Hyper;
      Raw_sv31_sv1_sv5   : XDR.XDR_Float;
      Raw_sv31_sv1_sv6   : XDR.XDR_Double;
      Raw_sv31_sv1_sv7   : XDR.XDR_Boolean;
      Raw_sv31_sv1_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv31_sv1_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv13 : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv14 : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv15 : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv16 : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv31_sv1_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv31_sv1_sv19   : XDR.XDR_Float;
      Raw_sv31_sv1_sv20   : XDR.XDR_Float;
      Raw_sv31_sv2_sv1   : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv2   : XDR.XDR_Integer;
      Raw_sv31_sv2_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv31_sv2_sv4   : XDR.XDR_Hyper;
      Raw_sv31_sv2_sv5   : XDR.XDR_Float;
      Raw_sv31_sv2_sv6   : XDR.XDR_Double;
      Raw_sv31_sv2_sv7   : XDR.XDR_Boolean;
      Raw_sv31_sv2_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv31_sv2_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv13 : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv14 : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv15 : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv16 : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv31_sv2_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv31_sv2_sv19   : XDR.XDR_Float;
      Raw_sv31_sv2_sv20   : XDR.XDR_Float;
      Raw_sv32_sv1   : XDR.XDR_Unsigned;
      Raw_sv32_sv2   : XDR.XDR_Integer;
      Raw_sv32_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv32_sv4   : XDR.XDR_Hyper;
      Raw_sv32_sv5   : XDR.XDR_Float;
      Raw_sv32_sv6   : XDR.XDR_Double;
      Raw_sv32_sv7   : XDR.XDR_Boolean;
      Raw_sv32_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv32_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv32_sv13 : XDR.XDR_Unsigned;
      Raw_sv32_sv14 : XDR.XDR_Unsigned;
      Raw_sv32_sv15 : XDR.XDR_Unsigned;
      Raw_sv32_sv16 : XDR.XDR_Unsigned;
      Raw_sv32_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv32_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv32_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv32_sv19   : XDR.XDR_Float;
      Raw_sv32_sv20   : XDR.XDR_Float;
      Raw_sv33_sv1_sv1   : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv2   : XDR.XDR_Integer;
      Raw_sv33_sv1_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv33_sv1_sv4   : XDR.XDR_Hyper;
      Raw_sv33_sv1_sv5   : XDR.XDR_Float;
      Raw_sv33_sv1_sv6   : XDR.XDR_Double;
      Raw_sv33_sv1_sv7   : XDR.XDR_Boolean;
      Raw_sv33_sv1_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv33_sv1_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv13 : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv14 : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv15 : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv16 : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv33_sv1_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv33_sv1_sv19   : XDR.XDR_Float;
      Raw_sv33_sv1_sv20   : XDR.XDR_Float;
      Raw_sv33_sv2_sv1   : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv2   : XDR.XDR_Integer;
      Raw_sv33_sv2_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv33_sv2_sv4   : XDR.XDR_Hyper;
      Raw_sv33_sv2_sv5   : XDR.XDR_Float;
      Raw_sv33_sv2_sv6   : XDR.XDR_Double;
      Raw_sv33_sv2_sv7   : XDR.XDR_Boolean;
      Raw_sv33_sv2_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv33_sv2_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv13 : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv14 : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv15 : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv16 : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv33_sv2_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv33_sv2_sv19   : XDR.XDR_Float;
      Raw_sv33_sv2_sv20   : XDR.XDR_Float;
      Raw_sv34   : XDR.XDR_Unsigned;
      Raw_sv35   : XDR.XDR_Integer;
      Raw_sv36   : XDR.XDR_Unsigned_Hyper;
      Raw_sv37   : XDR.XDR_Hyper;
      Raw_sv38   : XDR.XDR_Float;
      Raw_sv39   : XDR.XDR_Double;
      Raw_sv41   : XDR.XDR_Unsigned;
      Raw_sv42_Size : XDR.XDR_Unsigned;
      Raw_sv43_Size : XDR.XDR_Unsigned;
      Raw_sv44   : XDR.XDR_Unsigned;
      Raw_sv47   : XDR.XDR_Unsigned;
      Raw_sv48   : XDR.XDR_Integer;
      Raw_sv49   : XDR.XDR_Unsigned_Hyper;
      Raw_sv50   : XDR.XDR_Hyper;
      Raw_sv51   : XDR.XDR_Float;
      Raw_sv52   : XDR.XDR_Double;
      Raw_sv53   : XDR.XDR_Boolean;
      Raw_sv54_Size : XDR.XDR_Unsigned;
      Raw_sv56   : XDR.XDR_Unsigned;
      Raw_sv57   : XDR.XDR_Unsigned;
      Raw_sv58   : XDR.XDR_Unsigned;
      Raw_sv59   : XDR.XDR_Unsigned;
      Raw_sv60 : XDR.XDR_Unsigned;
      Raw_sv61 : XDR.XDR_Unsigned;
      Raw_sv62_sv1   : XDR.XDR_Integer;
      Raw_sv63_sv1   : XDR.XDR_Unsigned;
      Raw_sv63_sv2   : XDR.XDR_Integer;
      Raw_sv63_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv63_sv4   : XDR.XDR_Hyper;
      Raw_sv63_sv5   : XDR.XDR_Float;
      Raw_sv63_sv6   : XDR.XDR_Double;
      Raw_sv63_sv7   : XDR.XDR_Boolean;
      Raw_sv63_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv63_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv63_sv13 : XDR.XDR_Unsigned;
      Raw_sv63_sv14 : XDR.XDR_Unsigned;
      Raw_sv63_sv15_sv1   : XDR.XDR_Integer;
      Raw_sv64_sv1_sv1   : XDR.XDR_Unsigned;
      Raw_sv64_sv1_sv2   : XDR.XDR_Integer;
      Raw_sv64_sv1_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv64_sv1_sv4   : XDR.XDR_Hyper;
      Raw_sv64_sv1_sv5   : XDR.XDR_Float;
      Raw_sv64_sv1_sv6   : XDR.XDR_Double;
      Raw_sv64_sv1_sv7   : XDR.XDR_Boolean;
      Raw_sv64_sv1_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv64_sv1_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv64_sv1_sv13 : XDR.XDR_Unsigned;
      Raw_sv64_sv1_sv14 : XDR.XDR_Unsigned;
      Raw_sv64_sv1_sv15_sv1   : XDR.XDR_Integer;
      Raw_sv64_sv2_sv1   : XDR.XDR_Unsigned;
      Raw_sv64_sv2_sv2   : XDR.XDR_Integer;
      Raw_sv64_sv2_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv64_sv2_sv4   : XDR.XDR_Hyper;
      Raw_sv64_sv2_sv5   : XDR.XDR_Float;
      Raw_sv64_sv2_sv6   : XDR.XDR_Double;
      Raw_sv64_sv2_sv7   : XDR.XDR_Boolean;
      Raw_sv64_sv2_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv64_sv2_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv64_sv2_sv13 : XDR.XDR_Unsigned;
      Raw_sv64_sv2_sv14 : XDR.XDR_Unsigned;
      Raw_sv64_sv2_sv15_sv1   : XDR.XDR_Integer;
      Raw_sv65   : XDR.XDR_Unsigned;
      Raw_sv66   : XDR.XDR_Integer;
      Raw_sv67   : XDR.XDR_Unsigned_Hyper;
      Raw_sv68   : XDR.XDR_Hyper;
      Raw_sv69   : XDR.XDR_Float;
      Raw_sv70   : XDR.XDR_Double;
      Raw_sv72_Size : XDR.XDR_Unsigned;
      Raw_sv73_Size : XDR.XDR_Unsigned;
      Raw_sv74   : XDR.XDR_Unsigned;
      Raw_sv75   : XDR.XDR_Unsigned;
      Raw_sv76   : XDR.XDR_Integer;
      Raw_sv77   : XDR.XDR_Unsigned_Hyper;
      Raw_sv78   : XDR.XDR_Hyper;
      Raw_sv79   : XDR.XDR_Float;
      Raw_sv80   : XDR.XDR_Double;
      Raw_sv81   : XDR.XDR_Boolean;
      Raw_sv82_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv85   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv88   : XDR.XDR_Unsigned;
      Raw_sv90_Size : XDR.XDR_Unsigned;
      Raw_sv92   : XDR.XDR_Float;
      Raw_sv93   : XDR.XDR_Float;
      Last : XDR_Index_Type;
   begin
      pragma Warnings
         (Off, "unused assignment to ""Last""", Reason => "The last value of Last is not needed");
      Decode_Status := Success;
      sv1 := v1'First;
      sv2 := v2'First;
      sv3 := v3'First;
      sv4 := v4'First;
      sv5 := v5'First;
      sv6 := v6'First;
      sv7 := v7'First;
      sv8 := v8'First;
      sv9 := v9'First;
      sv10 := v10'First;
      sv11 := v11'First;
      sv12 := v12'First;
      sv13 := v13'First;
      sv14 := v14'First;
      sv15 := v15'First;
      sv16 := (others => ' ');
      for I in Integer range 0 .. 1000 loop
         sv28.sav1(I) := av1'First;
      end loop;
      sv28.sv1 := Integer(XDR.XDR_Integer'First);
      sv29.sv1 := Integer(XDR.XDR_Integer'First);
      sv30.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv30.sv2 := Integer(XDR.XDR_Integer'First);
      sv30.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv30.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv30.sv5 := Float'First;
      sv30.sv6 := Double'First;
      sv30.sv7 := Boolean'First;
      sv30.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv30.sv12 := (others => 0);
      Size := 0;
      sv30.sv13 := v24'First;
      sv30.sv14 := v25'First;
      sv30.sv15 := v26'First;
      sv30.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv30.sv17.sav1(I) := av1'First;
      end loop;
      sv30.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv30.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv30.sv19 := v98'First;
      sv30.sv20 := v99'First;
      sv31.sv1.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv31.sv1.sv2 := Integer(XDR.XDR_Integer'First);
      sv31.sv1.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv31.sv1.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv31.sv1.sv5 := Float'First;
      sv31.sv1.sv6 := Double'First;
      sv31.sv1.sv7 := Boolean'First;
      sv31.sv1.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv31.sv1.sv12 := (others => 0);
      Size := 0;
      sv31.sv1.sv13 := v24'First;
      sv31.sv1.sv14 := v25'First;
      sv31.sv1.sv15 := v26'First;
      sv31.sv1.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv31.sv1.sv17.sav1(I) := av1'First;
      end loop;
      sv31.sv1.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv31.sv1.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv31.sv1.sv19 := v98'First;
      sv31.sv1.sv20 := v99'First;
      sv31.sv2.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv31.sv2.sv2 := Integer(XDR.XDR_Integer'First);
      sv31.sv2.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv31.sv2.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv31.sv2.sv5 := Float'First;
      sv31.sv2.sv6 := Double'First;
      sv31.sv2.sv7 := Boolean'First;
      sv31.sv2.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv31.sv2.sv12 := (others => 0);
      Size := 0;
      sv31.sv2.sv13 := v24'First;
      sv31.sv2.sv14 := v25'First;
      sv31.sv2.sv15 := v26'First;
      sv31.sv2.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv31.sv2.sv17.sav1(I) := av1'First;
      end loop;
      sv31.sv2.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv31.sv2.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv31.sv2.sv19 := v98'First;
      sv31.sv2.sv20 := v99'First;
      sv32.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv32.sv2 := Integer(XDR.XDR_Integer'First);
      sv32.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv32.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv32.sv5 := Float'First;
      sv32.sv6 := Double'First;
      sv32.sv7 := Boolean'First;
      sv32.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv32.sv12 := (others => 0);
      Size := 0;
      sv32.sv13 := v24'First;
      sv32.sv14 := v25'First;
      sv32.sv15 := v26'First;
      sv32.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv32.sv17.sav1(I) := av1'First;
      end loop;
      sv32.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv32.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv32.sv19 := v98'First;
      sv32.sv20 := v99'First;
      sv33.sv1.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv33.sv1.sv2 := Integer(XDR.XDR_Integer'First);
      sv33.sv1.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv33.sv1.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv33.sv1.sv5 := Float'First;
      sv33.sv1.sv6 := Double'First;
      sv33.sv1.sv7 := Boolean'First;
      sv33.sv1.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv33.sv1.sv12 := (others => 0);
      Size := 0;
      sv33.sv1.sv13 := v24'First;
      sv33.sv1.sv14 := v25'First;
      sv33.sv1.sv15 := v26'First;
      sv33.sv1.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv33.sv1.sv17.sav1(I) := av1'First;
      end loop;
      sv33.sv1.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv33.sv1.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv33.sv1.sv19 := v98'First;
      sv33.sv1.sv20 := v99'First;
      sv33.sv2.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv33.sv2.sv2 := Integer(XDR.XDR_Integer'First);
      sv33.sv2.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv33.sv2.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv33.sv2.sv5 := Float'First;
      sv33.sv2.sv6 := Double'First;
      sv33.sv2.sv7 := Boolean'First;
      sv33.sv2.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv33.sv2.sv12 := (others => 0);
      Size := 0;
      sv33.sv2.sv13 := v24'First;
      sv33.sv2.sv14 := v25'First;
      sv33.sv2.sv15 := v26'First;
      sv33.sv2.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv33.sv2.sv17.sav1(I) := av1'First;
      end loop;
      sv33.sv2.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv33.sv2.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv33.sv2.sv19 := v98'First;
      sv33.sv2.sv20 := v99'First;
      sv34 := v34'First;
      sv35 := v35'First;
      sv36 := v36'First;
      sv37 := v37'First;
      sv38 := v38'First;
      sv39 := v39'First;
      sv42 := (others => ' ');
      sv43 := (others => ' ');
      sv47 := v47'First;
      sv48 := v48'First;
      sv49 := v49'First;
      sv50 := v50'First;
      sv51 := v51'First;
      sv52 := v52'First;
      sv53 := v53'First;
      sv54 := (others => ' ');
      sv62.sv1 := Integer(XDR.XDR_Integer'First);
      sv63.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv63.sv2 := Integer(XDR.XDR_Integer'First);
      sv63.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv63.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv63.sv5 := Float'First;
      sv63.sv6 := Double'First;
      sv63.sv7 := Boolean'First;
      sv63.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv63.sv12 := (others => 0);
      Size := 0;
      sv63.sv13 := v60'First;
      sv63.sv14 := v61'First;
      sv63.sv15.sv1 := Integer(XDR.XDR_Integer'First);
      sv64.sv1.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv64.sv1.sv2 := Integer(XDR.XDR_Integer'First);
      sv64.sv1.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv64.sv1.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv64.sv1.sv5 := Float'First;
      sv64.sv1.sv6 := Double'First;
      sv64.sv1.sv7 := Boolean'First;
      sv64.sv1.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv64.sv1.sv12 := (others => 0);
      Size := 0;
      sv64.sv1.sv13 := v60'First;
      sv64.sv1.sv14 := v61'First;
      sv64.sv1.sv15.sv1 := Integer(XDR.XDR_Integer'First);
      sv64.sv2.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv64.sv2.sv2 := Integer(XDR.XDR_Integer'First);
      sv64.sv2.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv64.sv2.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv64.sv2.sv5 := Float'First;
      sv64.sv2.sv6 := Double'First;
      sv64.sv2.sv7 := Boolean'First;
      sv64.sv2.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv64.sv2.sv12 := (others => 0);
      Size := 0;
      sv64.sv2.sv13 := v60'First;
      sv64.sv2.sv14 := v61'First;
      sv64.sv2.sv15.sv1 := Integer(XDR.XDR_Integer'First);
      sv65 := v65'First;
      sv66 := v66'First;
      sv67 := v67'First;
      sv68 := v68'First;
      sv69 := v69'First;
      sv70 := v70'First;
      sv72 := (others => ' ');
      sv73 := (others => ' ');
      sv75 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv76 := Integer(XDR.XDR_Integer'First);
      sv77 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv78 := Lib.Hyper_Type(XDR.XDR_Hyper'First);
      sv79 := Float'First;
      sv80 := Double'First;
      sv81 := Boolean'First;
      sv82 := (others => ' ');
      sv84 := Ada.Real_Time.Time_Span_First;
      sv85 := Ada.Real_Time.Time_First;
      sv86 := (others => 0);
      Size := 0;
      sv90 := (others => ' ');
      sv92 := v98'First;
      sv93 := v99'First;
      Position := 0;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv1, Last);
         Position := Last + 1;
         if Raw_sv1 in XDR.XDR_Unsigned(v1'First) .. XDR.XDR_Unsigned(v1'Last) then
            sv1 := v1(Raw_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv2, Last);
         Position := Last + 1;
         if Raw_sv2 in XDR.XDR_Unsigned(v2'First) .. XDR.XDR_Unsigned(v2'Last) then
            sv2 := v2(Raw_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv3, Last);
         Position := Last + 1;
         if Raw_sv3 in XDR.XDR_Unsigned(v3'First) .. XDR.XDR_Unsigned(v3'Last) then
            sv3 := v3(Raw_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv4, Last);
         Position := Last + 1;
         if Raw_sv4 in XDR.XDR_Integer(v4'First) .. XDR.XDR_Integer(v4'Last) then
            sv4 := v4(Raw_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv5, Last);
         Position := Last + 1;
         if Raw_sv5 in XDR.XDR_Integer(v5'First) .. XDR.XDR_Integer(v5'Last) then
            sv5 := v5(Raw_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv6, Last);
         Position := Last + 1;
         if Raw_sv6 in XDR.XDR_Integer(v6'First) .. XDR.XDR_Integer(v6'Last) then
            sv6 := v6(Raw_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv7, Last);
         Position := Last + 1;
         if Raw_sv7 in XDR.XDR_Unsigned_Hyper(v7'First) .. XDR.XDR_Unsigned_Hyper(v7'Last) then
            sv7 := v7(Raw_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv8, Last);
         Position := Last + 1;
         if Raw_sv8 in XDR.XDR_Unsigned_Hyper(v8'First) .. XDR.XDR_Unsigned_Hyper(v8'Last) then
            sv8 := v8(Raw_sv8);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv9, Last);
         Position := Last + 1;
         if Raw_sv9 in XDR.XDR_Unsigned_Hyper(v9'First) .. XDR.XDR_Unsigned_Hyper(v9'Last) then
            sv9 := v9(Raw_sv9);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv10, Last);
         Position := Last + 1;
         if Raw_sv10 in XDR.XDR_Hyper(v10'First) .. XDR.XDR_Hyper(v10'Last) then
            sv10 := v10(Raw_sv10);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 in XDR.XDR_Hyper(v11'First) .. XDR.XDR_Hyper(v11'Last) then
            sv11 := v11(Raw_sv11);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv12, Last);
         Position := Last + 1;
         if Raw_sv12 in XDR.XDR_Hyper(v12'First) .. XDR.XDR_Hyper(v12'Last) then
            sv12 := v12(Raw_sv12);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv13, Last);
         Position := Last + 1;
         if Raw_sv13 in XDR.XDR_Float(v13'First) .. XDR.XDR_Float(v13'Last) then
            sv13 := v13(Raw_sv13);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv14, Last);
         Position := Last + 1;
         if Raw_sv14 in XDR.XDR_Double(v14'First) .. XDR.XDR_Double(v14'Last) then
            sv14 := v14(Raw_sv14);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv15, Last);
         Position := Last + 1;
         sv15 := v15'Val(XDR.XDR_Boolean'Pos(Raw_sv15));
         Decode_Status := Success;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv16_Size, Last);
         Position := Last + 1;
         if Raw_sv16_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv16_Size := Natural(Raw_sv16_Size);
         else
            sv16_Size := 0;
         end if;
         if sv16_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv16(sv16'First .. sv16'First + (sv16_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv18, Last);
         Position := Last + 1;
         if Raw_sv18 in v18'Pos(v18'First) .. v18'Pos(v18'Last) then
            sv18 := v18'Val(Raw_sv18);
         else
            Decode_Status := Malformed;
            sv18 := v18'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv19, Last);
         Position := Last + 1;
         if Raw_sv19 in v19'Pos(v19'First) .. v19'Pos(v19'Last) then
            sv19 := v19'Val(Raw_sv19);
         else
            Decode_Status := Malformed;
            sv19 := v19'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv20, Last);
         Position := Last + 1;
         if Raw_sv20 in v20'Pos(v20'First) .. v20'Pos(v20'Last) then
            sv20 := v20'Val(Raw_sv20);
         else
            Decode_Status := Malformed;
            sv20 := v20'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv21, Last);
         Position := Last + 1;
         if Raw_sv21 in v21'Pos(v21'First) .. v21'Pos(v21'Last) then
            sv21 := v21'Val(Raw_sv21);
         else
            Decode_Status := Malformed;
            sv21 := v21'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv22, Last);
         Position := Last + 1;
         if Raw_sv22 in v22'Pos(v22'First) .. v22'Pos(v22'Last) then
            sv22 := v22'Val(Raw_sv22);
         else
            Decode_Status := Malformed;
            sv22 := v22'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv23, Last);
         Position := Last + 1;
         if Raw_sv23 in v23'Pos(v23'First) .. v23'Pos(v23'Last) then
            sv23 := v23'Val(Raw_sv23);
         else
            Decode_Status := Malformed;
            sv23 := v23'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv24, Last);
         Position := Last + 1;
         if Raw_sv24 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv24 := v24'Val(Raw_sv24);
         else
            Decode_Status := Malformed;
            sv24 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv25, Last);
         Position := Last + 1;
         if Raw_sv25 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv25 := v25'Val(Raw_sv25);
         else
            Decode_Status := Malformed;
            sv25 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv26, Last);
         Position := Last + 1;
         if Raw_sv26 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv26 := v26'Val(Raw_sv26);
         else
            Decode_Status := Malformed;
            sv26 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv27, Last);
         Position := Last + 1;
         if Raw_sv27 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv27 := v27'Val(Raw_sv27);
         else
            Decode_Status := Malformed;
            sv27 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv28_sav1, Last);
            Position := Last + 1;
            if Raw_sv28_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv28.sav1(I) := av1(Raw_sv28_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv28_sv1, Last);
         Position := Last + 1;
         if Raw_sv28_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv28.sv1 := Integer(Raw_sv28_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv29_sv1, Last);
         Position := Last + 1;
         if Raw_sv29_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv29.sv1 := Integer(Raw_sv29_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv1, Last);
         Position := Last + 1;
         if Raw_sv30_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv30.sv1 := Lib.Quadruple_Octet(Raw_sv30_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv2, Last);
         Position := Last + 1;
         if Raw_sv30_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv30.sv2 := Integer(Raw_sv30_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv3, Last);
         Position := Last + 1;
         if Raw_sv30_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv30.sv3 := Lib.U_Hyper_Type(Raw_sv30_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv4, Last);
         Position := Last + 1;
         if Raw_sv30_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv30.sv4 := Lib.Hyper_Type(Raw_sv30_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv5, Last);
         Position := Last + 1;
         if Raw_sv30_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv30.sv5 := Float(Raw_sv30_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv6, Last);
         Position := Last + 1;
         if Raw_sv30_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv30.sv6 := Double(Raw_sv30_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv7, Last);
         Position := Last + 1;
         if Raw_sv30_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv30.sv7 := null(Raw_sv30_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv30_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv30_sv8_Size);
         else
            sv30_sv8_Size := 0;
         end if;
         if sv30_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv13, Last);
         Position := Last + 1;
         if Raw_sv30_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv30.sv13 := v24'Val(Raw_sv30_sv13);
         else
            Decode_Status := Malformed;
            sv30.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv14, Last);
         Position := Last + 1;
         if Raw_sv30_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv30.sv14 := v25'Val(Raw_sv30_sv14);
         else
            Decode_Status := Malformed;
            sv30.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv15, Last);
         Position := Last + 1;
         if Raw_sv30_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv30.sv15 := v26'Val(Raw_sv30_sv15);
         else
            Decode_Status := Malformed;
            sv30.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv16, Last);
         Position := Last + 1;
         if Raw_sv30_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv30.sv16 := v27'Val(Raw_sv30_sv16);
         else
            Decode_Status := Malformed;
            sv30.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv30_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv30_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv30.sv17.sav1(I) := av1(Raw_sv30_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv30_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv30.sv17.sv1 := Integer(Raw_sv30_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv30_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv30.sv18.sv1 := Integer(Raw_sv30_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv19, Last);
         Position := Last + 1;
         if Raw_sv30_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv30.sv19 := v98(Raw_sv30_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv20, Last);
         Position := Last + 1;
         if Raw_sv30_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv30.sv20 := v99(Raw_sv30_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv31.sv1.sv1 := Lib.Quadruple_Octet(Raw_sv31_sv1_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv2, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv1.sv2 := Integer(Raw_sv31_sv1_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv3, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv31.sv1.sv3 := Lib.U_Hyper_Type(Raw_sv31_sv1_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv4, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv31.sv1.sv4 := Lib.Hyper_Type(Raw_sv31_sv1_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv5, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv31.sv1.sv5 := Float(Raw_sv31_sv1_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv6, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv31.sv1.sv6 := Double(Raw_sv31_sv1_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv7, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv31.sv1.sv7 := null(Raw_sv31_sv1_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv31_sv1_sv8_Size);
         else
            sv31_sv1_sv8_Size := 0;
         end if;
         if sv31_sv1_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv13, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv31.sv1.sv13 := v24'Val(Raw_sv31_sv1_sv13);
         else
            Decode_Status := Malformed;
            sv31.sv1.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv14, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv31.sv1.sv14 := v25'Val(Raw_sv31_sv1_sv14);
         else
            Decode_Status := Malformed;
            sv31.sv1.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv15, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv31.sv1.sv15 := v26'Val(Raw_sv31_sv1_sv15);
         else
            Decode_Status := Malformed;
            sv31.sv1.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv16, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv31.sv1.sv16 := v27'Val(Raw_sv31_sv1_sv16);
         else
            Decode_Status := Malformed;
            sv31.sv1.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv31_sv1_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv31.sv1.sv17.sav1(I) := av1(Raw_sv31_sv1_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv1.sv17.sv1 := Integer(Raw_sv31_sv1_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv1.sv18.sv1 := Integer(Raw_sv31_sv1_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv19, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv31.sv1.sv19 := v98(Raw_sv31_sv1_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv20, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv31.sv1.sv20 := v99(Raw_sv31_sv1_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv31.sv2.sv1 := Lib.Quadruple_Octet(Raw_sv31_sv2_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv2, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv2.sv2 := Integer(Raw_sv31_sv2_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv3, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv31.sv2.sv3 := Lib.U_Hyper_Type(Raw_sv31_sv2_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv4, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv31.sv2.sv4 := Lib.Hyper_Type(Raw_sv31_sv2_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv5, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv31.sv2.sv5 := Float(Raw_sv31_sv2_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv6, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv31.sv2.sv6 := Double(Raw_sv31_sv2_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv7, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv31.sv2.sv7 := null(Raw_sv31_sv2_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv31_sv2_sv8_Size);
         else
            sv31_sv2_sv8_Size := 0;
         end if;
         if sv31_sv2_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv13, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv31.sv2.sv13 := v24'Val(Raw_sv31_sv2_sv13);
         else
            Decode_Status := Malformed;
            sv31.sv2.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv14, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv31.sv2.sv14 := v25'Val(Raw_sv31_sv2_sv14);
         else
            Decode_Status := Malformed;
            sv31.sv2.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv15, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv31.sv2.sv15 := v26'Val(Raw_sv31_sv2_sv15);
         else
            Decode_Status := Malformed;
            sv31.sv2.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv16, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv31.sv2.sv16 := v27'Val(Raw_sv31_sv2_sv16);
         else
            Decode_Status := Malformed;
            sv31.sv2.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv31_sv2_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv31.sv2.sv17.sav1(I) := av1(Raw_sv31_sv2_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv2.sv17.sv1 := Integer(Raw_sv31_sv2_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv2.sv18.sv1 := Integer(Raw_sv31_sv2_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv19, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv31.sv2.sv19 := v98(Raw_sv31_sv2_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv20, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv31.sv2.sv20 := v99(Raw_sv31_sv2_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv1, Last);
         Position := Last + 1;
         if Raw_sv32_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv32.sv1 := Lib.Quadruple_Octet(Raw_sv32_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv2, Last);
         Position := Last + 1;
         if Raw_sv32_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv32.sv2 := Integer(Raw_sv32_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv3, Last);
         Position := Last + 1;
         if Raw_sv32_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv32.sv3 := Lib.U_Hyper_Type(Raw_sv32_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv4, Last);
         Position := Last + 1;
         if Raw_sv32_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv32.sv4 := Lib.Hyper_Type(Raw_sv32_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv5, Last);
         Position := Last + 1;
         if Raw_sv32_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv32.sv5 := Float(Raw_sv32_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv6, Last);
         Position := Last + 1;
         if Raw_sv32_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv32.sv6 := Double(Raw_sv32_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv7, Last);
         Position := Last + 1;
         if Raw_sv32_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv32.sv7 := null(Raw_sv32_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv32_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv32_sv8_Size);
         else
            sv32_sv8_Size := 0;
         end if;
         if sv32_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv13, Last);
         Position := Last + 1;
         if Raw_sv32_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv32.sv13 := v24'Val(Raw_sv32_sv13);
         else
            Decode_Status := Malformed;
            sv32.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv14, Last);
         Position := Last + 1;
         if Raw_sv32_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv32.sv14 := v25'Val(Raw_sv32_sv14);
         else
            Decode_Status := Malformed;
            sv32.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv15, Last);
         Position := Last + 1;
         if Raw_sv32_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv32.sv15 := v26'Val(Raw_sv32_sv15);
         else
            Decode_Status := Malformed;
            sv32.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv16, Last);
         Position := Last + 1;
         if Raw_sv32_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv32.sv16 := v27'Val(Raw_sv32_sv16);
         else
            Decode_Status := Malformed;
            sv32.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv32_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv32_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv32.sv17.sav1(I) := av1(Raw_sv32_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv32_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv32.sv17.sv1 := Integer(Raw_sv32_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv32_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv32.sv18.sv1 := Integer(Raw_sv32_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv19, Last);
         Position := Last + 1;
         if Raw_sv32_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv32.sv19 := v98(Raw_sv32_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv20, Last);
         Position := Last + 1;
         if Raw_sv32_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv32.sv20 := v99(Raw_sv32_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv33.sv1.sv1 := Lib.Quadruple_Octet(Raw_sv33_sv1_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv2, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv1.sv2 := Integer(Raw_sv33_sv1_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv3, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv33.sv1.sv3 := Lib.U_Hyper_Type(Raw_sv33_sv1_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv4, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv33.sv1.sv4 := Lib.Hyper_Type(Raw_sv33_sv1_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv5, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv33.sv1.sv5 := Float(Raw_sv33_sv1_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv6, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv33.sv1.sv6 := Double(Raw_sv33_sv1_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv7, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv33.sv1.sv7 := null(Raw_sv33_sv1_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv33_sv1_sv8_Size);
         else
            sv33_sv1_sv8_Size := 0;
         end if;
         if sv33_sv1_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv13, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv33.sv1.sv13 := v24'Val(Raw_sv33_sv1_sv13);
         else
            Decode_Status := Malformed;
            sv33.sv1.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv14, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv33.sv1.sv14 := v25'Val(Raw_sv33_sv1_sv14);
         else
            Decode_Status := Malformed;
            sv33.sv1.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv15, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv33.sv1.sv15 := v26'Val(Raw_sv33_sv1_sv15);
         else
            Decode_Status := Malformed;
            sv33.sv1.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv16, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv33.sv1.sv16 := v27'Val(Raw_sv33_sv1_sv16);
         else
            Decode_Status := Malformed;
            sv33.sv1.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv33_sv1_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv33.sv1.sv17.sav1(I) := av1(Raw_sv33_sv1_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv1.sv17.sv1 := Integer(Raw_sv33_sv1_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv1.sv18.sv1 := Integer(Raw_sv33_sv1_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv19, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv33.sv1.sv19 := v98(Raw_sv33_sv1_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv20, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv33.sv1.sv20 := v99(Raw_sv33_sv1_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv33.sv2.sv1 := Lib.Quadruple_Octet(Raw_sv33_sv2_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv2, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv2.sv2 := Integer(Raw_sv33_sv2_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv3, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv33.sv2.sv3 := Lib.U_Hyper_Type(Raw_sv33_sv2_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv4, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv33.sv2.sv4 := Lib.Hyper_Type(Raw_sv33_sv2_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv5, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv33.sv2.sv5 := Float(Raw_sv33_sv2_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv6, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv33.sv2.sv6 := Double(Raw_sv33_sv2_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv7, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv33.sv2.sv7 := null(Raw_sv33_sv2_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv33_sv2_sv8_Size);
         else
            sv33_sv2_sv8_Size := 0;
         end if;
         if sv33_sv2_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv13, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv33.sv2.sv13 := v24'Val(Raw_sv33_sv2_sv13);
         else
            Decode_Status := Malformed;
            sv33.sv2.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv14, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv33.sv2.sv14 := v25'Val(Raw_sv33_sv2_sv14);
         else
            Decode_Status := Malformed;
            sv33.sv2.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv15, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv33.sv2.sv15 := v26'Val(Raw_sv33_sv2_sv15);
         else
            Decode_Status := Malformed;
            sv33.sv2.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv16, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv33.sv2.sv16 := v27'Val(Raw_sv33_sv2_sv16);
         else
            Decode_Status := Malformed;
            sv33.sv2.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv33_sv2_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv33.sv2.sv17.sav1(I) := av1(Raw_sv33_sv2_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv2.sv17.sv1 := Integer(Raw_sv33_sv2_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv2.sv18.sv1 := Integer(Raw_sv33_sv2_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv19, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv33.sv2.sv19 := v98(Raw_sv33_sv2_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv20, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv33.sv2.sv20 := v99(Raw_sv33_sv2_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv34, Last);
         Position := Last + 1;
         if Raw_sv34 in XDR.XDR_Unsigned(v34'First) .. XDR.XDR_Unsigned(v34'Last) then
            sv34 := v34(Raw_sv34);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv35, Last);
         Position := Last + 1;
         if Raw_sv35 in XDR.XDR_Integer(v35'First) .. XDR.XDR_Integer(v35'Last) then
            sv35 := v35(Raw_sv35);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv36, Last);
         Position := Last + 1;
         if Raw_sv36 in XDR.XDR_Unsigned_Hyper(v36'First) .. XDR.XDR_Unsigned_Hyper(v36'Last) then
            sv36 := v36(Raw_sv36);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv37, Last);
         Position := Last + 1;
         if Raw_sv37 in XDR.XDR_Hyper(v37'First) .. XDR.XDR_Hyper(v37'Last) then
            sv37 := v37(Raw_sv37);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv38, Last);
         Position := Last + 1;
         if Raw_sv38 in XDR.XDR_Float(v38'First) .. XDR.XDR_Float(v38'Last) then
            sv38 := v38(Raw_sv38);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv39, Last);
         Position := Last + 1;
         if Raw_sv39 in XDR.XDR_Double(v39'First) .. XDR.XDR_Double(v39'Last) then
            sv39 := v39(Raw_sv39);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv41, Last);
         Position := Last + 1;
         if Raw_sv41 in v41'Pos(v41'First) .. v41'Pos(v41'Last) then
            sv41 := v41'Val(Raw_sv41);
         else
            Decode_Status := Malformed;
            sv41 := v41'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv42_Size, Last);
         Position := Last + 1;
         if Raw_sv42_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv42_Size := Natural(Raw_sv42_Size);
         else
            sv42_Size := 0;
         end if;
         if sv42_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv42(sv42'First .. sv42'First + (sv42_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv43_Size, Last);
         Position := Last + 1;
         if Raw_sv43_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv43_Size := Natural(Raw_sv43_Size);
         else
            sv43_Size := 0;
         end if;
         if sv43_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv43(sv43'First .. sv43'First + (sv43_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv44, Last);
         Position := Last + 1;
         if Raw_sv44 in v44'Pos(v44'First) .. v44'Pos(v44'Last) then
            sv44 := v44'Val(Raw_sv44);
         else
            Decode_Status := Malformed;
            sv44 := v44'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv47, Last);
         Position := Last + 1;
         if Raw_sv47 in XDR.XDR_Unsigned(v47'First) .. XDR.XDR_Unsigned(v47'Last) then
            sv47 := v47(Raw_sv47);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv48, Last);
         Position := Last + 1;
         if Raw_sv48 in XDR.XDR_Integer(v48'First) .. XDR.XDR_Integer(v48'Last) then
            sv48 := v48(Raw_sv48);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv49, Last);
         Position := Last + 1;
         if Raw_sv49 in XDR.XDR_Unsigned_Hyper(v49'First) .. XDR.XDR_Unsigned_Hyper(v49'Last) then
            sv49 := v49(Raw_sv49);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv50, Last);
         Position := Last + 1;
         if Raw_sv50 in XDR.XDR_Hyper(v50'First) .. XDR.XDR_Hyper(v50'Last) then
            sv50 := v50(Raw_sv50);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv51, Last);
         Position := Last + 1;
         if Raw_sv51 in XDR.XDR_Float(v51'First) .. XDR.XDR_Float(v51'Last) then
            sv51 := v51(Raw_sv51);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv52, Last);
         Position := Last + 1;
         if Raw_sv52 in XDR.XDR_Double(v52'First) .. XDR.XDR_Double(v52'Last) then
            sv52 := v52(Raw_sv52);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv53, Last);
         Position := Last + 1;
         sv53 := v53'Val(XDR.XDR_Boolean'Pos(Raw_sv53));
         Decode_Status := Success;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv54_Size, Last);
         Position := Last + 1;
         if Raw_sv54_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv54_Size := Natural(Raw_sv54_Size);
         else
            sv54_Size := 0;
         end if;
         if sv54_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv54(sv54'First .. sv54'First + (sv54_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv56, Last);
         Position := Last + 1;
         if Raw_sv56 in v56'Pos(v56'First) .. v56'Pos(v56'Last) then
            sv56 := v56'Val(Raw_sv56);
         else
            Decode_Status := Malformed;
            sv56 := v56'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv57, Last);
         Position := Last + 1;
         if Raw_sv57 in v57'Pos(v57'First) .. v57'Pos(v57'Last) then
            sv57 := v57'Val(Raw_sv57);
         else
            Decode_Status := Malformed;
            sv57 := v57'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv58, Last);
         Position := Last + 1;
         if Raw_sv58 in v58'Pos(v58'First) .. v58'Pos(v58'Last) then
            sv58 := v58'Val(Raw_sv58);
         else
            Decode_Status := Malformed;
            sv58 := v58'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv59, Last);
         Position := Last + 1;
         if Raw_sv59 in v59'Pos(v59'First) .. v59'Pos(v59'Last) then
            sv59 := v59'Val(Raw_sv59);
         else
            Decode_Status := Malformed;
            sv59 := v59'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv60, Last);
         Position := Last + 1;
         if Raw_sv60 in v60'Pos(v60'First) .. v60'Pos(v60'Last) then
            sv60 := v60'Val(Raw_sv60);
         else
            Decode_Status := Malformed;
            sv60 := v60'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv61, Last);
         Position := Last + 1;
         if Raw_sv61 in v61'Pos(v61'First) .. v61'Pos(v61'Last) then
            sv61 := v61'Val(Raw_sv61);
         else
            Decode_Status := Malformed;
            sv61 := v61'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv62_sv1, Last);
         Position := Last + 1;
         if Raw_sv62_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv62.sv1 := Integer(Raw_sv62_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv1, Last);
         Position := Last + 1;
         if Raw_sv63_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv63.sv1 := Lib.Quadruple_Octet(Raw_sv63_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv2, Last);
         Position := Last + 1;
         if Raw_sv63_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv63.sv2 := Integer(Raw_sv63_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv3, Last);
         Position := Last + 1;
         if Raw_sv63_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv63.sv3 := Lib.U_Hyper_Type(Raw_sv63_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv4, Last);
         Position := Last + 1;
         if Raw_sv63_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv63.sv4 := Lib.Hyper_Type(Raw_sv63_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv5, Last);
         Position := Last + 1;
         if Raw_sv63_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv63.sv5 := Float(Raw_sv63_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv6, Last);
         Position := Last + 1;
         if Raw_sv63_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv63.sv6 := Double(Raw_sv63_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv7, Last);
         Position := Last + 1;
         if Raw_sv63_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv63.sv7 := null(Raw_sv63_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv63_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv63_sv8_Size);
         else
            sv63_sv8_Size := 0;
         end if;
         if sv63_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv13, Last);
         Position := Last + 1;
         if Raw_sv63_sv13 in v60'Pos(v60'First) .. v60'Pos(v60'Last) then
            sv63.sv13 := v60'Val(Raw_sv63_sv13);
         else
            Decode_Status := Malformed;
            sv63.sv13 := v60'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv14, Last);
         Position := Last + 1;
         if Raw_sv63_sv14 in v61'Pos(v61'First) .. v61'Pos(v61'Last) then
            sv63.sv14 := v61'Val(Raw_sv63_sv14);
         else
            Decode_Status := Malformed;
            sv63.sv14 := v61'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv15_sv1, Last);
         Position := Last + 1;
         if Raw_sv63_sv15_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv63.sv15.sv1 := Integer(Raw_sv63_sv15_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv1, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv64.sv1.sv1 := Lib.Quadruple_Octet(Raw_sv64_sv1_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv2, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv64.sv1.sv2 := Integer(Raw_sv64_sv1_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv3, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv64.sv1.sv3 := Lib.U_Hyper_Type(Raw_sv64_sv1_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv4, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv64.sv1.sv4 := Lib.Hyper_Type(Raw_sv64_sv1_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv5, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv64.sv1.sv5 := Float(Raw_sv64_sv1_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv6, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv64.sv1.sv6 := Double(Raw_sv64_sv1_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv7, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv64.sv1.sv7 := null(Raw_sv64_sv1_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv64_sv1_sv8_Size);
         else
            sv64_sv1_sv8_Size := 0;
         end if;
         if sv64_sv1_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv13, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv13 in v60'Pos(v60'First) .. v60'Pos(v60'Last) then
            sv64.sv1.sv13 := v60'Val(Raw_sv64_sv1_sv13);
         else
            Decode_Status := Malformed;
            sv64.sv1.sv13 := v60'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv14, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv14 in v61'Pos(v61'First) .. v61'Pos(v61'Last) then
            sv64.sv1.sv14 := v61'Val(Raw_sv64_sv1_sv14);
         else
            Decode_Status := Malformed;
            sv64.sv1.sv14 := v61'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv15_sv1, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv15_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv64.sv1.sv15.sv1 := Integer(Raw_sv64_sv1_sv15_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv1, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv64.sv2.sv1 := Lib.Quadruple_Octet(Raw_sv64_sv2_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv2, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv64.sv2.sv2 := Integer(Raw_sv64_sv2_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv3, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv64.sv2.sv3 := Lib.U_Hyper_Type(Raw_sv64_sv2_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv4, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv64.sv2.sv4 := Lib.Hyper_Type(Raw_sv64_sv2_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv5, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv64.sv2.sv5 := Float(Raw_sv64_sv2_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv6, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv64.sv2.sv6 := Double(Raw_sv64_sv2_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv7, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv64.sv2.sv7 := null(Raw_sv64_sv2_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv64_sv2_sv8_Size);
         else
            sv64_sv2_sv8_Size := 0;
         end if;
         if sv64_sv2_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv13, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv13 in v60'Pos(v60'First) .. v60'Pos(v60'Last) then
            sv64.sv2.sv13 := v60'Val(Raw_sv64_sv2_sv13);
         else
            Decode_Status := Malformed;
            sv64.sv2.sv13 := v60'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv14, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv14 in v61'Pos(v61'First) .. v61'Pos(v61'Last) then
            sv64.sv2.sv14 := v61'Val(Raw_sv64_sv2_sv14);
         else
            Decode_Status := Malformed;
            sv64.sv2.sv14 := v61'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv15_sv1, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv15_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv64.sv2.sv15.sv1 := Integer(Raw_sv64_sv2_sv15_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv65, Last);
         Position := Last + 1;
         if Raw_sv65 in XDR.XDR_Unsigned(v65'First) .. XDR.XDR_Unsigned(v65'Last) then
            sv65 := v65(Raw_sv65);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv66, Last);
         Position := Last + 1;
         if Raw_sv66 in XDR.XDR_Integer(v66'First) .. XDR.XDR_Integer(v66'Last) then
            sv66 := v66(Raw_sv66);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv67, Last);
         Position := Last + 1;
         if Raw_sv67 in XDR.XDR_Unsigned_Hyper(v67'First) .. XDR.XDR_Unsigned_Hyper(v67'Last) then
            sv67 := v67(Raw_sv67);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv68, Last);
         Position := Last + 1;
         if Raw_sv68 in XDR.XDR_Hyper(v68'First) .. XDR.XDR_Hyper(v68'Last) then
            sv68 := v68(Raw_sv68);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv69, Last);
         Position := Last + 1;
         if Raw_sv69 in XDR.XDR_Float(v69'First) .. XDR.XDR_Float(v69'Last) then
            sv69 := v69(Raw_sv69);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv70, Last);
         Position := Last + 1;
         if Raw_sv70 in XDR.XDR_Double(v70'First) .. XDR.XDR_Double(v70'Last) then
            sv70 := v70(Raw_sv70);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv72_Size, Last);
         Position := Last + 1;
         if Raw_sv72_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv72_Size := Natural(Raw_sv72_Size);
         else
            sv72_Size := 0;
         end if;
         if sv72_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv72(sv72'First .. sv72'First + (sv72_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv73_Size, Last);
         Position := Last + 1;
         if Raw_sv73_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv73_Size := Natural(Raw_sv73_Size);
         else
            sv73_Size := 0;
         end if;
         if sv73_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv73(sv73'First .. sv73'First + (sv73_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv74, Last);
         Position := Last + 1;
         if Raw_sv74 in v74'Pos(v74'First) .. v74'Pos(v74'Last) then
            sv74 := v74'Val(Raw_sv74);
         else
            Decode_Status := Malformed;
            sv74 := v74'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv75, Last);
         Position := Last + 1;
         if Raw_sv75 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv75 := Lib.Quadruple_Octet(Raw_sv75);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv76, Last);
         Position := Last + 1;
         if Raw_sv76 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv76 := Integer(Raw_sv76);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv77, Last);
         Position := Last + 1;
         if Raw_sv77 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv77 := Lib.U_Hyper_Type(Raw_sv77);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv78, Last);
         Position := Last + 1;
         if Raw_sv78 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv78 := Lib.Hyper_Type(Raw_sv78);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv79, Last);
         Position := Last + 1;
         if Raw_sv79 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv79 := Float(Raw_sv79);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv80, Last);
         Position := Last + 1;
         if Raw_sv80 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv80 := Double(Raw_sv80);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv81, Last);
         Position := Last + 1;
         sv81 := Boolean'Val(XDR.XDR_Boolean'Pos(Raw_sv81));
         Decode_Status := Success;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv82_Size, Last);
         Position := Last + 1;
         if Raw_sv82_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv82_Size := Natural(Raw_sv82_Size);
         else
            sv82_Size := 0;
         end if;
         if sv82_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv82(sv82'First .. sv82'First + (sv82_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv84 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv85, Last);
         Position := Last + 1;
         if Raw_sv85 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv85);
            sv85 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv86'Length then
            XDR.Decode(Message.Payload, Position, sv86(sv86'First .. sv86'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv88, Last);
         Position := Last + 1;
         if Raw_sv88 in null'Pos(null'First) .. null'Pos(null'Last) then
            sv88 := null'Val(Raw_sv88);
         else
            Decode_Status := Malformed;
            sv88 := null'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv90_Size, Last);
         Position := Last + 1;
         if Raw_sv90_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv90_Size := Natural(Raw_sv90_Size);
         else
            sv90_Size := 0;
         end if;
         if sv90_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv90(sv90'First .. sv90'First + (sv90_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv92, Last);
         Position := Last + 1;
         if Raw_sv92 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv92 := v98(Raw_sv92);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv93, Last);
         if Raw_sv93 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv93 := v99(Raw_sv93);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
   end v79_Decode;

   function v80_Encode
      (Receiver_Domain : Domain_ID_Type;
      Receiver : Module_ID_Type;
      msav1 : av1;
      sv1 : v1;
      sv2 : v2;
      sv3 : v3;
      sv4 : v4;
      sv5 : v5;
      sv6 : v6;
      sv7 : v7;
      sv8 : v8;
      sv9 : v9;
      sv10 : v10;
      sv11 : v11;
      sv12 : v12;
      sv13 : v13;
      sv14 : v14;
      sv15 : v15;
      sv16 : v16;
      sv18 : v18;
      sv19 : v19;
      sv20 : v20;
      sv21 : v21;
      sv22 : v22;
      sv23 : v23;
      sv24 : v24;
      sv25 : v25;
      sv26 : v26;
      sv27 : v27;
      sv28 : v28;
      sv29 : v29;
      sv30 : v30;
      sv31 : v31;
      sv32 : v32;
      sv33 : v33;
      sv34 : v34;
      sv35 : v35;
      sv36 : v36;
      sv37 : v37;
      sv38 : v38;
      sv39 : v39;
      sv41 : v41;
      sv42 : v42;
      sv43 : v43;
      sv44 : v44;
      sv47 : v47;
      sv48 : v48;
      sv49 : v49;
      sv50 : v50;
      sv51 : v51;
      sv52 : v52;
      sv53 : v53;
      sv54 : v54;
      sv56 : v56;
      sv57 : v57;
      sv58 : v58;
      sv59 : v59;
      sv60 : v60;
      sv61 : v61;
      sv62 : v62;
      sv63 : v63;
      sv64 : v64;
      sv65 : v65;
      sv66 : v66;
      sv67 : v67;
      sv68 : v68;
      sv69 : v69;
      sv70 : v70;
      sv72 : v72;
      sv73 : v73;
      sv74 : v74;
      v80 : Lib.Quadruple_Octet;
      sv76 : Integer;
      v80 : Lib.U_Hyper_Type;
      sv78 : Lib.Hyper_Type;
      sv79 : Float;
      sv80 : Double;
      sv81 : Boolean;
      sv82 : String;
      sv83 : tai_kwon_do;
      sv84 : Ada.Real_Time.Time_Span;
      sv85 : Ada.Real_Time.Time;
      sv86 : CubedOS.Lib.Octet_Array;
      sv88 : CubedOS.Lib.Octet_Array;
      sv89 : String;
      sv91 : tai_kwon_doo_wop;
      sv92 : v98;
      sv93 : v99;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   is
      Message : Message_Record := Make_Empty_Message(
         Sender_Domain   => Domain_ID,
         Receiver_Domain => Receiver_Domain,
         Sender     => ID,
         Receiver   => Receiver,
         Request_ID   => 0,
         Message_ID => Message_Type'Pos(v80),
         Priority   => Priority);
      Position : XDR_Index_Type;
      Last : XDR_Index_Type;
      Interval : constant Duration := Ada.Real_Time.To_Duration(sv84);
      Seconds  : Ada.Real_Time.Seconds_Count;
      Fraction : Ada.Real_Time.Time_Span;
   begin
      
      Ada.Real_Time.Split(sv85, Seconds, Fraction);

      Position := 0;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(msav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Unsigned(sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv8), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv9), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv10), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv11), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv12), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv13), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv14), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean'Val(v15'Pos(sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv16'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv16, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv24)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv25)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv26)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv27)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv28.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv28.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv29.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv30.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv30.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv30.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv30.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv30.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv30.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv30.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v80.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v80.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v80.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v80.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv30.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv30.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv30.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv30.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv30.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv30.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv30.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv30.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv30.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv31.sv1.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv31.sv1.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv31.sv1.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv31.sv1.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv1.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv31.sv1.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv31.sv1.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v31.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v31.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v31.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v31.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv31.sv1.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv31.sv1.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv31.sv1.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv31.sv1.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv31.sv1.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv31.sv1.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv31.sv1.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv1.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv1.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv31.sv2.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv31.sv2.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv31.sv2.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv31.sv2.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv2.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv31.sv2.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv31.sv2.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v31.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v31.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v31.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v31.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv31.sv2.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv31.sv2.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv31.sv2.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv31.sv2.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv31.sv2.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv31.sv2.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv31.sv2.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv2.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv31.sv2.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv32.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv32.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv32.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv32.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv32.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv32.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv32.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v80.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v80.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v80.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v80.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv32.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv32.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv32.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv32.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv32.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv32.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv32.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv32.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv32.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv33.sv1.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv33.sv1.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv33.sv1.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv33.sv1.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv1.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv33.sv1.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv33.sv1.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v33.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v33.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v33.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v33.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv33.sv1.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv33.sv1.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv33.sv1.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv33.sv1.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv33.sv1.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv33.sv1.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv33.sv1.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv1.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv1.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv33.sv2.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv33.sv2.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv33.sv2.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv33.sv2.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv2.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv33.sv2.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv33.sv2.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v33.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v33.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v33.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v33.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v24'Pos(sv33.sv2.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v25'Pos(sv33.sv2.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v26'Pos(sv33.sv2.sv15)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v27'Pos(sv33.sv2.sv16)), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 1000 loop
         XDR.Encode(XDR.XDR_Unsigned(sv33.sv2.sv17.sav1(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Integer(sv33.sv2.sv17.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv33.sv2.sv18.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv2.sv19), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv33.sv2.sv20), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv34), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv35), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv36), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv37), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv38), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv39), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv42'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv42, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv43'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv43, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv47), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv48), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv49), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv50), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv51), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv52), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean'Val(v53'Pos(sv53)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv54'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv54, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v60'Pos(sv60)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v61'Pos(sv61)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv62.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv63.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv63.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv63.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv63.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv63.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv63.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv63.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v80.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v80.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v80.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v80.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v60'Pos(sv63.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v61'Pos(sv63.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv63.sv15.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv64.sv1.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv64.sv1.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv64.sv1.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv64.sv1.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv64.sv1.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv64.sv1.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv64.sv1.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v64.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v64.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v64.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v64.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v60'Pos(sv64.sv1.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v61'Pos(sv64.sv1.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv64.sv1.sv15.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv64.sv2.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv64.sv2.sv2), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv64.sv2.sv3), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv64.sv2.sv4), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv64.sv2.sv5), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv64.sv2.sv6), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean(sv64.sv2.sv7), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v64.sv8'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v64.sv8, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v64.sv12'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(v64.sv12, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v60'Pos(sv64.sv2.sv13)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(v61'Pos(sv64.sv2.sv14)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv64.sv2.sv15.sv1), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv65), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv66), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv67), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv68), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv69), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv70), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv72'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv72, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv73'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv73, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv75), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(sv76), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(sv77), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Hyper(sv78), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv79), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Double(sv80), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean'Val(Boolean'Pos(sv81)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv82'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv82, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(1000*Interval), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Seconds), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv86'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv86, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(sv89'Length), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(sv89, Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv92), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Float(sv93), Message.Payload, Position, Last);
      Position := Last + 1;
      Message.Size := Position;
      return Message;
   end v80_Encode;

   procedure v80_Decode
      (Message : in  Message_Record;
      msav1 : out av1;
      sv1 : out v1;
      sv2 : out v2;
      sv3 : out v3;
      sv4 : out v4;
      sv5 : out v5;
      sv6 : out v6;
      sv7 : out v7;
      sv8 : out v8;
      sv9 : out v9;
      sv10 : out v10;
      sv11 : out v11;
      sv12 : out v12;
      sv13 : out v13;
      sv14 : out v14;
      sv15 : out v15;
      sv16 : out v16;
      sv18 : out v18;
      sv19 : out v19;
      sv20 : out v20;
      sv21 : out v21;
      sv22 : out v22;
      sv23 : out v23;
      sv24 : out v24;
      sv25 : out v25;
      sv26 : out v26;
      sv27 : out v27;
      sv28 : out v28;
      sv29 : out v29;
      sv30 : out v30;
      sv31 : out v31;
      sv32 : out v32;
      sv33 : out v33;
      sv34 : out v34;
      sv35 : out v35;
      sv36 : out v36;
      sv37 : out v37;
      sv38 : out v38;
      sv39 : out v39;
      sv41 : out v41;
      sv42 : out v42;
      sv43 : out v43;
      sv44 : out v44;
      sv47 : out v47;
      sv48 : out v48;
      sv49 : out v49;
      sv50 : out v50;
      sv51 : out v51;
      sv52 : out v52;
      sv53 : out v53;
      sv54 : out v54;
      sv56 : out v56;
      sv57 : out v57;
      sv58 : out v58;
      sv59 : out v59;
      sv60 : out v60;
      sv61 : out v61;
      sv62 : out v62;
      sv63 : out v63;
      sv64 : out v64;
      sv65 : out v65;
      sv66 : out v66;
      sv67 : out v67;
      sv68 : out v68;
      sv69 : out v69;
      sv70 : out v70;
      sv72 : out v72;
      sv73 : out v73;
      sv74 : out v74;
      v80 : out Lib.Quadruple_Octet;
      sv76 : out Integer;
      v80 : out Lib.U_Hyper_Type;
      sv78 : out Lib.Hyper_Type;
      sv79 : out Float;
      sv80 : out Double;
      sv81 : out Boolean;
      sv82 : out String;
      sv82_Size : out Natural;
      sv83 : out tai_kwon_do;
      sv84 : out Ada.Real_Time.Time_Span;
      sv85 : out Ada.Real_Time.Time;
      sv86 : out CubedOS.Lib.Octet_Array;
      Size : out CubedOS.Lib.Octet_Array_Count;
      sv88 : out CubedOS.Lib.Octet_Array;
      Size : out CubedOS.Lib.Octet_Array_Count;
      sv89 : out String;
      sv89_Size : out Natural;
      sv91 : out tai_kwon_doo_wop;
      sv92 : out v98;
      sv93 : out v99;
      Decode_Status : out Message_Status_Type)
   is
      Position : XDR_Index_Type;
      Raw_msav1   : XDR.XDR_Unsigned;
      Raw_sv1   : XDR.XDR_Unsigned;
      Raw_sv2   : XDR.XDR_Unsigned;
      Raw_sv3   : XDR.XDR_Unsigned;
      Raw_sv4   : XDR.XDR_Integer;
      Raw_sv5   : XDR.XDR_Integer;
      Raw_sv6   : XDR.XDR_Integer;
      Raw_sv7   : XDR.XDR_Unsigned_Hyper;
      Raw_sv8   : XDR.XDR_Unsigned_Hyper;
      Raw_sv9   : XDR.XDR_Unsigned_Hyper;
      Raw_sv10   : XDR.XDR_Hyper;
      Raw_sv11   : XDR.XDR_Hyper;
      Raw_sv12   : XDR.XDR_Hyper;
      Raw_sv13   : XDR.XDR_Float;
      Raw_sv14   : XDR.XDR_Double;
      Raw_sv15   : XDR.XDR_Boolean;
      Raw_sv16_Size : XDR.XDR_Unsigned;
      Raw_sv18   : XDR.XDR_Unsigned;
      Raw_sv19   : XDR.XDR_Unsigned;
      Raw_sv20   : XDR.XDR_Unsigned;
      Raw_sv21   : XDR.XDR_Unsigned;
      Raw_sv22   : XDR.XDR_Unsigned;
      Raw_sv23   : XDR.XDR_Unsigned;
      Raw_sv24 : XDR.XDR_Unsigned;
      Raw_sv25 : XDR.XDR_Unsigned;
      Raw_sv26 : XDR.XDR_Unsigned;
      Raw_sv27 : XDR.XDR_Unsigned;
      Raw_sv28_sav1   : XDR.XDR_Unsigned;
      Raw_sv28_sv1   : XDR.XDR_Integer;
      Raw_sv29_sv1   : XDR.XDR_Integer;
      Raw_sv30_sv1   : XDR.XDR_Unsigned;
      Raw_sv30_sv2   : XDR.XDR_Integer;
      Raw_sv30_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv30_sv4   : XDR.XDR_Hyper;
      Raw_sv30_sv5   : XDR.XDR_Float;
      Raw_sv30_sv6   : XDR.XDR_Double;
      Raw_sv30_sv7   : XDR.XDR_Boolean;
      Raw_sv30_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv30_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv30_sv13 : XDR.XDR_Unsigned;
      Raw_sv30_sv14 : XDR.XDR_Unsigned;
      Raw_sv30_sv15 : XDR.XDR_Unsigned;
      Raw_sv30_sv16 : XDR.XDR_Unsigned;
      Raw_sv30_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv30_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv30_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv30_sv19   : XDR.XDR_Float;
      Raw_sv30_sv20   : XDR.XDR_Float;
      Raw_sv31_sv1_sv1   : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv2   : XDR.XDR_Integer;
      Raw_sv31_sv1_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv31_sv1_sv4   : XDR.XDR_Hyper;
      Raw_sv31_sv1_sv5   : XDR.XDR_Float;
      Raw_sv31_sv1_sv6   : XDR.XDR_Double;
      Raw_sv31_sv1_sv7   : XDR.XDR_Boolean;
      Raw_sv31_sv1_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv31_sv1_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv13 : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv14 : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv15 : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv16 : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv31_sv1_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv31_sv1_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv31_sv1_sv19   : XDR.XDR_Float;
      Raw_sv31_sv1_sv20   : XDR.XDR_Float;
      Raw_sv31_sv2_sv1   : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv2   : XDR.XDR_Integer;
      Raw_sv31_sv2_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv31_sv2_sv4   : XDR.XDR_Hyper;
      Raw_sv31_sv2_sv5   : XDR.XDR_Float;
      Raw_sv31_sv2_sv6   : XDR.XDR_Double;
      Raw_sv31_sv2_sv7   : XDR.XDR_Boolean;
      Raw_sv31_sv2_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv31_sv2_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv13 : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv14 : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv15 : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv16 : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv31_sv2_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv31_sv2_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv31_sv2_sv19   : XDR.XDR_Float;
      Raw_sv31_sv2_sv20   : XDR.XDR_Float;
      Raw_sv32_sv1   : XDR.XDR_Unsigned;
      Raw_sv32_sv2   : XDR.XDR_Integer;
      Raw_sv32_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv32_sv4   : XDR.XDR_Hyper;
      Raw_sv32_sv5   : XDR.XDR_Float;
      Raw_sv32_sv6   : XDR.XDR_Double;
      Raw_sv32_sv7   : XDR.XDR_Boolean;
      Raw_sv32_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv32_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv32_sv13 : XDR.XDR_Unsigned;
      Raw_sv32_sv14 : XDR.XDR_Unsigned;
      Raw_sv32_sv15 : XDR.XDR_Unsigned;
      Raw_sv32_sv16 : XDR.XDR_Unsigned;
      Raw_sv32_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv32_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv32_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv32_sv19   : XDR.XDR_Float;
      Raw_sv32_sv20   : XDR.XDR_Float;
      Raw_sv33_sv1_sv1   : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv2   : XDR.XDR_Integer;
      Raw_sv33_sv1_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv33_sv1_sv4   : XDR.XDR_Hyper;
      Raw_sv33_sv1_sv5   : XDR.XDR_Float;
      Raw_sv33_sv1_sv6   : XDR.XDR_Double;
      Raw_sv33_sv1_sv7   : XDR.XDR_Boolean;
      Raw_sv33_sv1_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv33_sv1_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv13 : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv14 : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv15 : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv16 : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv33_sv1_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv33_sv1_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv33_sv1_sv19   : XDR.XDR_Float;
      Raw_sv33_sv1_sv20   : XDR.XDR_Float;
      Raw_sv33_sv2_sv1   : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv2   : XDR.XDR_Integer;
      Raw_sv33_sv2_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv33_sv2_sv4   : XDR.XDR_Hyper;
      Raw_sv33_sv2_sv5   : XDR.XDR_Float;
      Raw_sv33_sv2_sv6   : XDR.XDR_Double;
      Raw_sv33_sv2_sv7   : XDR.XDR_Boolean;
      Raw_sv33_sv2_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv33_sv2_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv13 : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv14 : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv15 : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv16 : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv17_sav1   : XDR.XDR_Unsigned;
      Raw_sv33_sv2_sv17_sv1   : XDR.XDR_Integer;
      Raw_sv33_sv2_sv18_sv1   : XDR.XDR_Integer;
      Raw_sv33_sv2_sv19   : XDR.XDR_Float;
      Raw_sv33_sv2_sv20   : XDR.XDR_Float;
      Raw_sv34   : XDR.XDR_Unsigned;
      Raw_sv35   : XDR.XDR_Integer;
      Raw_sv36   : XDR.XDR_Unsigned_Hyper;
      Raw_sv37   : XDR.XDR_Hyper;
      Raw_sv38   : XDR.XDR_Float;
      Raw_sv39   : XDR.XDR_Double;
      Raw_sv41   : XDR.XDR_Unsigned;
      Raw_sv42_Size : XDR.XDR_Unsigned;
      Raw_sv43_Size : XDR.XDR_Unsigned;
      Raw_sv44   : XDR.XDR_Unsigned;
      Raw_sv47   : XDR.XDR_Unsigned;
      Raw_sv48   : XDR.XDR_Integer;
      Raw_sv49   : XDR.XDR_Unsigned_Hyper;
      Raw_sv50   : XDR.XDR_Hyper;
      Raw_sv51   : XDR.XDR_Float;
      Raw_sv52   : XDR.XDR_Double;
      Raw_sv53   : XDR.XDR_Boolean;
      Raw_sv54_Size : XDR.XDR_Unsigned;
      Raw_sv56   : XDR.XDR_Unsigned;
      Raw_sv57   : XDR.XDR_Unsigned;
      Raw_sv58   : XDR.XDR_Unsigned;
      Raw_sv59   : XDR.XDR_Unsigned;
      Raw_sv60 : XDR.XDR_Unsigned;
      Raw_sv61 : XDR.XDR_Unsigned;
      Raw_sv62_sv1   : XDR.XDR_Integer;
      Raw_sv63_sv1   : XDR.XDR_Unsigned;
      Raw_sv63_sv2   : XDR.XDR_Integer;
      Raw_sv63_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv63_sv4   : XDR.XDR_Hyper;
      Raw_sv63_sv5   : XDR.XDR_Float;
      Raw_sv63_sv6   : XDR.XDR_Double;
      Raw_sv63_sv7   : XDR.XDR_Boolean;
      Raw_sv63_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv63_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv63_sv13 : XDR.XDR_Unsigned;
      Raw_sv63_sv14 : XDR.XDR_Unsigned;
      Raw_sv63_sv15_sv1   : XDR.XDR_Integer;
      Raw_sv64_sv1_sv1   : XDR.XDR_Unsigned;
      Raw_sv64_sv1_sv2   : XDR.XDR_Integer;
      Raw_sv64_sv1_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv64_sv1_sv4   : XDR.XDR_Hyper;
      Raw_sv64_sv1_sv5   : XDR.XDR_Float;
      Raw_sv64_sv1_sv6   : XDR.XDR_Double;
      Raw_sv64_sv1_sv7   : XDR.XDR_Boolean;
      Raw_sv64_sv1_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv64_sv1_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv64_sv1_sv13 : XDR.XDR_Unsigned;
      Raw_sv64_sv1_sv14 : XDR.XDR_Unsigned;
      Raw_sv64_sv1_sv15_sv1   : XDR.XDR_Integer;
      Raw_sv64_sv2_sv1   : XDR.XDR_Unsigned;
      Raw_sv64_sv2_sv2   : XDR.XDR_Integer;
      Raw_sv64_sv2_sv3   : XDR.XDR_Unsigned_Hyper;
      Raw_sv64_sv2_sv4   : XDR.XDR_Hyper;
      Raw_sv64_sv2_sv5   : XDR.XDR_Float;
      Raw_sv64_sv2_sv6   : XDR.XDR_Double;
      Raw_sv64_sv2_sv7   : XDR.XDR_Boolean;
      Raw_sv64_sv2_sv8_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv64_sv2_sv11   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv64_sv2_sv13 : XDR.XDR_Unsigned;
      Raw_sv64_sv2_sv14 : XDR.XDR_Unsigned;
      Raw_sv64_sv2_sv15_sv1   : XDR.XDR_Integer;
      Raw_sv65   : XDR.XDR_Unsigned;
      Raw_sv66   : XDR.XDR_Integer;
      Raw_sv67   : XDR.XDR_Unsigned_Hyper;
      Raw_sv68   : XDR.XDR_Hyper;
      Raw_sv69   : XDR.XDR_Float;
      Raw_sv70   : XDR.XDR_Double;
      Raw_sv72_Size : XDR.XDR_Unsigned;
      Raw_sv73_Size : XDR.XDR_Unsigned;
      Raw_sv74   : XDR.XDR_Unsigned;
      Raw_sv75   : XDR.XDR_Unsigned;
      Raw_sv76   : XDR.XDR_Integer;
      Raw_sv77   : XDR.XDR_Unsigned_Hyper;
      Raw_sv78   : XDR.XDR_Hyper;
      Raw_sv79   : XDR.XDR_Float;
      Raw_sv80   : XDR.XDR_Double;
      Raw_sv81   : XDR.XDR_Boolean;
      Raw_sv82_Size : XDR.XDR_Unsigned;
      Raw_Interval  : XDR.XDR_Unsigned;
      Seconds : Ada.Real_Time.Seconds_Count;
      Raw_sv85   : XDR.XDR_Unsigned;
      Raw_Size : XDR.XDR_Unsigned;
      Raw_sv88   : XDR.XDR_Unsigned;
      Raw_sv89_Size : XDR.XDR_Unsigned;
      Raw_sv92   : XDR.XDR_Float;
      Raw_sv93   : XDR.XDR_Float;
      Last : XDR_Index_Type;
   begin
      pragma Warnings
         (Off, "unused assignment to ""Last""", Reason => "The last value of Last is not needed");
      Decode_Status := Success;
      for I in Integer range 0 .. 1000 loop
         msav1(I) := av1'First;
      end loop;
      sv1 := v1'First;
      sv2 := v2'First;
      sv3 := v3'First;
      sv4 := v4'First;
      sv5 := v5'First;
      sv6 := v6'First;
      sv7 := v7'First;
      sv8 := v8'First;
      sv9 := v9'First;
      sv10 := v10'First;
      sv11 := v11'First;
      sv12 := v12'First;
      sv13 := v13'First;
      sv14 := v14'First;
      sv15 := v15'First;
      sv16 := (others => ' ');
      for I in Integer range 0 .. 1000 loop
         sv28.sav1(I) := av1'First;
      end loop;
      sv28.sv1 := Integer(XDR.XDR_Integer'First);
      sv29.sv1 := Integer(XDR.XDR_Integer'First);
      sv30.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv30.sv2 := Integer(XDR.XDR_Integer'First);
      sv30.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv30.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv30.sv5 := Float'First;
      sv30.sv6 := Double'First;
      sv30.sv7 := Boolean'First;
      sv30.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv30.sv12 := (others => 0);
      Size := 0;
      sv30.sv13 := v24'First;
      sv30.sv14 := v25'First;
      sv30.sv15 := v26'First;
      sv30.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv30.sv17.sav1(I) := av1'First;
      end loop;
      sv30.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv30.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv30.sv19 := v98'First;
      sv30.sv20 := v99'First;
      sv31.sv1.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv31.sv1.sv2 := Integer(XDR.XDR_Integer'First);
      sv31.sv1.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv31.sv1.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv31.sv1.sv5 := Float'First;
      sv31.sv1.sv6 := Double'First;
      sv31.sv1.sv7 := Boolean'First;
      sv31.sv1.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv31.sv1.sv12 := (others => 0);
      Size := 0;
      sv31.sv1.sv13 := v24'First;
      sv31.sv1.sv14 := v25'First;
      sv31.sv1.sv15 := v26'First;
      sv31.sv1.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv31.sv1.sv17.sav1(I) := av1'First;
      end loop;
      sv31.sv1.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv31.sv1.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv31.sv1.sv19 := v98'First;
      sv31.sv1.sv20 := v99'First;
      sv31.sv2.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv31.sv2.sv2 := Integer(XDR.XDR_Integer'First);
      sv31.sv2.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv31.sv2.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv31.sv2.sv5 := Float'First;
      sv31.sv2.sv6 := Double'First;
      sv31.sv2.sv7 := Boolean'First;
      sv31.sv2.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv31.sv2.sv12 := (others => 0);
      Size := 0;
      sv31.sv2.sv13 := v24'First;
      sv31.sv2.sv14 := v25'First;
      sv31.sv2.sv15 := v26'First;
      sv31.sv2.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv31.sv2.sv17.sav1(I) := av1'First;
      end loop;
      sv31.sv2.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv31.sv2.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv31.sv2.sv19 := v98'First;
      sv31.sv2.sv20 := v99'First;
      sv32.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv32.sv2 := Integer(XDR.XDR_Integer'First);
      sv32.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv32.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv32.sv5 := Float'First;
      sv32.sv6 := Double'First;
      sv32.sv7 := Boolean'First;
      sv32.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv32.sv12 := (others => 0);
      Size := 0;
      sv32.sv13 := v24'First;
      sv32.sv14 := v25'First;
      sv32.sv15 := v26'First;
      sv32.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv32.sv17.sav1(I) := av1'First;
      end loop;
      sv32.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv32.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv32.sv19 := v98'First;
      sv32.sv20 := v99'First;
      sv33.sv1.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv33.sv1.sv2 := Integer(XDR.XDR_Integer'First);
      sv33.sv1.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv33.sv1.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv33.sv1.sv5 := Float'First;
      sv33.sv1.sv6 := Double'First;
      sv33.sv1.sv7 := Boolean'First;
      sv33.sv1.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv33.sv1.sv12 := (others => 0);
      Size := 0;
      sv33.sv1.sv13 := v24'First;
      sv33.sv1.sv14 := v25'First;
      sv33.sv1.sv15 := v26'First;
      sv33.sv1.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv33.sv1.sv17.sav1(I) := av1'First;
      end loop;
      sv33.sv1.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv33.sv1.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv33.sv1.sv19 := v98'First;
      sv33.sv1.sv20 := v99'First;
      sv33.sv2.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv33.sv2.sv2 := Integer(XDR.XDR_Integer'First);
      sv33.sv2.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv33.sv2.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv33.sv2.sv5 := Float'First;
      sv33.sv2.sv6 := Double'First;
      sv33.sv2.sv7 := Boolean'First;
      sv33.sv2.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv33.sv2.sv12 := (others => 0);
      Size := 0;
      sv33.sv2.sv13 := v24'First;
      sv33.sv2.sv14 := v25'First;
      sv33.sv2.sv15 := v26'First;
      sv33.sv2.sv16 := v27'First;
      for I in Integer range 0 .. 1000 loop
         sv33.sv2.sv17.sav1(I) := av1'First;
      end loop;
      sv33.sv2.sv17.sv1 := Integer(XDR.XDR_Integer'First);
      sv33.sv2.sv18.sv1 := Integer(XDR.XDR_Integer'First);
      sv33.sv2.sv19 := v98'First;
      sv33.sv2.sv20 := v99'First;
      sv34 := v34'First;
      sv35 := v35'First;
      sv36 := v36'First;
      sv37 := v37'First;
      sv38 := v38'First;
      sv39 := v39'First;
      sv42 := (others => ' ');
      sv43 := (others => ' ');
      sv47 := v47'First;
      sv48 := v48'First;
      sv49 := v49'First;
      sv50 := v50'First;
      sv51 := v51'First;
      sv52 := v52'First;
      sv53 := v53'First;
      sv54 := (others => ' ');
      sv62.sv1 := Integer(XDR.XDR_Integer'First);
      sv63.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv63.sv2 := Integer(XDR.XDR_Integer'First);
      sv63.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv63.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv63.sv5 := Float'First;
      sv63.sv6 := Double'First;
      sv63.sv7 := Boolean'First;
      sv63.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv63.sv12 := (others => 0);
      Size := 0;
      sv63.sv13 := v60'First;
      sv63.sv14 := v61'First;
      sv63.sv15.sv1 := Integer(XDR.XDR_Integer'First);
      sv64.sv1.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv64.sv1.sv2 := Integer(XDR.XDR_Integer'First);
      sv64.sv1.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv64.sv1.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv64.sv1.sv5 := Float'First;
      sv64.sv1.sv6 := Double'First;
      sv64.sv1.sv7 := Boolean'First;
      sv64.sv1.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv64.sv1.sv12 := (others => 0);
      Size := 0;
      sv64.sv1.sv13 := v60'First;
      sv64.sv1.sv14 := v61'First;
      sv64.sv1.sv15.sv1 := Integer(XDR.XDR_Integer'First);
      sv64.sv2.sv1 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv64.sv2.sv2 := Integer(XDR.XDR_Integer'First);
      sv64.sv2.sv3 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv64.sv2.sv4 := Lib.Hyper(XDR.XDR_Hyper'First);
      sv64.sv2.sv5 := Float'First;
      sv64.sv2.sv6 := Double'First;
      sv64.sv2.sv7 := Boolean'First;
      sv64.sv2.sv8 := (others => ' ');
      sv10 := Ada.Real_Time.Time_Span_First;
      sv11 := Ada.Real_Time.Time_First;
      sv64.sv2.sv12 := (others => 0);
      Size := 0;
      sv64.sv2.sv13 := v60'First;
      sv64.sv2.sv14 := v61'First;
      sv64.sv2.sv15.sv1 := Integer(XDR.XDR_Integer'First);
      sv65 := v65'First;
      sv66 := v66'First;
      sv67 := v67'First;
      sv68 := v68'First;
      sv69 := v69'First;
      sv70 := v70'First;
      sv72 := (others => ' ');
      sv73 := (others => ' ');
      sv75 := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      sv76 := Integer(XDR.XDR_Integer'First);
      sv77 := Lib.U_Hyper_Type(XDR.XDR_Unsigned_Hyper'First);
      sv78 := Lib.Hyper_Type(XDR.XDR_Hyper'First);
      sv79 := Float'First;
      sv80 := Double'First;
      sv81 := Boolean'First;
      sv82 := (others => ' ');
      sv84 := Ada.Real_Time.Time_Span_First;
      sv85 := Ada.Real_Time.Time_First;
      sv86 := (others => 0);
      Size := 0;
      sv89 := (others => ' ');
      sv92 := v98'First;
      sv93 := v99'First;
      Position := 0;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_msav1, Last);
            Position := Last + 1;
            if Raw_msav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               msav1(I) := av1(Raw_msav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv1, Last);
         Position := Last + 1;
         if Raw_sv1 in XDR.XDR_Unsigned(v1'First) .. XDR.XDR_Unsigned(v1'Last) then
            sv1 := v1(Raw_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv2, Last);
         Position := Last + 1;
         if Raw_sv2 in XDR.XDR_Unsigned(v2'First) .. XDR.XDR_Unsigned(v2'Last) then
            sv2 := v2(Raw_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv3, Last);
         Position := Last + 1;
         if Raw_sv3 in XDR.XDR_Unsigned(v3'First) .. XDR.XDR_Unsigned(v3'Last) then
            sv3 := v3(Raw_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv4, Last);
         Position := Last + 1;
         if Raw_sv4 in XDR.XDR_Integer(v4'First) .. XDR.XDR_Integer(v4'Last) then
            sv4 := v4(Raw_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv5, Last);
         Position := Last + 1;
         if Raw_sv5 in XDR.XDR_Integer(v5'First) .. XDR.XDR_Integer(v5'Last) then
            sv5 := v5(Raw_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv6, Last);
         Position := Last + 1;
         if Raw_sv6 in XDR.XDR_Integer(v6'First) .. XDR.XDR_Integer(v6'Last) then
            sv6 := v6(Raw_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv7, Last);
         Position := Last + 1;
         if Raw_sv7 in XDR.XDR_Unsigned_Hyper(v7'First) .. XDR.XDR_Unsigned_Hyper(v7'Last) then
            sv7 := v7(Raw_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv8, Last);
         Position := Last + 1;
         if Raw_sv8 in XDR.XDR_Unsigned_Hyper(v8'First) .. XDR.XDR_Unsigned_Hyper(v8'Last) then
            sv8 := v8(Raw_sv8);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv9, Last);
         Position := Last + 1;
         if Raw_sv9 in XDR.XDR_Unsigned_Hyper(v9'First) .. XDR.XDR_Unsigned_Hyper(v9'Last) then
            sv9 := v9(Raw_sv9);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv10, Last);
         Position := Last + 1;
         if Raw_sv10 in XDR.XDR_Hyper(v10'First) .. XDR.XDR_Hyper(v10'Last) then
            sv10 := v10(Raw_sv10);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 in XDR.XDR_Hyper(v11'First) .. XDR.XDR_Hyper(v11'Last) then
            sv11 := v11(Raw_sv11);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv12, Last);
         Position := Last + 1;
         if Raw_sv12 in XDR.XDR_Hyper(v12'First) .. XDR.XDR_Hyper(v12'Last) then
            sv12 := v12(Raw_sv12);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv13, Last);
         Position := Last + 1;
         if Raw_sv13 in XDR.XDR_Float(v13'First) .. XDR.XDR_Float(v13'Last) then
            sv13 := v13(Raw_sv13);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv14, Last);
         Position := Last + 1;
         if Raw_sv14 in XDR.XDR_Double(v14'First) .. XDR.XDR_Double(v14'Last) then
            sv14 := v14(Raw_sv14);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv15, Last);
         Position := Last + 1;
         sv15 := v15'Val(XDR.XDR_Boolean'Pos(Raw_sv15));
         Decode_Status := Success;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv16_Size, Last);
         Position := Last + 1;
         if Raw_sv16_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv16_Size := Natural(Raw_sv16_Size);
         else
            sv16_Size := 0;
         end if;
         if sv16_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv16(sv16'First .. sv16'First + (sv16_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv18, Last);
         Position := Last + 1;
         if Raw_sv18 in v18'Pos(v18'First) .. v18'Pos(v18'Last) then
            sv18 := v18'Val(Raw_sv18);
         else
            Decode_Status := Malformed;
            sv18 := v18'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv19, Last);
         Position := Last + 1;
         if Raw_sv19 in v19'Pos(v19'First) .. v19'Pos(v19'Last) then
            sv19 := v19'Val(Raw_sv19);
         else
            Decode_Status := Malformed;
            sv19 := v19'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv20, Last);
         Position := Last + 1;
         if Raw_sv20 in v20'Pos(v20'First) .. v20'Pos(v20'Last) then
            sv20 := v20'Val(Raw_sv20);
         else
            Decode_Status := Malformed;
            sv20 := v20'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv21, Last);
         Position := Last + 1;
         if Raw_sv21 in v21'Pos(v21'First) .. v21'Pos(v21'Last) then
            sv21 := v21'Val(Raw_sv21);
         else
            Decode_Status := Malformed;
            sv21 := v21'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv22, Last);
         Position := Last + 1;
         if Raw_sv22 in v22'Pos(v22'First) .. v22'Pos(v22'Last) then
            sv22 := v22'Val(Raw_sv22);
         else
            Decode_Status := Malformed;
            sv22 := v22'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv23, Last);
         Position := Last + 1;
         if Raw_sv23 in v23'Pos(v23'First) .. v23'Pos(v23'Last) then
            sv23 := v23'Val(Raw_sv23);
         else
            Decode_Status := Malformed;
            sv23 := v23'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv24, Last);
         Position := Last + 1;
         if Raw_sv24 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv24 := v24'Val(Raw_sv24);
         else
            Decode_Status := Malformed;
            sv24 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv25, Last);
         Position := Last + 1;
         if Raw_sv25 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv25 := v25'Val(Raw_sv25);
         else
            Decode_Status := Malformed;
            sv25 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv26, Last);
         Position := Last + 1;
         if Raw_sv26 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv26 := v26'Val(Raw_sv26);
         else
            Decode_Status := Malformed;
            sv26 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv27, Last);
         Position := Last + 1;
         if Raw_sv27 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv27 := v27'Val(Raw_sv27);
         else
            Decode_Status := Malformed;
            sv27 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv28_sav1, Last);
            Position := Last + 1;
            if Raw_sv28_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv28.sav1(I) := av1(Raw_sv28_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv28_sv1, Last);
         Position := Last + 1;
         if Raw_sv28_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv28.sv1 := Integer(Raw_sv28_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv29_sv1, Last);
         Position := Last + 1;
         if Raw_sv29_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv29.sv1 := Integer(Raw_sv29_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv1, Last);
         Position := Last + 1;
         if Raw_sv30_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv30.sv1 := Lib.Quadruple_Octet(Raw_sv30_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv2, Last);
         Position := Last + 1;
         if Raw_sv30_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv30.sv2 := Integer(Raw_sv30_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv3, Last);
         Position := Last + 1;
         if Raw_sv30_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv30.sv3 := Lib.U_Hyper_Type(Raw_sv30_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv4, Last);
         Position := Last + 1;
         if Raw_sv30_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv30.sv4 := Lib.Hyper_Type(Raw_sv30_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv5, Last);
         Position := Last + 1;
         if Raw_sv30_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv30.sv5 := Float(Raw_sv30_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv6, Last);
         Position := Last + 1;
         if Raw_sv30_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv30.sv6 := Double(Raw_sv30_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv7, Last);
         Position := Last + 1;
         if Raw_sv30_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv30.sv7 := null(Raw_sv30_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv30_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv30_sv8_Size);
         else
            sv30_sv8_Size := 0;
         end if;
         if sv30_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv13, Last);
         Position := Last + 1;
         if Raw_sv30_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv30.sv13 := v24'Val(Raw_sv30_sv13);
         else
            Decode_Status := Malformed;
            sv30.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv14, Last);
         Position := Last + 1;
         if Raw_sv30_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv30.sv14 := v25'Val(Raw_sv30_sv14);
         else
            Decode_Status := Malformed;
            sv30.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv15, Last);
         Position := Last + 1;
         if Raw_sv30_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv30.sv15 := v26'Val(Raw_sv30_sv15);
         else
            Decode_Status := Malformed;
            sv30.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv16, Last);
         Position := Last + 1;
         if Raw_sv30_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv30.sv16 := v27'Val(Raw_sv30_sv16);
         else
            Decode_Status := Malformed;
            sv30.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv30_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv30_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv30.sv17.sav1(I) := av1(Raw_sv30_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv30_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv30.sv17.sv1 := Integer(Raw_sv30_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv30_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv30.sv18.sv1 := Integer(Raw_sv30_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv19, Last);
         Position := Last + 1;
         if Raw_sv30_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv30.sv19 := v98(Raw_sv30_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv30_sv20, Last);
         Position := Last + 1;
         if Raw_sv30_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv30.sv20 := v99(Raw_sv30_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv31.sv1.sv1 := Lib.Quadruple_Octet(Raw_sv31_sv1_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv2, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv1.sv2 := Integer(Raw_sv31_sv1_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv3, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv31.sv1.sv3 := Lib.U_Hyper_Type(Raw_sv31_sv1_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv4, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv31.sv1.sv4 := Lib.Hyper_Type(Raw_sv31_sv1_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv5, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv31.sv1.sv5 := Float(Raw_sv31_sv1_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv6, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv31.sv1.sv6 := Double(Raw_sv31_sv1_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv7, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv31.sv1.sv7 := null(Raw_sv31_sv1_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv31_sv1_sv8_Size);
         else
            sv31_sv1_sv8_Size := 0;
         end if;
         if sv31_sv1_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv13, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv31.sv1.sv13 := v24'Val(Raw_sv31_sv1_sv13);
         else
            Decode_Status := Malformed;
            sv31.sv1.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv14, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv31.sv1.sv14 := v25'Val(Raw_sv31_sv1_sv14);
         else
            Decode_Status := Malformed;
            sv31.sv1.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv15, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv31.sv1.sv15 := v26'Val(Raw_sv31_sv1_sv15);
         else
            Decode_Status := Malformed;
            sv31.sv1.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv16, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv31.sv1.sv16 := v27'Val(Raw_sv31_sv1_sv16);
         else
            Decode_Status := Malformed;
            sv31.sv1.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv31_sv1_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv31.sv1.sv17.sav1(I) := av1(Raw_sv31_sv1_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv1.sv17.sv1 := Integer(Raw_sv31_sv1_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv1.sv18.sv1 := Integer(Raw_sv31_sv1_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv19, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv31.sv1.sv19 := v98(Raw_sv31_sv1_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv1_sv20, Last);
         Position := Last + 1;
         if Raw_sv31_sv1_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv31.sv1.sv20 := v99(Raw_sv31_sv1_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv31.sv2.sv1 := Lib.Quadruple_Octet(Raw_sv31_sv2_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv2, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv2.sv2 := Integer(Raw_sv31_sv2_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv3, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv31.sv2.sv3 := Lib.U_Hyper_Type(Raw_sv31_sv2_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv4, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv31.sv2.sv4 := Lib.Hyper_Type(Raw_sv31_sv2_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv5, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv31.sv2.sv5 := Float(Raw_sv31_sv2_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv6, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv31.sv2.sv6 := Double(Raw_sv31_sv2_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv7, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv31.sv2.sv7 := null(Raw_sv31_sv2_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv31_sv2_sv8_Size);
         else
            sv31_sv2_sv8_Size := 0;
         end if;
         if sv31_sv2_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv13, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv31.sv2.sv13 := v24'Val(Raw_sv31_sv2_sv13);
         else
            Decode_Status := Malformed;
            sv31.sv2.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv14, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv31.sv2.sv14 := v25'Val(Raw_sv31_sv2_sv14);
         else
            Decode_Status := Malformed;
            sv31.sv2.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv15, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv31.sv2.sv15 := v26'Val(Raw_sv31_sv2_sv15);
         else
            Decode_Status := Malformed;
            sv31.sv2.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv16, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv31.sv2.sv16 := v27'Val(Raw_sv31_sv2_sv16);
         else
            Decode_Status := Malformed;
            sv31.sv2.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv31_sv2_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv31.sv2.sv17.sav1(I) := av1(Raw_sv31_sv2_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv2.sv17.sv1 := Integer(Raw_sv31_sv2_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv31.sv2.sv18.sv1 := Integer(Raw_sv31_sv2_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv19, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv31.sv2.sv19 := v98(Raw_sv31_sv2_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv31_sv2_sv20, Last);
         Position := Last + 1;
         if Raw_sv31_sv2_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv31.sv2.sv20 := v99(Raw_sv31_sv2_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv1, Last);
         Position := Last + 1;
         if Raw_sv32_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv32.sv1 := Lib.Quadruple_Octet(Raw_sv32_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv2, Last);
         Position := Last + 1;
         if Raw_sv32_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv32.sv2 := Integer(Raw_sv32_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv3, Last);
         Position := Last + 1;
         if Raw_sv32_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv32.sv3 := Lib.U_Hyper_Type(Raw_sv32_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv4, Last);
         Position := Last + 1;
         if Raw_sv32_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv32.sv4 := Lib.Hyper_Type(Raw_sv32_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv5, Last);
         Position := Last + 1;
         if Raw_sv32_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv32.sv5 := Float(Raw_sv32_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv6, Last);
         Position := Last + 1;
         if Raw_sv32_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv32.sv6 := Double(Raw_sv32_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv7, Last);
         Position := Last + 1;
         if Raw_sv32_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv32.sv7 := null(Raw_sv32_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv32_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv32_sv8_Size);
         else
            sv32_sv8_Size := 0;
         end if;
         if sv32_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv13, Last);
         Position := Last + 1;
         if Raw_sv32_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv32.sv13 := v24'Val(Raw_sv32_sv13);
         else
            Decode_Status := Malformed;
            sv32.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv14, Last);
         Position := Last + 1;
         if Raw_sv32_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv32.sv14 := v25'Val(Raw_sv32_sv14);
         else
            Decode_Status := Malformed;
            sv32.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv15, Last);
         Position := Last + 1;
         if Raw_sv32_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv32.sv15 := v26'Val(Raw_sv32_sv15);
         else
            Decode_Status := Malformed;
            sv32.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv16, Last);
         Position := Last + 1;
         if Raw_sv32_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv32.sv16 := v27'Val(Raw_sv32_sv16);
         else
            Decode_Status := Malformed;
            sv32.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv32_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv32_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv32.sv17.sav1(I) := av1(Raw_sv32_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv32_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv32.sv17.sv1 := Integer(Raw_sv32_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv32_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv32.sv18.sv1 := Integer(Raw_sv32_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv19, Last);
         Position := Last + 1;
         if Raw_sv32_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv32.sv19 := v98(Raw_sv32_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv32_sv20, Last);
         Position := Last + 1;
         if Raw_sv32_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv32.sv20 := v99(Raw_sv32_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv33.sv1.sv1 := Lib.Quadruple_Octet(Raw_sv33_sv1_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv2, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv1.sv2 := Integer(Raw_sv33_sv1_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv3, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv33.sv1.sv3 := Lib.U_Hyper_Type(Raw_sv33_sv1_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv4, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv33.sv1.sv4 := Lib.Hyper_Type(Raw_sv33_sv1_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv5, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv33.sv1.sv5 := Float(Raw_sv33_sv1_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv6, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv33.sv1.sv6 := Double(Raw_sv33_sv1_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv7, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv33.sv1.sv7 := null(Raw_sv33_sv1_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv33_sv1_sv8_Size);
         else
            sv33_sv1_sv8_Size := 0;
         end if;
         if sv33_sv1_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv13, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv33.sv1.sv13 := v24'Val(Raw_sv33_sv1_sv13);
         else
            Decode_Status := Malformed;
            sv33.sv1.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv14, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv33.sv1.sv14 := v25'Val(Raw_sv33_sv1_sv14);
         else
            Decode_Status := Malformed;
            sv33.sv1.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv15, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv33.sv1.sv15 := v26'Val(Raw_sv33_sv1_sv15);
         else
            Decode_Status := Malformed;
            sv33.sv1.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv16, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv33.sv1.sv16 := v27'Val(Raw_sv33_sv1_sv16);
         else
            Decode_Status := Malformed;
            sv33.sv1.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv33_sv1_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv33.sv1.sv17.sav1(I) := av1(Raw_sv33_sv1_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv1.sv17.sv1 := Integer(Raw_sv33_sv1_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv1.sv18.sv1 := Integer(Raw_sv33_sv1_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv19, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv33.sv1.sv19 := v98(Raw_sv33_sv1_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv1_sv20, Last);
         Position := Last + 1;
         if Raw_sv33_sv1_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv33.sv1.sv20 := v99(Raw_sv33_sv1_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv33.sv2.sv1 := Lib.Quadruple_Octet(Raw_sv33_sv2_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv2, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv2.sv2 := Integer(Raw_sv33_sv2_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv3, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv33.sv2.sv3 := Lib.U_Hyper_Type(Raw_sv33_sv2_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv4, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv33.sv2.sv4 := Lib.Hyper_Type(Raw_sv33_sv2_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv5, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv33.sv2.sv5 := Float(Raw_sv33_sv2_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv6, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv33.sv2.sv6 := Double(Raw_sv33_sv2_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv7, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv33.sv2.sv7 := null(Raw_sv33_sv2_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv33_sv2_sv8_Size);
         else
            sv33_sv2_sv8_Size := 0;
         end if;
         if sv33_sv2_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv13, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv13 in v24'Pos(v24'First) .. v24'Pos(v24'Last) then
            sv33.sv2.sv13 := v24'Val(Raw_sv33_sv2_sv13);
         else
            Decode_Status := Malformed;
            sv33.sv2.sv13 := v24'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv14, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv14 in v25'Pos(v25'First) .. v25'Pos(v25'Last) then
            sv33.sv2.sv14 := v25'Val(Raw_sv33_sv2_sv14);
         else
            Decode_Status := Malformed;
            sv33.sv2.sv14 := v25'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv15, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv15 in v26'Pos(v26'First) .. v26'Pos(v26'Last) then
            sv33.sv2.sv15 := v26'Val(Raw_sv33_sv2_sv15);
         else
            Decode_Status := Malformed;
            sv33.sv2.sv15 := v26'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv16, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv16 in v27'Pos(v27'First) .. v27'Pos(v27'Last) then
            sv33.sv2.sv16 := v27'Val(Raw_sv33_sv2_sv16);
         else
            Decode_Status := Malformed;
            sv33.sv2.sv16 := v27'First;
         end if;
      end if;
      for I in Integer range 0 .. 1000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv17_sav1, Last);
            Position := Last + 1;
            if Raw_sv33_sv2_sv17_sav1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               sv33.sv2.sv17.sav1(I) := av1(Raw_sv33_sv2_sv17_sav1);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv17_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv17_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv2.sv17.sv1 := Integer(Raw_sv33_sv2_sv17_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv18_sv1, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv18_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv33.sv2.sv18.sv1 := Integer(Raw_sv33_sv2_sv18_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv19, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv19 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv33.sv2.sv19 := v98(Raw_sv33_sv2_sv19);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv33_sv2_sv20, Last);
         Position := Last + 1;
         if Raw_sv33_sv2_sv20 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv33.sv2.sv20 := v99(Raw_sv33_sv2_sv20);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv34, Last);
         Position := Last + 1;
         if Raw_sv34 in XDR.XDR_Unsigned(v34'First) .. XDR.XDR_Unsigned(v34'Last) then
            sv34 := v34(Raw_sv34);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv35, Last);
         Position := Last + 1;
         if Raw_sv35 in XDR.XDR_Integer(v35'First) .. XDR.XDR_Integer(v35'Last) then
            sv35 := v35(Raw_sv35);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv36, Last);
         Position := Last + 1;
         if Raw_sv36 in XDR.XDR_Unsigned_Hyper(v36'First) .. XDR.XDR_Unsigned_Hyper(v36'Last) then
            sv36 := v36(Raw_sv36);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv37, Last);
         Position := Last + 1;
         if Raw_sv37 in XDR.XDR_Hyper(v37'First) .. XDR.XDR_Hyper(v37'Last) then
            sv37 := v37(Raw_sv37);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv38, Last);
         Position := Last + 1;
         if Raw_sv38 in XDR.XDR_Float(v38'First) .. XDR.XDR_Float(v38'Last) then
            sv38 := v38(Raw_sv38);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv39, Last);
         Position := Last + 1;
         if Raw_sv39 in XDR.XDR_Double(v39'First) .. XDR.XDR_Double(v39'Last) then
            sv39 := v39(Raw_sv39);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv41, Last);
         Position := Last + 1;
         if Raw_sv41 in v41'Pos(v41'First) .. v41'Pos(v41'Last) then
            sv41 := v41'Val(Raw_sv41);
         else
            Decode_Status := Malformed;
            sv41 := v41'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv42_Size, Last);
         Position := Last + 1;
         if Raw_sv42_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv42_Size := Natural(Raw_sv42_Size);
         else
            sv42_Size := 0;
         end if;
         if sv42_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv42(sv42'First .. sv42'First + (sv42_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv43_Size, Last);
         Position := Last + 1;
         if Raw_sv43_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv43_Size := Natural(Raw_sv43_Size);
         else
            sv43_Size := 0;
         end if;
         if sv43_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv43(sv43'First .. sv43'First + (sv43_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv44, Last);
         Position := Last + 1;
         if Raw_sv44 in v44'Pos(v44'First) .. v44'Pos(v44'Last) then
            sv44 := v44'Val(Raw_sv44);
         else
            Decode_Status := Malformed;
            sv44 := v44'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv47, Last);
         Position := Last + 1;
         if Raw_sv47 in XDR.XDR_Unsigned(v47'First) .. XDR.XDR_Unsigned(v47'Last) then
            sv47 := v47(Raw_sv47);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv48, Last);
         Position := Last + 1;
         if Raw_sv48 in XDR.XDR_Integer(v48'First) .. XDR.XDR_Integer(v48'Last) then
            sv48 := v48(Raw_sv48);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv49, Last);
         Position := Last + 1;
         if Raw_sv49 in XDR.XDR_Unsigned_Hyper(v49'First) .. XDR.XDR_Unsigned_Hyper(v49'Last) then
            sv49 := v49(Raw_sv49);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv50, Last);
         Position := Last + 1;
         if Raw_sv50 in XDR.XDR_Hyper(v50'First) .. XDR.XDR_Hyper(v50'Last) then
            sv50 := v50(Raw_sv50);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv51, Last);
         Position := Last + 1;
         if Raw_sv51 in XDR.XDR_Float(v51'First) .. XDR.XDR_Float(v51'Last) then
            sv51 := v51(Raw_sv51);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv52, Last);
         Position := Last + 1;
         if Raw_sv52 in XDR.XDR_Double(v52'First) .. XDR.XDR_Double(v52'Last) then
            sv52 := v52(Raw_sv52);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv53, Last);
         Position := Last + 1;
         sv53 := v53'Val(XDR.XDR_Boolean'Pos(Raw_sv53));
         Decode_Status := Success;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv54_Size, Last);
         Position := Last + 1;
         if Raw_sv54_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv54_Size := Natural(Raw_sv54_Size);
         else
            sv54_Size := 0;
         end if;
         if sv54_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv54(sv54'First .. sv54'First + (sv54_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv56, Last);
         Position := Last + 1;
         if Raw_sv56 in v56'Pos(v56'First) .. v56'Pos(v56'Last) then
            sv56 := v56'Val(Raw_sv56);
         else
            Decode_Status := Malformed;
            sv56 := v56'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv57, Last);
         Position := Last + 1;
         if Raw_sv57 in v57'Pos(v57'First) .. v57'Pos(v57'Last) then
            sv57 := v57'Val(Raw_sv57);
         else
            Decode_Status := Malformed;
            sv57 := v57'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv58, Last);
         Position := Last + 1;
         if Raw_sv58 in v58'Pos(v58'First) .. v58'Pos(v58'Last) then
            sv58 := v58'Val(Raw_sv58);
         else
            Decode_Status := Malformed;
            sv58 := v58'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv59, Last);
         Position := Last + 1;
         if Raw_sv59 in v59'Pos(v59'First) .. v59'Pos(v59'Last) then
            sv59 := v59'Val(Raw_sv59);
         else
            Decode_Status := Malformed;
            sv59 := v59'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv60, Last);
         Position := Last + 1;
         if Raw_sv60 in v60'Pos(v60'First) .. v60'Pos(v60'Last) then
            sv60 := v60'Val(Raw_sv60);
         else
            Decode_Status := Malformed;
            sv60 := v60'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv61, Last);
         Position := Last + 1;
         if Raw_sv61 in v61'Pos(v61'First) .. v61'Pos(v61'Last) then
            sv61 := v61'Val(Raw_sv61);
         else
            Decode_Status := Malformed;
            sv61 := v61'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv62_sv1, Last);
         Position := Last + 1;
         if Raw_sv62_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv62.sv1 := Integer(Raw_sv62_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv1, Last);
         Position := Last + 1;
         if Raw_sv63_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv63.sv1 := Lib.Quadruple_Octet(Raw_sv63_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv2, Last);
         Position := Last + 1;
         if Raw_sv63_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv63.sv2 := Integer(Raw_sv63_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv3, Last);
         Position := Last + 1;
         if Raw_sv63_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv63.sv3 := Lib.U_Hyper_Type(Raw_sv63_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv4, Last);
         Position := Last + 1;
         if Raw_sv63_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv63.sv4 := Lib.Hyper_Type(Raw_sv63_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv5, Last);
         Position := Last + 1;
         if Raw_sv63_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv63.sv5 := Float(Raw_sv63_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv6, Last);
         Position := Last + 1;
         if Raw_sv63_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv63.sv6 := Double(Raw_sv63_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv7, Last);
         Position := Last + 1;
         if Raw_sv63_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv63.sv7 := null(Raw_sv63_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv63_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv63_sv8_Size);
         else
            sv63_sv8_Size := 0;
         end if;
         if sv63_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv13, Last);
         Position := Last + 1;
         if Raw_sv63_sv13 in v60'Pos(v60'First) .. v60'Pos(v60'Last) then
            sv63.sv13 := v60'Val(Raw_sv63_sv13);
         else
            Decode_Status := Malformed;
            sv63.sv13 := v60'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv14, Last);
         Position := Last + 1;
         if Raw_sv63_sv14 in v61'Pos(v61'First) .. v61'Pos(v61'Last) then
            sv63.sv14 := v61'Val(Raw_sv63_sv14);
         else
            Decode_Status := Malformed;
            sv63.sv14 := v61'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv63_sv15_sv1, Last);
         Position := Last + 1;
         if Raw_sv63_sv15_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv63.sv15.sv1 := Integer(Raw_sv63_sv15_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv1, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv64.sv1.sv1 := Lib.Quadruple_Octet(Raw_sv64_sv1_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv2, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv64.sv1.sv2 := Integer(Raw_sv64_sv1_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv3, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv64.sv1.sv3 := Lib.U_Hyper_Type(Raw_sv64_sv1_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv4, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv64.sv1.sv4 := Lib.Hyper_Type(Raw_sv64_sv1_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv5, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv64.sv1.sv5 := Float(Raw_sv64_sv1_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv6, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv64.sv1.sv6 := Double(Raw_sv64_sv1_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv7, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv64.sv1.sv7 := null(Raw_sv64_sv1_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv64_sv1_sv8_Size);
         else
            sv64_sv1_sv8_Size := 0;
         end if;
         if sv64_sv1_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv13, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv13 in v60'Pos(v60'First) .. v60'Pos(v60'Last) then
            sv64.sv1.sv13 := v60'Val(Raw_sv64_sv1_sv13);
         else
            Decode_Status := Malformed;
            sv64.sv1.sv13 := v60'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv14, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv14 in v61'Pos(v61'First) .. v61'Pos(v61'Last) then
            sv64.sv1.sv14 := v61'Val(Raw_sv64_sv1_sv14);
         else
            Decode_Status := Malformed;
            sv64.sv1.sv14 := v61'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv1_sv15_sv1, Last);
         Position := Last + 1;
         if Raw_sv64_sv1_sv15_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv64.sv1.sv15.sv1 := Integer(Raw_sv64_sv1_sv15_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv1, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv1 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv64.sv2.sv1 := Lib.Quadruple_Octet(Raw_sv64_sv2_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv2, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv2 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv64.sv2.sv2 := Integer(Raw_sv64_sv2_sv2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv3, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv3 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv64.sv2.sv3 := Lib.U_Hyper_Type(Raw_sv64_sv2_sv3);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv4, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv4 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv64.sv2.sv4 := Lib.Hyper_Type(Raw_sv64_sv2_sv4);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv5, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv5 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv64.sv2.sv5 := Float(Raw_sv64_sv2_sv5);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv6, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv6 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv64.sv2.sv6 := Double(Raw_sv64_sv2_sv6);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv7, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv7 in XDR.XDR_Unsigned(null'First) .. XDR.XDR_Unsigned(null'Last) then
            sv64.sv2.sv7 := null(Raw_sv64_sv2_sv7);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv8_Size, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv8_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv8_Size := Natural(Raw_sv64_sv2_sv8_Size);
         else
            sv64_sv2_sv8_Size := 0;
         end if;
         if sv64_sv2_sv8_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv8(sv8'First .. sv8'First + (sv8_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv10 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv11, Last);
         Position := Last + 1;
         if Raw_sv11 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv11);
            sv11 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv12'Length then
            XDR.Decode(Message.Payload, Position, sv12(sv12'First .. sv12'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv13, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv13 in v60'Pos(v60'First) .. v60'Pos(v60'Last) then
            sv64.sv2.sv13 := v60'Val(Raw_sv64_sv2_sv13);
         else
            Decode_Status := Malformed;
            sv64.sv2.sv13 := v60'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv14, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv14 in v61'Pos(v61'First) .. v61'Pos(v61'Last) then
            sv64.sv2.sv14 := v61'Val(Raw_sv64_sv2_sv14);
         else
            Decode_Status := Malformed;
            sv64.sv2.sv14 := v61'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv64_sv2_sv15_sv1, Last);
         Position := Last + 1;
         if Raw_sv64_sv2_sv15_sv1 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv64.sv2.sv15.sv1 := Integer(Raw_sv64_sv2_sv15_sv1);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv65, Last);
         Position := Last + 1;
         if Raw_sv65 in XDR.XDR_Unsigned(v65'First) .. XDR.XDR_Unsigned(v65'Last) then
            sv65 := v65(Raw_sv65);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv66, Last);
         Position := Last + 1;
         if Raw_sv66 in XDR.XDR_Integer(v66'First) .. XDR.XDR_Integer(v66'Last) then
            sv66 := v66(Raw_sv66);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv67, Last);
         Position := Last + 1;
         if Raw_sv67 in XDR.XDR_Unsigned_Hyper(v67'First) .. XDR.XDR_Unsigned_Hyper(v67'Last) then
            sv67 := v67(Raw_sv67);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv68, Last);
         Position := Last + 1;
         if Raw_sv68 in XDR.XDR_Hyper(v68'First) .. XDR.XDR_Hyper(v68'Last) then
            sv68 := v68(Raw_sv68);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv69, Last);
         Position := Last + 1;
         if Raw_sv69 in XDR.XDR_Float(v69'First) .. XDR.XDR_Float(v69'Last) then
            sv69 := v69(Raw_sv69);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv70, Last);
         Position := Last + 1;
         if Raw_sv70 in XDR.XDR_Double(v70'First) .. XDR.XDR_Double(v70'Last) then
            sv70 := v70(Raw_sv70);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv72_Size, Last);
         Position := Last + 1;
         if Raw_sv72_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv72_Size := Natural(Raw_sv72_Size);
         else
            sv72_Size := 0;
         end if;
         if sv72_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv72(sv72'First .. sv72'First + (sv72_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv73_Size, Last);
         Position := Last + 1;
         if Raw_sv73_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv73_Size := Natural(Raw_sv73_Size);
         else
            sv73_Size := 0;
         end if;
         if sv73_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv73(sv73'First .. sv73'First + (sv73_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv74, Last);
         Position := Last + 1;
         if Raw_sv74 in v74'Pos(v74'First) .. v74'Pos(v74'Last) then
            sv74 := v74'Val(Raw_sv74);
         else
            Decode_Status := Malformed;
            sv74 := v74'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv75, Last);
         Position := Last + 1;
         if Raw_sv75 in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            sv75 := Lib.Quadruple_Octet(Raw_sv75);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv76, Last);
         Position := Last + 1;
         if Raw_sv76 in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            sv76 := Integer(Raw_sv76);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv77, Last);
         Position := Last + 1;
         if Raw_sv77 in XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'First) .. XDR.XDR_Unsigned_Hyper(Lib.U_Hyper_Type'Last) then
            sv77 := Lib.U_Hyper_Type(Raw_sv77);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv78, Last);
         Position := Last + 1;
         if Raw_sv78 in XDR.XDR_Hyper(Lib.Hyper_Type'First) .. XDR.XDR_Hyper(Lib.Hyper_Type'Last) then
            sv78 := Lib.Hyper_Type(Raw_sv78);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv79, Last);
         Position := Last + 1;
         if Raw_sv79 in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            sv79 := Float(Raw_sv79);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv80, Last);
         Position := Last + 1;
         if Raw_sv80 in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            sv80 := Double(Raw_sv80);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv81, Last);
         Position := Last + 1;
         sv81 := Boolean'Val(XDR.XDR_Boolean'Pos(Raw_sv81));
         Decode_Status := Success;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv82_Size, Last);
         Position := Last + 1;
         if Raw_sv82_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv82_Size := Natural(Raw_sv82_Size);
         else
            sv82_Size := 0;
         end if;
         if sv82_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv82(sv82'First .. sv82'First + (sv82_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Interval, Last);
         Position := Last + 1;
         if Raw_Interval < XDR.XDR_Unsigned(Integer'Last) then
            sv84 := Ada.Real_Time.Milliseconds(Integer(Raw_Interval));
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv85, Last);
         Position := Last + 1;
         if Raw_sv85 < XDR.XDR_Unsigned(Integer'Last) then
            Seconds := Ada.Real_Time.Seconds_Count(Raw_sv85);
            sv85 := Ada.Real_Time.Time_Of(Seconds, Ada.Real_Time.Time_Span_Zero);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_Size, Last);
         Position := Last + 1;
         if Raw_Size in XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'First) .. XDR.XDR_Unsigned(CubedOS.Lib.Octet_Array_Count'Last) then
            Size := CubedOS.Lib.Octet_Array_Count(Raw_Size);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
         if Size < sv86'Length then
            XDR.Decode(Message.Payload, Position, sv86(sv86'First .. sv86'First + Size - 1), Last);
            Position := Last + 1;
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv88, Last);
         Position := Last + 1;
         if Raw_sv88 in null'Pos(null'First) .. null'Pos(null'Last) then
            sv88 := null'Val(Raw_sv88);
         else
            Decode_Status := Malformed;
            sv88 := null'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv89_Size, Last);
         Position := Last + 1;
         if Raw_sv89_Size in XDR.XDR_Unsigned(Natural'First) .. XDR.XDR_Unsigned(Natural'Last) then
            sv89_Size := Natural(Raw_sv89_Size);
         else
            sv89_Size := 0;
         end if;
         if sv89_Size < 1 then
            XDR.Decode(Message.Payload, Position, sv89(sv89'First .. sv89'First + (sv89_Size - 1)), Last);
            Position := Last + 1;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv92, Last);
         Position := Last + 1;
         if Raw_sv92 in XDR.XDR_Float(v98'First) .. XDR.XDR_Float(v98'Last) then
            sv92 := v98(Raw_sv92);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_sv93, Last);
         if Raw_sv93 in XDR.XDR_Float(v99'First) .. XDR.XDR_Float(v99'Last) then
            sv93 := v99(Raw_sv93);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
   end v80_Decode;


end CubedOS.test.API;