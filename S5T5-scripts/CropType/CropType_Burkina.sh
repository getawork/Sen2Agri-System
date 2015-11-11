#!/bin/bash

source set_build_folder.sh

./CropType.py -ref /mnt/Imagery_S2A/In-Situ_TDS/Burkina-Faso/BF_KOUM_LC_FO_2013.shp -ratio 0.75 -input \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150410_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150410_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150415_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150415_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150420_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150420_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150425_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150425_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150430_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150430_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150505_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150505_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150510_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150510_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150515_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150515_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150520_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150520_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150525_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150525_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150604_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150604_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150614_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150614_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150624_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150624_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150629_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150629_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150709_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150709_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150714_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150714_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150729_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150729_N2A_BurkinaD0000B0000.xml \
/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150823_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150823_N2A_BurkinaD0000B0000.xml \
-t0 20150410 -tend 20150823 -rate 5 -radius 100 -classifier rf -rseed 0 -mask /home/ramona/S5T5-Tests/CropType_Burkina/crop_mask.tif -pixsize 10 \
-outdir "/home/ramona/S5T5-Tests/CropType_Burkina/" -buildfolder $BUILD_FOLDER
