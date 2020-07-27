with Ada.Calendar;
package Simple is

   type AA is range 1 .. 20;

   type Aa_Array is array (Natural range <>) of AA;

   type Enum is (A, B, C, DD);

   type My_Mod is mod 33;

   subtype My is Integer;


   type Simple_Record is record
      D1_Integer     : Integer;
      D3_Long_Float  : Long_Float;
      D2_AA          : AA;
      D4_Aa_Array    : Aa_Array (1 .. 10);
      D5_Enum        : Enum;
      D6_My          : My;
   end record;

   type Some_Interface is interface;
   type Some_Limited_interface is interface;
   type Some_syncronized_Interface is synchronized interface;

   type Abstract_Record is abstract tagged record
      Data : Integer := 0;
   end record;

   type Concrete_Taggd_Record is new Simple.Abstract_Record with record
      Data2 : Integer := 1;
   end record;


   type Concrete_Taggd_Record_with_Time is new Concrete_Taggd_Record with  record
      T : Ada.Calendar.Time := Ada.Calendar.Time_Of (2020, 01, 10, 100.0);
   end record;

   type Record_With_Discriminatns (D1 : Natural ; D2  : Boolean) is record
      Name : String (1 .. D1);
      case D2 is
         when True =>
            F : Float;
         when False =>
            I : Integer;
      end case;
   end record;

end Simple;
