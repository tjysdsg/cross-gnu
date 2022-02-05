------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                              S C I L _ L L                               --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2010-2020, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT; see file COPYING3.  If not, go to --
-- http://www.gnu.org/licenses for a complete copy of the license.          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  This package extends the tree nodes with fields that are used to reference
--  the SCIL node.

with Types; use Types;

package SCIL_LL is

   function Get_SCIL_Node (N : Node_Id) return Node_Id;
   --  Read the value of attribute SCIL node

   procedure Set_SCIL_Node (N : Node_Id; Value : Node_Id);
   --  Set the value of attribute SCIL node

   procedure Initialize;
   --  Initialize the table of SCIL nodes

end SCIL_LL;