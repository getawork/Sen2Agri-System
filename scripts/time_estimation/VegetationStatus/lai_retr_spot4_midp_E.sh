#! /bin/bash

#USER modif
#add directories where SPOT products are to be found
inputXML="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130217_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130217_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130222_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130222_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130227_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130227_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130304_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130304_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130319_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130319_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130324_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130324_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130329_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130329_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130403_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130403_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130413_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130413_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130418_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130418_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130423_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130423_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130503_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130503_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130513_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130513_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130518_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130518_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130523_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130523_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130602_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130602_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130607_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130607_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130612_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130612_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Imagery_S2A/L2A/Spot4-T5/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130617_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130617_N2A_CSudmipy-ED0000B0000.xml "

#UNCOMMENT THE DEFINITIONS BELOW IF YO NEED OTHER VALUES

#parameters for BVInputVariableGeneration
#GENERATED_SAMPLES_NO=100

#parameters for ProSailSimulator
SOLAR_ZENITH_ANGLE=65.4794212596
SENSOR_ZENITH_ANGLE=13.1300856884
# Computed as PHI_V - 180 - PHI_S
# if (rel_az < -180.0) then rel_az = rel_az + 360.0
# if (rel_az > 180.0) then rel_az = rel_az - 360.0
# PHI_V>-73.809703566</PHI_V>
#<PHI_S>145.43902353</PHI_S>
RELATIVE_AZIMUTH_ANGLE=140.964187309

#parameters for TrainingDataGenerator
#BV_IDX=0
#ADD_REFLS=0
#RED_INDEX=0
#NIR_INDEX=2

#parameters for generating model
#REGRESSION_TYPE="nn"
#BEST_OF=1

#end of USER modif

RSR_FILE="../../../sen2agri-processors/VegetationStatus/otb-bv/data/spot4hrvir1.rsr"

if [ $# -lt 3 ]
then
  echo "Usage: $0 <resolution> <out folder name>"
  echo "The resolution for which the computations will be performed should be given.  The RSR filename should be given. The output directory should be given" 1>&2  
  exit
fi

./run_lai_retrieve.sh "$1" "$inputXML" "$2" "$3" $RSR_FILE $SOLAR_ZENITH_ANGLE $SENSOR_ZENITH_ANGLE $RELATIVE_AZIMUTH_ANGLE



