(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[     21199,        560]
NotebookOptionsPosition[     21089,        533]
NotebookOutlinePosition[     21639,        556]
CellTagsIndexPosition[     21596,        553]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["Page 8, spinless p-wave superconductor", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}], "+", 
         RowBox[{
          RowBox[{"Delta", "^", "2"}], "*", 
          RowBox[{"k", "^", "2"}]}]}], "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}], "+", 
          RowBox[{
           RowBox[{"Delta", "^", "2"}], "*", 
           RowBox[{"k", "^", "2"}]}]}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"k", ",", 
       RowBox[{"-", "4"}], ",", "4"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "10"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"mu", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"Delta", ",", "0", ",", "2"}], "}"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Delta$$ = 0.53, $CellContext`mu$$ = 1.25, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`mu$$], -10, 10}, {
      Hold[$CellContext`Delta$$], 0, 2}}, Typeset`size$$ = {
    360., {114., 119.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`mu$4233$$ = 
    0, $CellContext`Delta$4234$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`Delta$$ = 0, $CellContext`mu$$ = -10}, 
      "ControllerVariables" :> {
        Hold[$CellContext`mu$$, $CellContext`mu$4233$$, 0], 
        Hold[$CellContext`Delta$$, $CellContext`Delta$4234$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         Sqrt[($CellContext`k^2 - $CellContext`mu$$)^2 + \
$CellContext`Delta$$^2 $CellContext`k^2], -
         Sqrt[($CellContext`k^2 - $CellContext`mu$$)^2 + \
$CellContext`Delta$$^2 $CellContext`k^2]}, {$CellContext`k, -4, 4}, PlotRange -> 
        10], "Specifications" :> {{$CellContext`mu$$, -10, 
         10}, {$CellContext`Delta$$, 0, 2}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{405., {172., 177.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["Page 9, symmetry class BD1:", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Delta", "*", 
        RowBox[{"k", "/", 
         RowBox[{"Sqrt", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"Delta", "*", "k"}], ")"}], "^", "2"}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
          "]"}]}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "/", 
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"Delta", "*", "k"}], ")"}], "^", "2"}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
         "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"k", ",", 
       RowBox[{"-", "10"}], ",", 
       RowBox[{"+", "10"}]}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "1.5"}], ",", 
     RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Quality\>\""}]}], "]"}], ",", 
   
   RowBox[{"{", 
    RowBox[{"Delta", ",", "0", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"mu", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Delta$$ = 0.65, $CellContext`mu$$ = 
    6.517216491699401, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`Delta$$], 0, 2}, {
      Hold[$CellContext`mu$$], -10, 10}}, Typeset`size$$ = {
    360., {175., 179.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`Delta$54973$$ = 
    0, $CellContext`mu$54974$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`Delta$$ = 0, $CellContext`mu$$ = -10}, 
      "ControllerVariables" :> {
        Hold[$CellContext`Delta$$, $CellContext`Delta$54973$$, 0], 
        Hold[$CellContext`mu$$, $CellContext`mu$54974$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      ParametricPlot[{$CellContext`Delta$$ ($CellContext`k/
          Sqrt[($CellContext`Delta$$ $CellContext`k)^2 + ($CellContext`k^2 - \
$CellContext`mu$$)^2]), ($CellContext`k^2 - $CellContext`mu$$)/
         Sqrt[($CellContext`Delta$$ $CellContext`k)^2 + ($CellContext`k^2 - \
$CellContext`mu$$)^2]}, {$CellContext`k, -10, 
         Plus[10]}, PlotRange -> 1.5, PerformanceGoal -> "Quality"], 
      "Specifications" :> {{$CellContext`Delta$$, 0, 
         2}, {$CellContext`mu$$, -10, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{405., {233., 238.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["Page 18, spin-orbit coupled wire with Zeeman field", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"k", "^", "2"}], "-", "mu", "+", 
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "+", 
          RowBox[{"B", "^", "2"}]}], "]"}]}], ",", 
       RowBox[{
        RowBox[{"k", "^", "2"}], "-", "mu", "-", 
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "+", 
          RowBox[{"B", "^", "2"}]}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"k", ",", 
       RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "10"}], ",", 
     RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Quality\>\""}]}], "]"}], ",", 
   
   RowBox[{"{", 
    RowBox[{"alpha", ",", "0", ",", "6"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"B", ",", "0", ",", "20"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"mu", ",", 
     RowBox[{"-", "5"}], ",", "5"}], "}"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`alpha$$ = 
    5.642237548828097, $CellContext`B$$ = 
    9.635132598876908, $CellContext`mu$$ = 0., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`alpha$$], 0, 6}, {
      Hold[$CellContext`B$$], 0, 20}, {
      Hold[$CellContext`mu$$], -5, 5}}, Typeset`size$$ = {360., {114., 118.}},
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`alpha$21299$$ = 0, $CellContext`B$21300$$ = 
    0, $CellContext`mu$21301$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`alpha$$ = 0, $CellContext`B$$ = 
        0, $CellContext`mu$$ = -5}, "ControllerVariables" :> {
        Hold[$CellContext`alpha$$, $CellContext`alpha$21299$$, 0], 
        Hold[$CellContext`B$$, $CellContext`B$21300$$, 0], 
        Hold[$CellContext`mu$$, $CellContext`mu$21301$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Plot[{$CellContext`k^2 - $CellContext`mu$$ + 
         Sqrt[($CellContext`alpha$$ $CellContext`k)^2 + $CellContext`B$$^2], \
$CellContext`k^2 - $CellContext`mu$$ - 
         Sqrt[($CellContext`alpha$$ $CellContext`k)^2 + $CellContext`B$$^2]}, \
{$CellContext`k, -10, 10}, PlotRange -> 10, PerformanceGoal -> "Quality"], 
      "Specifications" :> {{$CellContext`alpha$$, 0, 6}, {$CellContext`B$$, 0,
          20}, {$CellContext`mu$$, -5, 5}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{405., {186., 191.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["Full spectrum for our wire", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "+", 
         RowBox[{"B", "^", "2"}], "+", 
         RowBox[{"Delta", "^", "2"}], "+", 
         RowBox[{"2", "*", 
          RowBox[{"Sqrt", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "*", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
            "+", 
            RowBox[{
             RowBox[{"B", "^", "2"}], "*", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
            "+", 
            RowBox[{
             RowBox[{"B", "^", "2"}], "*", 
             RowBox[{"Delta", "^", "2"}]}]}], "]"}]}]}], "]"}], ",", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "+", 
         RowBox[{"B", "^", "2"}], "+", 
         RowBox[{"Delta", "^", "2"}], "-", 
         RowBox[{"2", "*", 
          RowBox[{"Sqrt", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "*", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
            "+", 
            RowBox[{
             RowBox[{"B", "^", "2"}], "*", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
            "+", 
            RowBox[{
             RowBox[{"B", "^", "2"}], "*", 
             RowBox[{"Delta", "^", "2"}]}]}], "]"}]}]}], "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "+", 
          RowBox[{"B", "^", "2"}], "+", 
          RowBox[{"Delta", "^", "2"}], "-", 
          RowBox[{"2", "*", 
           RowBox[{"Sqrt", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "*", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
             "+", 
             RowBox[{
              RowBox[{"B", "^", "2"}], "*", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
             "+", 
             RowBox[{
              RowBox[{"B", "^", "2"}], "*", 
              RowBox[{"Delta", "^", "2"}]}]}], "]"}]}]}], "]"}]}], ",", 
       RowBox[{"-", 
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "+", 
          RowBox[{"B", "^", "2"}], "+", 
          RowBox[{"Delta", "^", "2"}], "+", 
          RowBox[{"2", "*", 
           RowBox[{"Sqrt", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"alpha", "*", "k"}], ")"}], "^", "2"}], "*", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
             "+", 
             RowBox[{
              RowBox[{"B", "^", "2"}], "*", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"k", "^", "2"}], "-", "mu"}], ")"}], "^", "2"}]}], 
             "+", 
             RowBox[{
              RowBox[{"B", "^", "2"}], "*", 
              RowBox[{"Delta", "^", "2"}]}]}], "]"}]}]}], "]"}]}]}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"k", ",", 
       RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "10"}], ",", 
     RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Quality\>\""}]}], "]"}], ",", 
   
   RowBox[{"{", 
    RowBox[{"alpha", ",", "0", ",", "6"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"B", ",", "0", ",", "20"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"mu", ",", 
     RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"Delta", ",", "0", ",", "5"}], "}"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`alpha$$ = 3.44, $CellContext`B$$ = 
    2.0500000000000003`, $CellContext`Delta$$ = 0.76, $CellContext`mu$$ = 0., 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`alpha$$], 0, 6}, {
      Hold[$CellContext`B$$], 0, 20}, {
      Hold[$CellContext`mu$$], -5, 5}, {
      Hold[$CellContext`Delta$$], 0, 5}}, Typeset`size$$ = {
    536., {169., 173.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`alpha$53960$$ = 
    0, $CellContext`B$53961$$ = 0, $CellContext`mu$53962$$ = 
    0, $CellContext`Delta$53963$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`alpha$$ = 0, $CellContext`B$$ = 
        0, $CellContext`Delta$$ = 0, $CellContext`mu$$ = -5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`alpha$$, $CellContext`alpha$53960$$, 0], 
        Hold[$CellContext`B$$, $CellContext`B$53961$$, 0], 
        Hold[$CellContext`mu$$, $CellContext`mu$53962$$, 0], 
        Hold[$CellContext`Delta$$, $CellContext`Delta$53963$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         Sqrt[($CellContext`k^2 - $CellContext`mu$$)^2 + \
($CellContext`alpha$$ $CellContext`k)^2 + $CellContext`B$$^2 + \
$CellContext`Delta$$^2 + 
          2 Sqrt[($CellContext`alpha$$ $CellContext`k)^2 ($CellContext`k^2 - \
$CellContext`mu$$)^2 + $CellContext`B$$^2 ($CellContext`k^2 - \
$CellContext`mu$$)^2 + $CellContext`B$$^2 $CellContext`Delta$$^2]], 
         Sqrt[($CellContext`k^2 - $CellContext`mu$$)^2 + \
($CellContext`alpha$$ $CellContext`k)^2 + $CellContext`B$$^2 + \
$CellContext`Delta$$^2 - 2 
          Sqrt[($CellContext`alpha$$ $CellContext`k)^2 ($CellContext`k^2 - \
$CellContext`mu$$)^2 + $CellContext`B$$^2 ($CellContext`k^2 - \
$CellContext`mu$$)^2 + $CellContext`B$$^2 $CellContext`Delta$$^2]], -
         Sqrt[($CellContext`k^2 - $CellContext`mu$$)^2 + \
($CellContext`alpha$$ $CellContext`k)^2 + $CellContext`B$$^2 + \
$CellContext`Delta$$^2 - 2 
           Sqrt[($CellContext`alpha$$ $CellContext`k)^2 ($CellContext`k^2 - \
$CellContext`mu$$)^2 + $CellContext`B$$^2 ($CellContext`k^2 - \
$CellContext`mu$$)^2 + $CellContext`B$$^2 $CellContext`Delta$$^2]], -
         Sqrt[($CellContext`k^2 - $CellContext`mu$$)^2 + \
($CellContext`alpha$$ $CellContext`k)^2 + $CellContext`B$$^2 + \
$CellContext`Delta$$^2 + 
           2 Sqrt[($CellContext`alpha$$ $CellContext`k)^2 ($CellContext`k^2 - \
$CellContext`mu$$)^2 + $CellContext`B$$^2 ($CellContext`k^2 - \
$CellContext`mu$$)^2 + $CellContext`B$$^2 $CellContext`Delta$$^2]]}, \
{$CellContext`k, -10, 10}, PlotRange -> 10, PerformanceGoal -> "Quality"], 
      "Specifications" :> {{$CellContext`alpha$$, 0, 6}, {$CellContext`B$$, 0,
          20}, {$CellContext`mu$$, -5, 5}, {$CellContext`Delta$$, 0, 5}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{581., {255., 260.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
},
WindowSize->{683., 2180.6000000000004`},
Visible->True,
AuthoredSize->{683., 2180.6000000000004`},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (January 25, \
2013)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1463, 33, 79, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[1567, 37, 1124, 35, 31, "Input"],
Cell[2694, 74, 1961, 39, 351, "Output"]
}, Open  ]],
Cell[4670, 116, 68, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[4763, 120, 1432, 45, 65, "Input"],
Cell[6198, 167, 2119, 41, 473, "Output"]
}, Open  ]],
Cell[8332, 211, 91, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[8448, 215, 1192, 36, 48, "Input"],
Cell[9643, 253, 2268, 44, 379, "Output"]
}, Open  ]],
Cell[11926, 300, 67, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[12018, 304, 5351, 157, 201, "Input"],
Cell[17372, 463, 3701, 67, 517, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature owD2R@DPM#yXSCwMyhNYwIUw *)
