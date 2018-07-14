#########################################################################
# Create Folder Structure
#########################################################################

$(shell rm -rf $(TARGET_OUT_VENDOR)/rfs/)

#########################################################################
# MSM Folders
#########################################################################
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/msm/mpss/readonly)
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/msm/adsp/readonly)

$(shell ln -s /data/tombstones/modem $(TARGET_OUT_VENDOR)/rfs/msm/mpss/ramdumps)
$(shell ln -s /persist/rfs/msm/mpss $(TARGET_OUT_VENDOR)/rfs/msm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/mpss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/mpss/hlos)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/msm/mpss/readonly/firmware)

$(shell ln -s /data/tombstones/lpass $(TARGET_OUT_VENDOR)/rfs/msm/adsp/ramdumps)
$(shell ln -s /persist/rfs/msm/adsp $(TARGET_OUT_VENDOR)/rfs/msm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/adsp/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/adsp/hlos)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/msm/adsp/readonly/firmware)

#########################################################################
# MDM Folders
#########################################################################
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/readonly)
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/readonly)
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/mdm/sparrow/readonly)

$(shell ln -s /data/tombstones/modem $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/ramdumps)
$(shell ln -s /persist/rfs/mdm/mpss $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/hlos)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/readonly/firmware)

$(shell ln -s /data/tombstones/lpass $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/ramdumps)
$(shell ln -s /persist/rfs/mdm/adsp $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/hlos)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/readonly/firmware)

$(shell ln -s /data/tombstones/sparrow $(TARGET_OUT_VENDOR)/rfs/mdm/sparrow/ramdumps)
$(shell ln -s /persist/rfs/mdm/sparrow $(TARGET_OUT_VENDOR)/rfs/mdm/sparrow/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/sparrow/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/sparrow/hlos)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/sparrow/readonly/firmware)

#########################################################################
# APQ Folders
#########################################################################
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/apq/gnss/readonly)

$(shell ln -s /data/tombstones/modem $(TARGET_OUT_VENDOR)/rfs/apq/gnss/ramdumps)
$(shell ln -s /persist/rfs/apq/gnss $(TARGET_OUT_VENDOR)/rfs/apq/gnss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/apq/gnss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/apq/gnss/hlos)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/apq/gnss/readonly/firmware)