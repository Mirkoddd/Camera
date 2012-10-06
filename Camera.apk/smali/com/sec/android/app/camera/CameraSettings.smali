.class public Lcom/sec/android/app/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;,
        Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
    }
.end annotation


# static fields
.field public static final ANTISHAKE_OFF:I = 0x0

.field public static final ANTISHAKE_ON:I = 0x1

.field public static final ATTACHMODE_CAMCORDER_MMS:I = 0x2

.field public static final ATTACHMODE_CAMERA_MOBILEFAX:I = 0x3

.field public static final ATTACHMODE_NONE:I = 0x0

.field public static final ATTACHMODE_NORMAL:I = 0x1

.field public static final AUDIO_RECORDING_OFF:I = 0x0

.field public static final AUDIO_RECORDING_ON:I = 0x1

.field public static final AUTOCONTRAST_OFF:I = 0x0

.field public static final AUTOCONTRAST_ON:I = 0x1

.field public static final BLINKDETECTION_OFF:I = 0x0

.field public static final BLINKDETECTION_ON:I = 0x1

.field public static final CAMERA_SELF_OFF:I = 0x0

.field public static final CAMERA_SELF_ON:I = 0x1

.field protected static final CAMERA_SETTINGS_NOTOFICATION:I = 0x0

.field public static final DEFAULT_CAMCORDER_AUDIORECORDING:I = 0x1

.field protected static final DEFAULT_CAMCORDER_AUTOCONTRAST:I = 0x0

.field protected static DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMCORDER_FLASH:I = 0x0

.field protected static final DEFAULT_CAMCORDER_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMCORDER_SETUP_REVIEW:I = 0x0

.field protected static DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_CAMERA_AUTOCONTRAST:I = 0x0

.field protected static final DEFAULT_CAMERA_BLINKDETECTION:I = 0x0

.field protected static DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_EXPOSUREMETER:I = 0x0

.field protected static final DEFAULT_CAMERA_FLASH:I = 0x0

.field protected static final DEFAULT_CAMERA_FOCUS:I = 0x1

.field protected static final DEFAULT_CAMERA_ISO:I = 0x0

.field protected static final DEFAULT_CAMERA_MODE:I = 0x0

.field protected static final DEFAULT_CAMERA_OBJECTTRACKING:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_CAMERA_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMERA_SHOOTANDSHARE:I = 0x0

.field protected static DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CONTRAST:I = 0x2

.field public static final DEFAULT_CONTRAST_VALUE:I = 0x2

.field protected static final DEFAULT_EDITABLE_SHORTCUT_HELP_TEXT_DIALOG:I = 0x0

.field protected static final DEFAULT_EFFECT:I = 0x0

.field protected static final DEFAULT_EXPOSUREVALUE:I = 0x0

.field public static final DEFAULT_EXPOSURE_VALUE:I = 0x0

.field protected static final DEFAULT_FLIP_VALUE:I = 0x0

.field protected static final DEFAULT_NETWORK:I = 0x0

.field private static final DEFAULT_OUTDOOR_VISIBILITY:I = 0x0

.field protected static final DEFAULT_PREVIEW_FILE_RECEIVED:I = 0x0

.field protected static final DEFAULT_RECORDINGMODE:I = 0x0

.field protected static final DEFAULT_SATURATION:I = 0x2

.field public static final DEFAULT_SATURATION_VALUE:I = 0x2

.field protected static final DEFAULT_SCENEMODE:I = 0x0

.field protected static final DEFAULT_SETUP_GPS:I = 0x0

.field protected static final DEFAULT_SETUP_GUIDELINE:I = 0x0

.field protected static final DEFAULT_SETUP_REVIEW:I = 0x0

.field protected static final DEFAULT_SETUP_SHUTTERSOUND:I = 0x1

.field protected static final DEFAULT_SETUP_STORAGE:I = 0x0

.field protected static final DEFAULT_SHARPNESS:I = 0x2

.field public static final DEFAULT_SHARPNESS_VALUE:I = 0x2

.field protected static final DEFAULT_SHOOTINGMODE:I = 0x0

.field protected static final DEFAULT_SHUTTERSOUND:I = 0x1

.field protected static final DEFAULT_TIMER:I = 0x0

.field public static final DEFAULT_VIDEO_DURATION_VALUE:I = 0x3c

.field protected static final DEFAULT_VINTAGEMODE:I = 0x4

.field protected static final DEFAULT_WHITEBALANCE:I = 0x0

.field public static final DEFAULT_ZOOM_VALUE:I = 0x0

.field protected static final EDITABLE_SHORTCUT_HELP_TEXT_DIALOG_DISABLE_OFF:I = 0x0

.field protected static final EDITABLE_SHORTCUT_HELP_TEXT_DIALOG_DISABLE_ON:I = 0x1

.field public static final EFFECT_ANTIQUE:I = 0x5

.field public static final EFFECT_AQUA:I = 0x4

.field public static final EFFECT_BW:I = 0x2

.field public static final EFFECT_EMBOSS:I = 0x7

.field public static final EFFECT_NEGATIVE:I = 0x1

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_OUTLINE:I = 0x8

.field public static final EFFECT_SEPIA:I = 0x3

.field public static final EFFECT_SHARPEN:I = 0x6

.field public static final EV_0:I = 0x0

.field public static final EV_MINUS_0_5:I = -0x1

.field public static final EV_MINUS_1_0:I = -0x2

.field public static final EV_MINUS_1_5:I = -0x3

.field public static final EV_MINUS_2_0:I = -0x4

.field public static final EV_PLUS_0_5:I = 0x1

.field public static final EV_PLUS_1_0:I = 0x2

.field public static final EV_PLUS_1_5:I = 0x3

.field public static final EV_PLUS_2_0:I = 0x4

.field public static final EV_STEP:F = 0.5f

.field public static final EXPOSUREMETER_CENTER:I = 0x0

.field public static final EXPOSUREMETER_MATRIX:I = 0x2

.field public static final EXPOSUREMETER_SPOT:I = 0x1

.field public static final FLASHMODE_AUTO:I = 0x2

.field public static final FLASHMODE_OFF:I = 0x0

.field public static final FLASHMODE_ON:I = 0x1

.field public static final FLASHMODE_REDEYE:I = 0x3

.field public static final FLIP_OFF:I = 0x0

.field public static final FLIP_ON:I = 0x1

.field public static final FOCUSMODE_AF:I = 0x1

.field public static final FOCUSMODE_CONTINUOUS_VIDEO:I = 0x4

.field public static final FOCUSMODE_FACEDETECTION:I = 0x3

.field public static final FOCUSMODE_MACRO:I = 0x2

.field public static final FOCUSMODE_OFF:I = 0x0

.field public static final GPS_OFF:I = 0x0

.field public static final GPS_ON:I = 0x1

.field public static final GUIDELINE_OFF:I = 0x0

.field public static final GUIDELINE_ON:I = 0x1

.field public static final ISO_100:I = 0x2

.field public static final ISO_1200:I = 0x6

.field public static final ISO_1600:I = 0x7

.field public static final ISO_200:I = 0x3

.field public static final ISO_2400:I = 0x8

.field public static final ISO_3200:I = 0x9

.field public static final ISO_400:I = 0x4

.field public static final ISO_50:I = 0x1

.field public static final ISO_800:I = 0x5

.field public static final ISO_AUTO:I = 0x0

.field public static final ISO_MOVIE:I = 0xc

.field public static final ISO_NIGHT:I = 0xb

.field public static final ISO_SPORTS:I = 0xa

.field protected static final KEY_CAMCORDER_AUTOCONTRAST:Ljava/lang/String; = "pref_camcorder_autocontrast_key"

.field protected static final KEY_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = "pref_camcorder_editable_shortcut_order"

.field protected static final KEY_CAMCORDER_FLASH:Ljava/lang/String; = "pref_camcorder_flash_key"

.field protected static final KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "pref_camera_videoquality_key"

.field protected static final KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "pref_camcorder_resolution_key"

.field protected static final KEY_CAMCORDER_SETUP_REVIEW:Ljava/lang/String; = "pref_setup_camcorder_review_key"

.field protected static final KEY_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String; = "pref_camcorder_sidemenu_order"

.field protected static final KEY_CAMERA_ANTISHAKE:Ljava/lang/String; = "pref_camera_antishake_key"

.field protected static final KEY_CAMERA_AUTOCONTRAST:Ljava/lang/String; = "pref_camera_autocontrast_key"

.field protected static final KEY_CAMERA_BLINKDETECTION:Ljava/lang/String; = "pref_camera_blinkdetection_key"

.field protected static final KEY_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = "pref_camera_editable_shortcut_order"

.field protected static final KEY_CAMERA_EXPOSUREMETER:Ljava/lang/String; = "pref_camera_exposuremeter_key"

.field protected static final KEY_CAMERA_FLASH:Ljava/lang/String; = "pref_camera_flash_key"

.field protected static final KEY_CAMERA_FOCUS:Ljava/lang/String; = "pref_camera_focus_key"

.field protected static final KEY_CAMERA_ISO:Ljava/lang/String; = "pref_camera_iso_key"

.field protected static final KEY_CAMERA_MODE:Ljava/lang/String; = "pref_camera_mode"

.field protected static final KEY_CAMERA_NETWORK:Ljava/lang/String; = "pref_camera_network_key"

.field protected static final KEY_CAMERA_OBJECTTRACKING:Ljava/lang/String; = "pref_camera_objecttracking_key"

.field protected static final KEY_CAMERA_PREVIEW_FILE_RECEIVED:Ljava/lang/String; = "pref_camera_preview_file_received_key"

.field protected static final KEY_CAMERA_QUALITY:Ljava/lang/String; = "pref_camera_quality_key"

.field protected static final KEY_CAMERA_RESOLUTION:Ljava/lang/String; = "pref_camera_resolution_key"

.field protected static final KEY_CAMERA_SHOOTANDSHARE:Ljava/lang/String; = "pref_camera_shootandshare_key"

.field protected static final KEY_CAMERA_SIDEMENU_ORDER:Ljava/lang/String; = "pref_camera_sidemenu_order"

.field protected static final KEY_CAMERA_USER_PROFILE:Ljava/lang/String; = "pref_camera_user_profile_key"

.field protected static final KEY_EDITABLE_SHORTCUT_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_editable_shortcut_help_text_dialog"

.field protected static final KEY_PROFILR_NAME:Ljava/lang/String; = "pref_user_name"

.field protected static final KEY_SELF_FLIP:Ljava/lang/String; = "pref_self_flip_key"

.field protected static final KEY_SETUP_GPS:Ljava/lang/String; = "pref_setup_gps_key"

.field protected static final KEY_SETUP_GUIDELINE:Ljava/lang/String; = "pref_setup_guideline_key"

.field protected static final KEY_SETUP_REVIEW:Ljava/lang/String; = "pref_setup_review_key"

.field protected static final KEY_SETUP_SHUTTERSOUND:Ljava/lang/String; = "pref_setup_shuttersound_key"

.field protected static final KEY_SETUP_STORAGE:Ljava/lang/String; = "pref_setup_storage_key"

.field protected static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera_video_duration_key"

.field public static final MENUID_ADJUST:I = 0x17

.field public static final MENUID_ANTISHAKE:I = 0xd

.field public static final MENUID_ATTACH_MODE:I = 0x21

.field public static final MENUID_AUTOCONTRAST:I = 0xe

.field public static final MENUID_BACK:I = 0x1c

.field public static final MENUID_BLINKDETECTION:I = 0xf

.field public static final MENUID_CAMCORDER_ADJUST:I = 0x71

.field public static final MENUID_CAMCORDER_AUDIORECORDING:I = 0x77

.field public static final MENUID_CAMCORDER_AUTOCONTRAST:I = 0x6e

.field public static final MENUID_CAMCORDER_CONTRAST:I = 0x72

.field public static final MENUID_CAMCORDER_EFFECT:I = 0x6c

.field public static final MENUID_CAMCORDER_EXPOSUREVALUE:I = 0x6d

.field public static final MENUID_CAMCORDER_FLASHMODE:I = 0x67

.field public static final MENUID_CAMCORDER_FOCUSMODE:I = 0x69

.field public static final MENUID_CAMCORDER_GUIDELINE:I = 0x7a

.field public static final MENUID_CAMCORDER_MODE:I = 0x64

.field public static final MENUID_CAMCORDER_OUTDOOR_VISIBILITY:I = 0x79

.field public static final MENUID_CAMCORDER_QUALITY:I = 0x6f

.field public static final MENUID_CAMCORDER_RECORDINGMODE:I = 0x65

.field public static final MENUID_CAMCORDER_RESET:I = 0x76

.field public static final MENUID_CAMCORDER_RESOLUTION:I = 0x68

.field public static final MENUID_CAMCORDER_REVIEW:I = 0x78

.field public static final MENUID_CAMCORDER_SATURATION:I = 0x73

.field public static final MENUID_CAMCORDER_SCENEMODE:I = 0x66

.field public static final MENUID_CAMCORDER_SETTINGS:I = 0x7b

.field public static final MENUID_CAMCORDER_SHARPNESS:I = 0x74

.field public static final MENUID_CAMCORDER_STORAGE:I = 0x75

.field public static final MENUID_CAMCORDER_TIMER:I = 0x6a

.field public static final MENUID_CAMCORDER_WB:I = 0x6b

.field public static final MENUID_CAMCORDER_ZOOM:I = 0x70

.field public static final MENUID_CAM_SENSORMODE:I = 0x25

.field public static final MENUID_CONTRAST:I = 0x18

.field public static final MENUID_DEVICELIST:I = 0x28

.field public static final MENUID_EFFECT:I = 0x8

.field public static final MENUID_EXPOSUREMETER:I = 0xb

.field public static final MENUID_EXPOSUREVALUE:I = 0x7

.field public static final MENUID_FLASHMODE:I = 0x3

.field public static final MENUID_FOCUSMODE:I = 0x5

.field public static final MENUID_GPS:I = 0x14

.field public static final MENUID_GUIDELINE:I = 0x13

.field public static final MENUID_IMAGEVIEWER:I = 0x1d

.field public static final MENUID_ISO:I = 0xa

.field public static final MENUID_LOCK:I = 0x22

.field public static final MENUID_MODE:I = 0x0

.field public static final MENUID_NETWORK:I = 0x2b

.field public static final MENUID_OBJECTTRACKING:I = 0xc

.field public static final MENUID_OUTDOOR_VISIBILITY:I = 0x23

.field public static final MENUID_PREVIEWFILERECEIVED:I = 0x2a

.field public static final MENUID_QUALITY:I = 0x10

.field public static final MENUID_REFRESH:I = 0x2d

.field public static final MENUID_RESET:I = 0x1e

.field public static final MENUID_RESOLUTION:I = 0x4

.field public static final MENUID_REVIEW:I = 0x11

.field public static final MENUID_SATURATION:I = 0x19

.field public static final MENUID_SCENEMODE:I = 0x2

.field public static final MENUID_SELECTPICTURE:I = 0x2c

.field public static final MENUID_SELFSHOT:I = 0x24

.field public static final MENUID_SELF_FLIP:I = 0x26

.field public static final MENUID_SETTINGS:I = 0x1b

.field public static final MENUID_SHARPNESS:I = 0x1a

.field public static final MENUID_SHOOTANDSHARE:I = 0x27

.field public static final MENUID_SHOOTINGMODE:I = 0x1

.field public static final MENUID_SHUTTER:I = 0x20

.field public static final MENUID_SHUTTERSOUND:I = 0x15

.field public static final MENUID_STORAGE:I = 0x16

.field public static final MENUID_TIMER:I = 0x6

.field public static final MENUID_USERPROFILE:I = 0x29

.field public static final MENUID_VINTAGE:I = 0x1f

.field public static final MENUID_WB:I = 0x9

.field public static final MENUID_ZOOM:I = 0x12

#the value of this static final field might be set in the static constructor
.field protected static final MMS_VIDEO_DURATION:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final MMS_VIDEO_DURATION_KOR:I = 0x0

.field public static final MODE_CAMCORDER:I = 0x1

.field public static final MODE_CAMERA:I = 0x0

.field public static final NETWORK:I = 0x4

.field public static final NETWORK_ID:I = 0x3ea

.field public static final NO_VALUE:I = -0xffff

.field public static final OBJECTTRACKING_OFF:I = 0x0

.field public static final OBJECTTRACKING_ON:I = 0x1

.field public static final OUTDOOR_VISIBILITY_OFF:I = 0x0

.field public static final OUTDOOR_VISIBILITY_ON:I = 0x1

.field public static final PREVIEW_FILE_RECEIVED:I = 0x3

.field public static final PREVIEW_FILE_RECEIVED_OFF:I = 0x0

.field public static final PREVIEW_FILE_RECEIVED_ON:I = 0x1

.field public static final QUALITY_FINE:I = 0x1

.field public static final QUALITY_NORMAL:I = 0x2

.field public static final QUALITY_SUPERFINE:I = 0x0

.field public static final RECORDINGMODE_MMS:I = 0x1

.field public static final RECORDINGMODE_NORMAL:I = 0x0

.field public static final RECORDINGMODE_SELF:I = 0x3

.field public static final RECORDINGMODE_SLOWMOTION:I = 0x2

.field public static final REVIEW_OFF:I = 0x0

.field public static final REVIEW_ON:I = 0x1

.field public static final SCENEMODE_BACKLIGHT:I = 0xd

.field public static final SCENEMODE_BEACHSNOW:I = 0x6

.field public static final SCENEMODE_CANDLELIGHT:I = 0xc

.field public static final SCENEMODE_DAWNDUSK:I = 0x8

.field public static final SCENEMODE_FALLCOLOR:I = 0x9

.field public static final SCENEMODE_FIREWORK:I = 0xa

.field public static final SCENEMODE_INDOOR:I = 0x5

.field public static final SCENEMODE_LANDSCAPE:I = 0x2

.field public static final SCENEMODE_NIGHT:I = 0x3

.field public static final SCENEMODE_NONE:I = 0x0

.field public static final SCENEMODE_PORTRAIT:I = 0x1

.field public static final SCENEMODE_SPORTS:I = 0x4

.field public static final SCENEMODE_SUNSET:I = 0x7

.field public static final SCENEMODE_TEXT:I = 0xb

.field public static final SHOOTANDSHARE_OFF:I = 0x0

.field public static final SHOOTANDSHARE_ON:I = 0x1

.field public static final SHOOTINGMODE_ACTION_SHOT:I = 0xa

.field public static final SHOOTINGMODE_ADD_ME:I = 0x9

.field public static final SHOOTINGMODE_BEAUTY:I = 0x7

.field public static final SHOOTINGMODE_CARTOON:I = 0xd

.field public static final SHOOTINGMODE_CONTINUOUS:I = 0x1

.field public static final SHOOTINGMODE_FRAME:I = 0x5

.field public static final SHOOTINGMODE_HDR:I = 0xe

.field public static final SHOOTINGMODE_MOSAIC:I = 0x4

.field public static final SHOOTINGMODE_PANORAMA:I = 0x2

.field public static final SHOOTINGMODE_SELF:I = 0x6

.field public static final SHOOTINGMODE_SHOOTANDSHARE:I = 0xf

.field public static final SHOOTINGMODE_SINGLE:I = 0x0

.field public static final SHOOTINGMODE_SMILE:I = 0x3

.field public static final SHOOTINGMODE_STOP_MOTION:I = 0xb

.field public static final SHOOTINGMODE_VINTAGE:I = 0x8

.field public static final SHOOTINGMODE_VINTAGE_COOL:I = 0x2

.field public static final SHOOTINGMODE_VINTAGE_MONO:I = 0x3

.field public static final SHOOTINGMODE_VINTAGE_NORMAL:I = 0x0

.field public static final SHOOTINGMODE_VINTAGE_OFF:I = 0x4

.field public static final SHOOTINGMODE_VINTAGE_WARM:I = 0x1

.field public static final SHUTTER_CAMCORDER:I = 0x1

.field public static final SHUTTER_CAMERA:I = 0x0

.field public static final SHUTTER_SOUND_OFF:I = 0x0

.field public static final SHUTTER_SOUND_ON:I = 0x1

.field public static final STORAGE_MMC:I = 0x1

.field public static final STORAGE_PHONE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CameraSettings"

.field public static final TIMER_10S:I = 0x3

.field public static final TIMER_2S:I = 0x1

.field public static final TIMER_5S:I = 0x2

.field public static final TIMER_OFF:I = 0x0

.field public static final USER_PROFILE:I = 0x2

.field public static final USER_PROFILE_ID:I = 0x3e9

.field public static final WB_AUTO:I = 0x0

.field public static final WB_CLOUDY:I = 0x2

.field public static final WB_DAYLIGHT:I = 0x1

.field public static final WB_FLUORESCENT:I = 0x4

.field public static final WB_HORIZON:I = 0x6

.field public static final WB_INCANDESCENT:I = 0x3

.field public static final WB_SHADE:I = 0x5

.field private static mCamcorderResolution:I


# instance fields
.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAntiShake:I

.field private mAttachMMSMode:Z

.field private mAttachMode:Z

.field private mAutoContrast:I

.field private mBlinkDetection:I

.field private mCamcorderAudioRecording:I

.field private mCamcorderAutocontrast:I

.field private mCamcorderContrast:I

.field private mCamcorderEditableShortcutOrder:Ljava/lang/String;

.field private mCamcorderExposureValue:I

.field private mCamcorderFlashMode:I

.field private mCamcorderOutdoorVisibility:I

.field private mCamcorderQuality:I

.field private mCamcorderReview:I

.field private mCamcorderSaturation:I

.field private mCamcorderSharpness:I

.field private mCamcorderSidemenuOrder:Ljava/lang/String;

.field private mCamcorderTimer:I

.field private mCamcorderZoomValue:I

.field private mCameraEditableShortcutOrder:Ljava/lang/String;

.field private mCameraSidemenuOrder:Ljava/lang/String;

.field private mContrast:I

.field private mEditableShortcutHelpTextDialog:I

.field private mEffect:I

.field private mExposureMeter:I

.field private mExposureValue:I

.field private mFlashMode:I

.field private mFlip:I

.field private mFocusMode:I

.field private mGPS:I

.field private mGuideLine:I

.field private mISO:I

.field private mMainCameraSelected:Z

.field private mMaxMmsSize:J

.field private mMode:I

.field private mNetwork:I

.field protected mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

.field private mNumberOfCsShotCaptured:I

.field private mNumberOfCsShotSaved:I

.field private mObjectTracking:I

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOutdoorVisibility:I

.field protected mPreferences:Landroid/content/SharedPreferences;

.field private mPreviewFileReceived:I

.field protected mProp:Ljava/util/Properties;

.field private mQuality:I

.field private mRecordingMode:I

.field private mRequestedRecordingSize:J

.field private mResolution:I

.field private mReview:I

.field private mSaturation:I

.field private mSceneMode:I

.field private mSelfMode:I

.field private mSharpness:I

.field private mShootAndShare:I

.field public mShootingMode:I

.field private mShootingVintageMode:I

.field private mShutterSound:I

.field private mStorage:I

.field private mTempSceneMode:I

.field private mTempShootingMode:I

.field private mTimer:I

.field private mUserName:Ljava/lang/String;

.field private mUserProfile:Ljava/lang/String;

.field private mVideoDuration:I

.field private mVideocallPresetSelected:Z

.field private mWB:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 411
    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_QUALITY:I

    .line 478
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    .line 479
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->MMS_VIDEO_DURATION_KOR:I

    .line 510
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 511
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 512
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 513
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 8
    .parameter "activityContext"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    .line 105
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 110
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    .line 130
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 131
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    .line 139
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 156
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 177
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 195
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 205
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 217
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 254
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 312
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 313
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 314
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 316
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 349
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 377
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 378
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 380
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 382
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 383
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 384
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 385
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 386
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 387
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 388
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 389
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 390
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    .line 391
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    .line 393
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 394
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 396
    iput-wide v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 397
    iput-wide v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 399
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 403
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 404
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 514
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    .line 515
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    .line 516
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 517
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 536
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    .line 539
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 540
    return-void
.end method

.method public static getBeautyString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1908
    const-string v0, "face_beauty"

    return-object v0
.end method

.method public static getDefaultCameraQuality()I
    .registers 2

    .prologue
    .line 1180
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, code:Ljava/lang/String;
    const-string v1, "DTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "TMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "CRO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "TNL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "MAX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "TRG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "TMZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "MBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "TPL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1183
    :cond_4e
    const/4 v1, 0x1

    .line 1185
    :goto_4f
    return v1

    :cond_50
    const/4 v1, 0x0

    goto :goto_4f
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1997
    packed-switch p0, :pswitch_data_12

    .line 2007
    const-string v0, "none"

    :goto_5
    return-object v0

    .line 1999
    :pswitch_6
    const-string v0, "none"

    goto :goto_5

    .line 2001
    :pswitch_9
    const-string v0, "negative"

    goto :goto_5

    .line 2003
    :pswitch_c
    const-string v0, "mono"

    goto :goto_5

    .line 2005
    :pswitch_f
    const-string v0, "sepia"

    goto :goto_5

    .line 1997
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static getExposuremeterString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 2058
    packed-switch p0, :pswitch_data_10

    .line 2066
    const-string v0, "center"

    :goto_5
    return-object v0

    .line 2060
    :pswitch_6
    const-string v0, "center"

    goto :goto_5

    .line 2062
    :pswitch_9
    const-string v0, "spot"

    goto :goto_5

    .line 2064
    :pswitch_c
    const-string v0, "matrix"

    goto :goto_5

    .line 2058
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1967
    packed-switch p0, :pswitch_data_10

    .line 1975
    const-string v0, "auto"

    :goto_5
    return-object v0

    .line 1969
    :pswitch_6
    const-string v0, "auto"

    goto :goto_5

    .line 1971
    :pswitch_9
    const-string v0, "on"

    goto :goto_5

    .line 1973
    :pswitch_c
    const-string v0, "off"

    goto :goto_5

    .line 1967
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1980
    packed-switch p0, :pswitch_data_16

    .line 1992
    const-string v0, "auto"

    :goto_5
    return-object v0

    .line 1982
    :pswitch_6
    const-string v0, "fixed"

    goto :goto_5

    .line 1984
    :pswitch_9
    const-string v0, "auto"

    goto :goto_5

    .line 1986
    :pswitch_c
    const-string v0, "macro"

    goto :goto_5

    .line 1988
    :pswitch_f
    const-string v0, "facedetect"

    goto :goto_5

    .line 1990
    :pswitch_12
    const-string v0, "continuous-video"

    goto :goto_5

    .line 1980
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 779
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p2

    .line 781
    .end local p2
    :goto_8
    return p2

    .line 780
    .restart local p2
    :catch_9
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_8
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 2029
    packed-switch p0, :pswitch_data_28

    .line 2053
    :pswitch_3
    const-string v0, "auto"

    :goto_5
    return-object v0

    .line 2031
    :pswitch_6
    const-string v0, "auto"

    goto :goto_5

    .line 2033
    :pswitch_9
    const-string v0, "50"

    goto :goto_5

    .line 2035
    :pswitch_c
    const-string v0, "100"

    goto :goto_5

    .line 2037
    :pswitch_f
    const-string v0, "200"

    goto :goto_5

    .line 2039
    :pswitch_12
    const-string v0, "400"

    goto :goto_5

    .line 2041
    :pswitch_15
    const-string v0, "800"

    goto :goto_5

    .line 2043
    :pswitch_18
    const-string v0, "1600"

    goto :goto_5

    .line 2045
    :pswitch_1b
    const-string v0, "3200"

    goto :goto_5

    .line 2047
    :pswitch_1e
    const-string v0, "sports"

    goto :goto_5

    .line 2049
    :pswitch_21
    const-string v0, "night"

    goto :goto_5

    .line 2051
    :pswitch_24
    const-string v0, "movie"

    goto :goto_5

    .line 2029
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_3
        :pswitch_18
        :pswitch_3
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public static getModeString(I)Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 1831
    sparse-switch p0, :sswitch_data_60

    .line 1903
    const-string v0, "unknown"

    :goto_5
    return-object v0

    .line 1833
    :sswitch_6
    const-string v0, "scene-mode"

    goto :goto_5

    .line 1835
    :sswitch_9
    const-string v0, "flash-mode"

    goto :goto_5

    .line 1837
    :sswitch_c
    const-string v0, "picture-size"

    goto :goto_5

    .line 1839
    :sswitch_f
    const-string v0, "focus-mode"

    goto :goto_5

    .line 1841
    :sswitch_12
    const-string v0, "exposure-compensation"

    goto :goto_5

    .line 1843
    :sswitch_15
    const-string v0, "effect"

    goto :goto_5

    .line 1845
    :sswitch_18
    const-string v0, "whitebalance"

    goto :goto_5

    .line 1847
    :sswitch_1b
    const-string v0, "iso"

    goto :goto_5

    .line 1849
    :sswitch_1e
    const-string v0, "jpeg-quality"

    goto :goto_5

    .line 1851
    :sswitch_21
    const-string v0, "zoom"

    goto :goto_5

    .line 1853
    :sswitch_24
    const-string v0, "metering"

    goto :goto_5

    .line 1855
    :sswitch_27
    const-string v0, "anti-shake"

    goto :goto_5

    .line 1857
    :sswitch_2a
    const-string v0, "wdr"

    goto :goto_5

    .line 1859
    :sswitch_2d
    const-string v0, "wdr"

    goto :goto_5

    .line 1861
    :sswitch_30
    const-string v0, "obj-tracking"

    goto :goto_5

    .line 1863
    :sswitch_33
    const-string v0, "contrast"

    goto :goto_5

    .line 1865
    :sswitch_36
    const-string v0, "saturation"

    goto :goto_5

    .line 1867
    :sswitch_39
    const-string v0, "sharpness"

    goto :goto_5

    .line 1869
    :sswitch_3c
    const-string v0, "flash-mode"

    goto :goto_5

    .line 1871
    :sswitch_3f
    const-string v0, "video-size"

    goto :goto_5

    .line 1873
    :sswitch_42
    const-string v0, "exposure-compensation"

    goto :goto_5

    .line 1875
    :sswitch_45
    const-string v0, "effect"

    goto :goto_5

    .line 1877
    :sswitch_48
    const-string v0, "whitebalance"

    goto :goto_5

    .line 1879
    :sswitch_4b
    const-string v0, "wdr"

    goto :goto_5

    .line 1881
    :sswitch_4e
    const-string v0, "jpeg-quality"

    goto :goto_5

    .line 1883
    :sswitch_51
    const-string v0, "zoom"

    goto :goto_5

    .line 1885
    :sswitch_54
    const-string v0, "contrast"

    goto :goto_5

    .line 1887
    :sswitch_57
    const-string v0, "saturation"

    goto :goto_5

    .line 1889
    :sswitch_5a
    const-string v0, "sharpness"

    goto :goto_5

    .line 1891
    :sswitch_5d
    const-string v0, "cam_mode"

    goto :goto_5

    .line 1831
    :sswitch_data_60
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_9
        0x4 -> :sswitch_c
        0x5 -> :sswitch_f
        0x7 -> :sswitch_12
        0x8 -> :sswitch_15
        0x9 -> :sswitch_18
        0xa -> :sswitch_1b
        0xb -> :sswitch_24
        0xc -> :sswitch_30
        0xd -> :sswitch_27
        0xe -> :sswitch_2a
        0xf -> :sswitch_2d
        0x10 -> :sswitch_1e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_33
        0x19 -> :sswitch_36
        0x1a -> :sswitch_39
        0x25 -> :sswitch_5d
        0x67 -> :sswitch_3c
        0x68 -> :sswitch_3f
        0x6b -> :sswitch_48
        0x6c -> :sswitch_45
        0x6d -> :sswitch_42
        0x6e -> :sswitch_4b
        0x6f -> :sswitch_4e
        0x70 -> :sswitch_51
        0x72 -> :sswitch_54
        0x73 -> :sswitch_57
        0x74 -> :sswitch_5a
    .end sparse-switch
.end method

.method public static getQualityValue(I)I
    .registers 2
    .parameter "value"

    .prologue
    const/16 v0, 0x64

    .line 2071
    packed-switch p0, :pswitch_data_c

    .line 2079
    :goto_5
    :pswitch_5
    return v0

    .line 2075
    :pswitch_6
    const/16 v0, 0x46

    goto :goto_5

    .line 2077
    :pswitch_9
    const/16 v0, 0x28

    goto :goto_5

    .line 2071
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1932
    packed-switch p0, :pswitch_data_30

    .line 1962
    const-string v0, "auto"

    :goto_5
    return-object v0

    .line 1934
    :pswitch_6
    const-string v0, "auto"

    goto :goto_5

    .line 1936
    :pswitch_9
    const-string v0, "portrait"

    goto :goto_5

    .line 1938
    :pswitch_c
    const-string v0, "landscape"

    goto :goto_5

    .line 1940
    :pswitch_f
    const-string v0, "sports"

    goto :goto_5

    .line 1942
    :pswitch_12
    const-string v0, "sunset"

    goto :goto_5

    .line 1944
    :pswitch_15
    const-string v0, "dusk-dawn"

    goto :goto_5

    .line 1946
    :pswitch_18
    const-string v0, "fireworks"

    goto :goto_5

    .line 1948
    :pswitch_1b
    const-string v0, "beach"

    goto :goto_5

    .line 1950
    :pswitch_1e
    const-string v0, "party"

    goto :goto_5

    .line 1952
    :pswitch_21
    const-string v0, "night"

    goto :goto_5

    .line 1954
    :pswitch_24
    const-string v0, "fall-color"

    goto :goto_5

    .line 1956
    :pswitch_27
    const-string v0, "text"

    goto :goto_5

    .line 1958
    :pswitch_2a
    const-string v0, "candlelight"

    goto :goto_5

    .line 1960
    :pswitch_2d
    const-string v0, "back-light"

    goto :goto_5

    .line 1932
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_21
        :pswitch_f
        :pswitch_1e
        :pswitch_1b
        :pswitch_12
        :pswitch_15
        :pswitch_24
        :pswitch_18
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public static getVideoSize()I
    .registers 1

    .prologue
    .line 1459
    sget v0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    return v0
.end method

.method public static getVintageModeString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1916
    packed-switch p0, :pswitch_data_16

    .line 1928
    const-string v0, "normal"

    :goto_5
    return-object v0

    .line 1918
    :pswitch_6
    const-string v0, "normal"

    goto :goto_5

    .line 1920
    :pswitch_9
    const-string v0, "warm"

    goto :goto_5

    .line 1922
    :pswitch_c
    const-string v0, "cool"

    goto :goto_5

    .line 1924
    :pswitch_f
    const-string v0, "bnw"

    goto :goto_5

    .line 1926
    :pswitch_12
    const-string v0, "off"

    goto :goto_5

    .line 1916
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public static getVintageString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1912
    const-string v0, "vintagemode"

    return-object v0
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 2012
    packed-switch p0, :pswitch_data_16

    .line 2024
    const-string v0, "auto"

    :goto_5
    return-object v0

    .line 2014
    :pswitch_6
    const-string v0, "auto"

    goto :goto_5

    .line 2016
    :pswitch_9
    const-string v0, "daylight"

    goto :goto_5

    .line 2018
    :pswitch_c
    const-string v0, "cloudy-daylight"

    goto :goto_5

    .line 2020
    :pswitch_f
    const-string v0, "incandescent"

    goto :goto_5

    .line 2022
    :pswitch_12
    const-string v0, "fluorescent"

    goto :goto_5

    .line 2012
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 2581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 2582
    return-void
.end method

.method public getAntishake()I
    .registers 4

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_antishake_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttachMMSMode()Z
    .registers 2

    .prologue
    .line 1654
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    return v0
.end method

.method public getAttachMode()Z
    .registers 2

    .prologue
    .line 1646
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    return v0
.end method

.method public getBlinkdetection()I
    .registers 4

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_blinkdetection_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderAudioRecording()I
    .registers 2

    .prologue
    .line 1604
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderAutocontrast()I
    .registers 2

    .prologue
    .line 1134
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    return v0
.end method

.method public getCamcorderContrast()I
    .registers 2

    .prologue
    .line 1568
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    return v0
.end method

.method public getCamcorderEditableShortcutOrder()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2659
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_editable_shortcut_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCamcorderExposureValue()I
    .registers 2

    .prologue
    .line 896
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    return v0
.end method

.method public getCamcorderFlashMode()I
    .registers 4

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_flash_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderModeResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a006e

    .line 2409
    packed-switch p1, :pswitch_data_32

    .line 2419
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2411
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2413
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2415
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2417
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2409
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method public getCamcorderOutdoorVisibility()I
    .registers 2

    .prologue
    .line 1679
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    return v0
.end method

.method public getCamcorderQuality()I
    .registers 4

    .prologue
    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_videoquality_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderResolution()I
    .registers 4

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderReview()I
    .registers 4

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_camcorder_review_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderSaturation()I
    .registers 2

    .prologue
    .line 1580
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    return v0
.end method

.method public getCamcorderSharpness()I
    .registers 2

    .prologue
    .line 1592
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    return v0
.end method

.method public getCamcorderSideMenuOrder()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2628
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_sidemenu_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCamcorderTimer()I
    .registers 2

    .prologue
    .line 1443
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    return v0
.end method

.method public getCamcorderZoomValue()I
    .registers 2

    .prologue
    .line 1390
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    return v0
.end method

.method public getCameraAutocontrast()I
    .registers 2

    .prologue
    .line 1122
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    return v0
.end method

.method public getCameraContrast()I
    .registers 2

    .prologue
    .line 1342
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    return v0
.end method

.method public getCameraEditableShortcutOrder()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_editable_shortcut_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraExposureValue()I
    .registers 2

    .prologue
    .line 884
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    return v0
.end method

.method public getCameraFlashMode()I
    .registers 4

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_flash_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraOutdoorVisibility()I
    .registers 2

    .prologue
    .line 1662
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    return v0
.end method

.method public getCameraQuality()I
    .registers 4

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_quality_key"

    sget v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_QUALITY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolution()I
    .registers 4

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraSaturation()I
    .registers 2

    .prologue
    .line 1354
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    return v0
.end method

.method public getCameraSharpness()I
    .registers 2

    .prologue
    .line 1366
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    return v0
.end method

.method public getCameraSideMenuOrder()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2613
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_sidemenu_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraZoomValue()I
    .registers 2

    .prologue
    .line 1378
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    return v0
.end method

.method public getDefaultCamcorderResolution()I
    .registers 2

    .prologue
    .line 1463
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultCameraResolution()I
    .registers 2

    .prologue
    .line 941
    const-string v0, "3264x2448"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEditableShortcutHelpTextDialog()I
    .registers 3

    .prologue
    .line 2674
    const-string v0, "pref_editable_shortcut_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEffect()I
    .registers 2

    .prologue
    .line 1039
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    return v0
.end method

.method public getEffectResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a002f

    .line 2221
    packed-switch p1, :pswitch_data_32

    .line 2231
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2223
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2225
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2227
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2229
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2221
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method public getExposureMeterResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a0069

    .line 2294
    packed-switch p1, :pswitch_data_28

    .line 2302
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2296
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2298
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2300
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2294
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1e
    .end packed-switch
.end method

.method public getExposureValueResourceString(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 2196
    packed-switch p1, :pswitch_data_46

    .line 2216
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    .line 2198
    :pswitch_9
    const/high16 v0, -0x4000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2200
    :pswitch_10
    const/high16 v0, -0x4040

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2202
    :pswitch_17
    const/high16 v0, -0x4080

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2204
    :pswitch_1e
    const/high16 v0, -0x4100

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2206
    :pswitch_25
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2208
    :pswitch_2a
    const/high16 v0, 0x3f00

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2210
    :pswitch_31
    const/high16 v0, 0x3f80

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2212
    :pswitch_38
    const/high16 v0, 0x3fc0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2214
    :pswitch_3f
    const/high16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2196
    :pswitch_data_46
    .packed-switch -0x4
        :pswitch_9
        :pswitch_10
        :pswitch_17
        :pswitch_1e
        :pswitch_25
        :pswitch_2a
        :pswitch_31
        :pswitch_38
        :pswitch_3f
    .end packed-switch
.end method

.method public getExposuremeter()I
    .registers 4

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_exposuremeter_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposuremeterFromSceneMode(I)I
    .registers 3
    .parameter "sceneMode"

    .prologue
    .line 2585
    const/4 v0, 0x0

    .line 2587
    .local v0, nExposuremeter:I
    packed-switch p1, :pswitch_data_a

    .line 2609
    :goto_4
    :pswitch_4
    return v0

    .line 2601
    :pswitch_5
    const/4 v0, 0x2

    .line 2602
    goto :goto_4

    .line 2604
    :pswitch_7
    const/4 v0, 0x1

    .line 2605
    goto :goto_4

    .line 2587
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public getFlashModeResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a005c

    .line 2119
    packed-switch p1, :pswitch_data_28

    .line 2127
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2121
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2123
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2125
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2119
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_14
        :pswitch_d
    .end packed-switch
.end method

.method public getFlip()I
    .registers 4

    .prologue
    .line 1696
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_self_flip_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFocusMode()I
    .registers 4

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFocusModeResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a005d

    .line 2181
    packed-switch p1, :pswitch_data_30

    .line 2191
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2183
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2185
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2187
    :pswitch_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2189
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2181
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_25
    .end packed-switch
.end method

.method public getGps()I
    .registers 4

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_gps_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGuideline()I
    .registers 4

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_guideline_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getISO()I
    .registers 4

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_iso_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getISOResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a0033

    .line 2253
    packed-switch p1, :pswitch_data_76

    .line 2277
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2255
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2257
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2259
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2261
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2263
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2265
    :pswitch_3c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2267
    :pswitch_46
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2269
    :pswitch_50
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2271
    :pswitch_5a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2273
    :pswitch_64
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2275
    :pswitch_6e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2253
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1e
        :pswitch_28
        :pswitch_32
        :pswitch_3c
        :pswitch_6
        :pswitch_46
        :pswitch_6
        :pswitch_50
        :pswitch_5a
        :pswitch_64
        :pswitch_6e
    .end packed-switch
.end method

.method public getMaxRecordingSize()J
    .registers 5

    .prologue
    .line 752
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 753
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 755
    :cond_d
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    return-wide v0
.end method

.method public getMaxVideoDurationInMs()I
    .registers 4

    .prologue
    .line 712
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 714
    .local v0, microsec:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 721
    sget v1, Lcom/sec/android/app/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 725
    :goto_f
    return v1

    :cond_10
    const v1, 0xea60

    mul-int/2addr v1, v0

    goto :goto_f
.end method

.method public getMode()I
    .registers 4

    .prologue
    .line 786
    const-string v0, "GT-I9100"

    const-string v1, "SGH-I577"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 787
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 788
    :cond_17
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    return v0
.end method

.method public getModeResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a0001

    .line 2317
    packed-switch p1, :pswitch_data_1e

    .line 2323
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2319
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2321
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2317
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method

.method public getNetWork()I
    .registers 4

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_network_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 1262
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    return v0
.end method

.method public getNumberOfCsShotCaptured()I
    .registers 2

    .prologue
    .line 2546
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    return v0
.end method

.method public getNumberOfCsShotSaved()I
    .registers 2

    .prologue
    .line 2554
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    return v0
.end method

.method public getObjecttracking()I
    .registers 4

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_objecttracking_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOnOffResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 2307
    packed-switch p1, :pswitch_data_18

    .line 2312
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2309
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2307
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 768
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getQualityResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 2282
    packed-switch p1, :pswitch_data_22

    .line 2289
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2284
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2286
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2282
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_d
        :pswitch_17
    .end packed-switch
.end method

.method public getRecordingMode()I
    .registers 2

    .prologue
    .line 1403
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    return v0
.end method

.method public getRequestedRecordingSize()J
    .registers 5

    .prologue
    .line 741
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 742
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 744
    :cond_d
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    return-wide v0
.end method

.method public getResolutionResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a005b

    .line 2132
    packed-switch p1, :pswitch_data_e6

    .line 2176
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2134
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2136
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2138
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2140
    :pswitch_2b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2142
    :pswitch_35
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2144
    :pswitch_3f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2146
    :pswitch_49
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2148
    :pswitch_53
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2150
    :pswitch_5d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2152
    :pswitch_67
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2154
    :pswitch_71
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2156
    :pswitch_7b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2158
    :pswitch_85
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2160
    :pswitch_90
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2162
    :pswitch_9b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2164
    :pswitch_a6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2166
    :pswitch_b1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2168
    :pswitch_bc
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2170
    :pswitch_c7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2172
    :pswitch_d2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2174
    :pswitch_dd
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2132
    nop

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_d
        :pswitch_17
        :pswitch_2b
        :pswitch_35
        :pswitch_3f
        :pswitch_49
        :pswitch_5d
        :pswitch_67
        :pswitch_7b
        :pswitch_85
        :pswitch_90
        :pswitch_a6
        :pswitch_9b
        :pswitch_71
        :pswitch_b1
        :pswitch_bc
        :pswitch_c7
        :pswitch_d2
        :pswitch_dd
        :pswitch_21
        :pswitch_53
    .end packed-switch
.end method

.method public getReview()I
    .registers 4

    .prologue
    .line 1209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_review_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReviewResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a008f

    .line 2376
    packed-switch p1, :pswitch_data_1e

    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2378
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2380
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2376
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method

.method public getSceneMode()I
    .registers 2

    .prologue
    .line 849
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    return v0
.end method

.method public getSceneModeResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a0073

    .line 2084
    packed-switch p1, :pswitch_data_98

    .line 2114
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2086
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2088
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2090
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2092
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2094
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2096
    :pswitch_3c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2098
    :pswitch_46
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2100
    :pswitch_50
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2102
    :pswitch_5a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2104
    :pswitch_64
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2106
    :pswitch_6e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2108
    :pswitch_78
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2110
    :pswitch_82
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2112
    :pswitch_8c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 2084
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1e
        :pswitch_64
        :pswitch_28
        :pswitch_5a
        :pswitch_50
        :pswitch_32
        :pswitch_3c
        :pswitch_6e
        :pswitch_46
        :pswitch_78
        :pswitch_82
        :pswitch_8c
    .end packed-switch
.end method

.method public getSelfMode()I
    .registers 2

    .prologue
    .line 805
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    return v0
.end method

.method public getSettingValue(I)I
    .registers 9
    .parameter "menuid"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2690
    packed-switch p1, :pswitch_data_17c

    .line 2829
    :pswitch_5
    const v4, -0xffff

    :cond_8
    :goto_8
    return v4

    .line 2692
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v4

    goto :goto_8

    .line 2694
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v3

    if-ne v3, v4, :cond_31

    .line 2695
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSettingValue :: mTempShootingMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    goto :goto_8

    .line 2698
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    goto :goto_8

    .line 2701
    :pswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v4

    goto :goto_8

    .line 2703
    :pswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    goto :goto_8

    .line 2705
    :pswitch_40
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    goto :goto_8

    .line 2707
    :pswitch_45
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v4

    goto :goto_8

    .line 2709
    :pswitch_4a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v4

    goto :goto_8

    .line 2711
    :pswitch_4f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v4

    goto :goto_8

    .line 2713
    :pswitch_54
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEffect()I

    move-result v4

    goto :goto_8

    .line 2715
    :pswitch_59
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    goto :goto_8

    .line 2717
    :pswitch_5e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v4

    goto :goto_8

    .line 2719
    :pswitch_63
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v4

    goto :goto_8

    .line 2721
    :pswitch_68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v4

    goto :goto_8

    .line 2723
    :pswitch_6d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v4

    goto :goto_8

    .line 2725
    :pswitch_72
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v4

    goto :goto_8

    .line 2727
    :pswitch_77
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v4

    goto :goto_8

    .line 2729
    :pswitch_7c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    goto :goto_8

    .line 2731
    :pswitch_81
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v4

    goto :goto_8

    .line 2733
    :pswitch_86
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v4

    goto/16 :goto_8

    .line 2736
    :pswitch_8c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v4

    goto/16 :goto_8

    .line 2738
    :pswitch_92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v4

    goto/16 :goto_8

    .line 2740
    :pswitch_98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v4

    goto/16 :goto_8

    .line 2742
    :pswitch_9e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v4

    goto/16 :goto_8

    .line 2744
    :pswitch_a4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    goto/16 :goto_8

    .line 2746
    :pswitch_aa
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v4

    goto/16 :goto_8

    .line 2749
    :pswitch_b0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v4

    goto/16 :goto_8

    .line 2751
    :pswitch_b6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v4

    goto/16 :goto_8

    .line 2753
    :pswitch_bc
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v4

    goto/16 :goto_8

    .line 2763
    :pswitch_c2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v4

    goto/16 :goto_8

    .line 2765
    :pswitch_c8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v4

    goto/16 :goto_8

    .line 2768
    :pswitch_ce
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v4

    goto/16 :goto_8

    .line 2771
    :pswitch_d4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v4

    goto/16 :goto_8

    .line 2773
    :pswitch_da
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    goto/16 :goto_8

    .line 2776
    :pswitch_e0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v4

    goto/16 :goto_8

    .line 2778
    :pswitch_e6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    goto/16 :goto_8

    .line 2780
    :pswitch_ec
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEffect()I

    move-result v4

    goto/16 :goto_8

    .line 2782
    :pswitch_f2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v4

    goto/16 :goto_8

    .line 2784
    :pswitch_f8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v4

    goto/16 :goto_8

    .line 2786
    :pswitch_fe
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    goto/16 :goto_8

    .line 2788
    :pswitch_104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    goto/16 :goto_8

    .line 2791
    :pswitch_10a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v4

    goto/16 :goto_8

    .line 2793
    :pswitch_110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v4

    goto/16 :goto_8

    .line 2795
    :pswitch_116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v4

    goto/16 :goto_8

    .line 2798
    :pswitch_11c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    goto/16 :goto_8

    .line 2800
    :pswitch_122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v4

    goto/16 :goto_8

    .line 2802
    :pswitch_128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v4

    goto/16 :goto_8

    .line 2804
    :pswitch_12e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    goto/16 :goto_8

    .line 2807
    :pswitch_134
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v6, 0xf

    if-ne v3, v6, :cond_140

    move v3, v4

    :goto_13d
    move v4, v3

    goto/16 :goto_8

    :cond_140
    move v3, v5

    goto :goto_13d

    .line 2809
    :pswitch_142
    const/4 v0, 0x1

    .line 2811
    .local v0, b:Z
    :try_start_143
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_155

    .line 2812
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->getAutoPreview()Z
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_143 .. :try_end_154} :catch_15a

    move-result v0

    .line 2817
    :cond_155
    :goto_155
    if-nez v0, :cond_8

    move v4, v5

    goto/16 :goto_8

    .line 2813
    :catch_15a
    move-exception v1

    .line 2815
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_155

    .line 2819
    .end local v0           #b:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_15f
    const/4 v2, 0x1

    .line 2821
    .local v2, f:Z
    :try_start_160
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_172

    .line 2822
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_171} :catch_177

    move-result v2

    .line 2827
    :cond_172
    :goto_172
    if-nez v2, :cond_8

    move v4, v5

    goto/16 :goto_8

    .line 2823
    :catch_177
    move-exception v1

    .line 2825
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_172

    .line 2690
    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_e
        :pswitch_36
        :pswitch_3b
        :pswitch_40
        :pswitch_45
        :pswitch_4a
        :pswitch_4f
        :pswitch_54
        :pswitch_59
        :pswitch_5e
        :pswitch_63
        :pswitch_68
        :pswitch_6d
        :pswitch_72
        :pswitch_77
        :pswitch_7c
        :pswitch_81
        :pswitch_86
        :pswitch_8c
        :pswitch_92
        :pswitch_9e
        :pswitch_a4
        :pswitch_5
        :pswitch_b0
        :pswitch_b6
        :pswitch_bc
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_aa
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_c2
        :pswitch_c8
        :pswitch_5
        :pswitch_98
        :pswitch_134
        :pswitch_5
        :pswitch_5
        :pswitch_142
        :pswitch_15f
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_ce
        :pswitch_ce
        :pswitch_5
        :pswitch_d4
        :pswitch_da
        :pswitch_5
        :pswitch_e0
        :pswitch_e6
        :pswitch_ec
        :pswitch_f2
        :pswitch_f8
        :pswitch_fe
        :pswitch_104
        :pswitch_5
        :pswitch_10a
        :pswitch_110
        :pswitch_116
        :pswitch_12e
        :pswitch_5
        :pswitch_11c
        :pswitch_122
        :pswitch_128
        :pswitch_8c
    .end packed-switch
.end method

.method public getShootAndShare()I
    .registers 4

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_shootandshare_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    .line 1227
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    return v0
.end method

.method public getShootingMode()I
    .registers 2

    .prologue
    .line 830
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    return v0
.end method

.method public getShootingModeResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a0020

    .line 2328
    packed-switch p1, :pswitch_data_8c

    .line 2356
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2330
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2332
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2334
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2336
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2338
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2340
    :pswitch_3c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2342
    :pswitch_46
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2344
    :pswitch_50
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2346
    :pswitch_5a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2348
    :pswitch_64
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2350
    :pswitch_6e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2352
    :pswitch_78
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2354
    :pswitch_82
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2328
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1e
        :pswitch_28
        :pswitch_6
        :pswitch_6
        :pswitch_32
        :pswitch_3c
        :pswitch_46
        :pswitch_50
        :pswitch_5a
        :pswitch_64
        :pswitch_6
        :pswitch_6e
        :pswitch_78
        :pswitch_82
    .end packed-switch
.end method

.method public getShootingVintageMode()I
    .registers 2

    .prologue
    .line 1634
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    return v0
.end method

.method public getShutterSound()I
    .registers 4

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_shuttersound_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShutterSoundResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a008e

    .line 2387
    packed-switch p1, :pswitch_data_1e

    .line 2393
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2389
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2391
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2387
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_17
    .end packed-switch
.end method

.method public getStorage()I
    .registers 4

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_storage_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStorageResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a006c

    .line 2398
    packed-switch p1, :pswitch_data_1e

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2400
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2402
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a006d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2398
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "menuid"

    .prologue
    .line 1747
    sparse-switch p1, :sswitch_data_12c

    .line 1826
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 1749
    :sswitch_d
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1751
    :sswitch_14
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1753
    :sswitch_1b
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getResolutionResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1755
    :sswitch_22
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1757
    :sswitch_29
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValueResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1759
    :sswitch_30
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getOnOffResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1761
    :sswitch_37
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffectResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1763
    :sswitch_3e
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalanceResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1765
    :sswitch_45
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getISOResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1767
    :sswitch_4c
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getQualityResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1769
    :sswitch_53
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1771
    :sswitch_5a
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureMeterResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1773
    :sswitch_61
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getOnOffResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1775
    :sswitch_68
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getOnOffResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1777
    :sswitch_6f
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkDetection:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getOnOffResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1779
    :sswitch_76
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjectTracking:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getOnOffResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1781
    :sswitch_7d
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1783
    :sswitch_84
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1785
    :sswitch_8b
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1787
    :sswitch_93
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorageResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1789
    :sswitch_9b
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1791
    :sswitch_a3
    sget v0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getResolutionResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1793
    :sswitch_ab
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValueResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1795
    :sswitch_b3
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getQualityResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1797
    :sswitch_bb
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1799
    :sswitch_c3
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1801
    :sswitch_cb
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1803
    :sswitch_d3
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1805
    :sswitch_db
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1807
    :sswitch_e3
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1809
    :sswitch_eb
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimerResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1811
    :sswitch_f3
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getOnOffResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1813
    :sswitch_fb
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getReviewResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1815
    :sswitch_103
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getOnOffResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1817
    :sswitch_10b
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getOnOffResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1819
    :sswitch_113
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSoundResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1822
    :sswitch_11b
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1824
    :sswitch_123
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimerResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1747
    nop

    :sswitch_data_12c
    .sparse-switch
        0x0 -> :sswitch_db
        0x1 -> :sswitch_e3
        0x2 -> :sswitch_d
        0x3 -> :sswitch_14
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_22
        0x6 -> :sswitch_eb
        0x7 -> :sswitch_29
        0x8 -> :sswitch_37
        0x9 -> :sswitch_3e
        0xa -> :sswitch_45
        0xb -> :sswitch_5a
        0xc -> :sswitch_76
        0xd -> :sswitch_61
        0xe -> :sswitch_68
        0xf -> :sswitch_6f
        0x10 -> :sswitch_4c
        0x11 -> :sswitch_fb
        0x12 -> :sswitch_53
        0x13 -> :sswitch_f3
        0x14 -> :sswitch_103
        0x15 -> :sswitch_113
        0x16 -> :sswitch_93
        0x18 -> :sswitch_7d
        0x19 -> :sswitch_84
        0x1a -> :sswitch_8b
        0x23 -> :sswitch_30
        0x26 -> :sswitch_10b
        0x64 -> :sswitch_11b
        0x65 -> :sswitch_11b
        0x67 -> :sswitch_9b
        0x68 -> :sswitch_a3
        0x6a -> :sswitch_123
        0x6d -> :sswitch_ab
        0x6f -> :sswitch_b3
        0x70 -> :sswitch_bb
        0x72 -> :sswitch_c3
        0x73 -> :sswitch_cb
        0x74 -> :sswitch_d3
    .end sparse-switch
.end method

.method public getTimer()I
    .registers 2

    .prologue
    .line 925
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    return v0
.end method

.method public getTimerResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a008f

    .line 2361
    packed-switch p1, :pswitch_data_32

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2363
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2365
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0063

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2367
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2369
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2361
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method public getUserName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalance()I
    .registers 2

    .prologue
    .line 1024
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    return v0
.end method

.method public getWhiteBalanceResourceString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const v1, 0x7f0a0033

    .line 2236
    packed-switch p1, :pswitch_data_3c

    .line 2248
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2238
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2240
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2242
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2244
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2246
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 2236
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1e
        :pswitch_28
        :pswitch_32
    .end packed-switch
.end method

.method protected handleNotification(II)V
    .registers 6
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1737
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 1738
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1740
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1741
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_9

    .line 1743
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1

    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 1744
    return-void
.end method

.method public initializeCamcorder()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_sidemenu_order"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 647
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 649
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_editable_shortcut_order"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    .line 650
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 652
    :cond_22
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 653
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 654
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 655
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 656
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 657
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 658
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 659
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 660
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 661
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 662
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 665
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 667
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAutocontrastSelect(I)V

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x65

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 676
    return-void
.end method

.method public initializeCamera()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_sidemenu_order"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    .line 544
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 546
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_editable_shortcut_order"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    .line 547
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 549
    :cond_22
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 550
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 551
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 552
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 553
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 554
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 555
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 556
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 557
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 558
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 559
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 560
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 561
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 564
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 574
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    if-nez v1, :cond_59

    .line 577
    iput v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 579
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 584
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_59
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 585
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 586
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 587
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_7b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAutocontrastSelect(I)V

    .line 597
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeSelect(I)V

    .line 600
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onISOMenuSelect(I)V

    .line 601
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 602
    return-void
.end method

.method public isMainCameraSelected()Z
    .registers 2

    .prologue
    .line 2562
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    return v0
.end method

.method public isSupportedCamcorderResolutionFeature(I)Z
    .registers 3
    .parameter "resolution"

    .prologue
    const/4 v0, 0x1

    .line 984
    packed-switch p1, :pswitch_data_6

    .line 998
    :pswitch_4
    const/4 v0, 0x0

    :pswitch_5
    return v0

    .line 984
    :pswitch_data_6
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public isSupportedResolutionFeature(I)Z
    .registers 4
    .parameter "resolution"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 945
    packed-switch p1, :pswitch_data_1c

    :pswitch_5
    move v0, v1

    .line 979
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 951
    goto :goto_6

    :pswitch_9
    move v0, v1

    .line 953
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 955
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 957
    goto :goto_6

    :pswitch_f
    move v0, v1

    .line 959
    goto :goto_6

    :pswitch_11
    move v0, v1

    .line 961
    goto :goto_6

    :pswitch_13
    move v0, v1

    .line 967
    goto :goto_6

    :pswitch_15
    move v0, v1

    .line 969
    goto :goto_6

    :pswitch_17
    move v0, v1

    .line 971
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 973
    goto :goto_6

    .line 945
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_6
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_19
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method

.method public isVideocallPresetSelected()Z
    .registers 2

    .prologue
    .line 2570
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    return v0
.end method

.method protected notifyCameraSettingsChanged(II)V
    .registers 6
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1726
    return-void
.end method

.method protected notifyCameraSettingsChanged(IIZ)V
    .registers 4
    .parameter "menuid"
    .parameter "modeid"
    .parameter "syncmode"

    .prologue
    .line 1729
    if-eqz p3, :cond_6

    .line 1730
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    .line 1734
    :goto_5
    return-void

    .line 1732
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_5
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 709
    return-void
.end method

.method public registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .registers 4
    .parameter "o"

    .prologue
    .line 1713
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 1714
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    monitor-exit v1

    .line 1716
    return-void

    .line 1715
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public resetCamcorderSettingsToDefault()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2499
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 2501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_73

    .line 2502
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 2506
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2507
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camcorder;->onRecordingModeMenuSelect(IZ)V

    .line 2510
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 2511
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 2513
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 2514
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2515
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    .line 2516
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutocontrast(I)V

    .line 2517
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 2519
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 2520
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 2521
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 2522
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 2524
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 2526
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2527
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    .line 2529
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2531
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 2533
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 2534
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSideMenuOrder(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 2536
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEditableShortcutOrder(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    .line 2538
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setEditableShortcutHelpTextDialog(I)V

    .line 2539
    return-void

    .line 2503
    :cond_73
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2504
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto :goto_19
.end method

.method public resetCameraSettingsToDefault()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2430
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 2432
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 2433
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 2434
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v5, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraDefaultResolutionCheck:Z

    .line 2435
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 2436
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 2437
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2438
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2441
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setResolutionAndShootingModeToDefault()V

    .line 2442
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2443
    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2447
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    .line 2449
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 2450
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 2451
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 2455
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 2457
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    .line 2459
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2460
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    .line 2461
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 2462
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 2463
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    .line 2464
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 2465
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    .line 2466
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    .line 2467
    sget v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_QUALITY:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 2469
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 2470
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 2471
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 2473
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 2475
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2476
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 2477
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setGps(I)V

    .line 2481
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 2483
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2485
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 2486
    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSideMenuOrder(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 2488
    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEditableShortcutOrder(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    .line 2490
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setShootAndShare(I)V

    .line 2491
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setUserName(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setEditableShortcutHelpTextDialog(I)V

    .line 2495
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .registers 3
    .parameter "recordingMode"

    .prologue
    .line 1418
    if-eqz p1, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 1419
    :cond_5
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setMaxVideoDurationInMs(I)V

    .line 1423
    :cond_a
    :goto_a
    return-void

    .line 1420
    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 1421
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setMaxVideoDurationInMs(I)V

    goto :goto_a
.end method

.method public resetObservers()V
    .registers 3

    .prologue
    .line 2574
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 2575
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2576
    monitor-exit v1

    .line 2577
    return-void

    .line 2576
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setAntishake(I)V
    .registers 6
    .parameter "antishake"

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    .line 1110
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    if-eq v1, p1, :cond_42

    .line 1111
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    .line 1113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1114
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1117
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1119
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setAttachMMSMode(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1658
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 1659
    return-void
.end method

.method public setAttachMode(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1650
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 1651
    return-void
.end method

.method public setBlinkdetection(I)V
    .registers 6
    .parameter "blinkdetection"

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_blinkdetection_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkDetection:I

    .line 1151
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkDetection:I

    if-eq v1, p1, :cond_42

    .line 1152
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBlinkdetection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkDetection:I

    .line 1154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1155
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_blinkdetection_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkDetection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1158
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1160
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setCamcorderAudioRecording(I)V
    .registers 5
    .parameter "audioRecording"

    .prologue
    .line 1608
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_23

    .line 1609
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1612
    const/16 v0, 0x77

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1614
    :cond_23
    return-void
.end method

.method public setCamcorderAutocontrast(I)V
    .registers 5
    .parameter "autocontrast"

    .prologue
    .line 1138
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    if-eq v0, p1, :cond_23

    .line 1139
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAutocontrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 1141
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1143
    :cond_23
    return-void
.end method

.method public setCamcorderContrast(I)V
    .registers 5
    .parameter "contrast"

    .prologue
    .line 1572
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    if-eq v0, p1, :cond_23

    .line 1573
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 1575
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1577
    :cond_23
    return-void
.end method

.method public setCamcorderEditableShortcutOrder(Ljava/lang/String;)V
    .registers 6
    .parameter "order"

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_editable_shortcut_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 2664
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2665
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderEditableShortcutOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 2667
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2668
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_editable_shortcut_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2669
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2671
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setCamcorderExposureValue(I)V
    .registers 5
    .parameter "exposurevalue"

    .prologue
    .line 900
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    if-eq v0, p1, :cond_23

    .line 901
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 903
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 905
    :cond_23
    return-void
.end method

.method public setCamcorderFlashMode(I)V
    .registers 6
    .parameter "flashMode"

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_flash_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1431
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    if-eq v1, p1, :cond_42

    .line 1432
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1434
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1435
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1436
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1438
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1440
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setCamcorderOutdoorVisibility(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 1683
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    if-eq v0, p1, :cond_29

    .line 1684
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1686
    const/16 v0, 0x79

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1688
    if-nez p1, :cond_2a

    .line 1689
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1693
    :cond_29
    :goto_29
    return-void

    .line 1691
    :cond_2a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_29
.end method

.method public setCamcorderQuality(I)V
    .registers 6
    .parameter "quality"

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_videoquality_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1494
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    if-eq v1, p1, :cond_42

    .line 1495
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1497
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1498
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_videoquality_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1499
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1501
    const/16 v1, 0x6f

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1503
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setCamcorderResolution(I)V
    .registers 3
    .parameter "resolution"

    .prologue
    .line 1467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(IZ)Z

    .line 1468
    return-void
.end method

.method public setCamcorderResolution(IZ)Z
    .registers 8
    .parameter "resolution"
    .parameter "exiting"

    .prologue
    const/4 v1, 0x1

    .line 1472
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1473
    sget v2, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    if-eq v2, p1, :cond_4e

    .line 1474
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCamcorderResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    sput p1, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1476
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1477
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camcorder_resolution_key"

    sget v3, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1480
    if-nez p2, :cond_48

    .line 1481
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, p1, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleResolutionChanged(IZ)V

    .line 1482
    :cond_48
    const/16 v2, 0x68

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1485
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_4d
    return v1

    :cond_4e
    const/4 v1, 0x0

    goto :goto_4d
.end method

.method public setCamcorderReview(I)V
    .registers 6
    .parameter "review"

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_camcorder_review_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 1622
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    if-eq v1, p1, :cond_42

    .line 1623
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 1625
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1626
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_camcorder_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1629
    const/16 v1, 0x78

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1631
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setCamcorderSaturation(I)V
    .registers 5
    .parameter "saturation"

    .prologue
    .line 1584
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    if-eq v0, p1, :cond_23

    .line 1585
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1587
    const/16 v0, 0x73

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1589
    :cond_23
    return-void
.end method

.method public setCamcorderSharpness(I)V
    .registers 5
    .parameter "sharpness"

    .prologue
    .line 1596
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    if-eq v0, p1, :cond_23

    .line 1597
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1599
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1601
    :cond_23
    return-void
.end method

.method public setCamcorderSideMenuOrder(Ljava/lang/String;)V
    .registers 6
    .parameter "order"

    .prologue
    .line 2632
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_sidemenu_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    .line 2633
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2634
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderSidemenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    .line 2636
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2637
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_sidemenu_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2638
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2640
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setCamcorderTimer(I)V
    .registers 5
    .parameter "timer"

    .prologue
    .line 1447
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    if-eq v0, p1, :cond_23

    .line 1448
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 1450
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1452
    :cond_23
    return-void
.end method

.method public setCamcorderZoomValue(I)V
    .registers 5
    .parameter "zoomvalue"

    .prologue
    .line 1394
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    if-eq v0, p1, :cond_23

    .line 1395
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1397
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1399
    :cond_23
    return-void
.end method

.method public setCameraAutocontrast(I)V
    .registers 5
    .parameter "autocontrast"

    .prologue
    .line 1126
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    if-eq v0, p1, :cond_23

    .line 1127
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraAutocontrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 1129
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1131
    :cond_23
    return-void
.end method

.method public setCameraContrast(I)V
    .registers 5
    .parameter "contrast"

    .prologue
    .line 1346
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    if-eq v0, p1, :cond_23

    .line 1347
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 1349
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1351
    :cond_23
    return-void
.end method

.method public setCameraEditableShortcutOrder(Ljava/lang/String;)V
    .registers 6
    .parameter "order"

    .prologue
    .line 2648
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_editable_shortcut_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 2649
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2650
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraEditableShortcutOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 2652
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2653
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_editable_shortcut_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2654
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2656
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setCameraExposureValue(I)V
    .registers 5
    .parameter "exposurevalue"

    .prologue
    .line 888
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    if-eq v0, p1, :cond_22

    .line 889
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 891
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 893
    :cond_22
    return-void
.end method

.method public setCameraFlashMode(I)V
    .registers 8
    .parameter "flashMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 865
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_flash_key"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 866
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-eq v1, p1, :cond_42

    .line 867
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 869
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 870
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 871
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 873
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 875
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_51

    .line 876
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-nez v1, :cond_52

    .line 877
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 881
    :cond_51
    :goto_51
    return-void

    .line 878
    :cond_52
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-ne v1, v5, :cond_51

    .line 879
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto :goto_51
.end method

.method public setCameraOutdoorVisibility(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 1666
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    if-eq v0, p1, :cond_29

    .line 1667
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 1669
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1671
    if-nez p1, :cond_2a

    .line 1672
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1676
    :cond_29
    :goto_29
    return-void

    .line 1674
    :cond_2a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_29
.end method

.method public setCameraQuality(I)V
    .registers 6
    .parameter "quality"

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_quality_key"

    sget v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_QUALITY:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 1168
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    if-eq v1, p1, :cond_43

    .line 1169
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 1171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1172
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_quality_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1175
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1177
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_43
    return-void
.end method

.method public setCameraResolution(I)Z
    .registers 3
    .parameter "resolution"

    .prologue
    .line 1020
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    move-result v0

    return v0
.end method

.method public setCameraResolution(IZ)Z
    .registers 7
    .parameter "resolution"
    .parameter "restartPreview"

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1005
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    if-eq v1, p1, :cond_4b

    .line 1006
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1008
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1009
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1010
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1012
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleResolutionChanged(IZ)V

    .line 1013
    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1014
    const/4 v1, 0x1

    .line 1016
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_4a
    return v1

    :cond_4b
    const/4 v1, 0x0

    goto :goto_4a
.end method

.method public setCameraSaturation(I)V
    .registers 5
    .parameter "saturation"

    .prologue
    .line 1358
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    if-eq v0, p1, :cond_23

    .line 1359
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 1361
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1363
    :cond_23
    return-void
.end method

.method public setCameraSharpness(I)V
    .registers 5
    .parameter "sharpness"

    .prologue
    .line 1370
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    if-eq v0, p1, :cond_23

    .line 1371
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 1373
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1375
    :cond_23
    return-void
.end method

.method public setCameraSideMenuOrder(Ljava/lang/String;)V
    .registers 6
    .parameter "order"

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_sidemenu_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    .line 2618
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2619
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraSidemenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    .line 2621
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2622
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_sidemenu_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2623
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2625
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setCameraZoomValue(I)V
    .registers 5
    .parameter "zoomvalue"

    .prologue
    .line 1382
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    if-eq v0, p1, :cond_23

    .line 1383
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 1385
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1387
    :cond_23
    return-void
.end method

.method public setDefaultCamcorderEditableShortcutOrder()V
    .registers 2

    .prologue
    .line 688
    const-string v0, "3009,3006,3008,3004,3007,3022,3011,3020,3019,51,3017,3018,99,99,"

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 705
    return-void
.end method

.method public setDefaultCamcorderSideMenuOrder()V
    .registers 4

    .prologue
    .line 679
    const-string v1, "3001,3003,"

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 681
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    const/4 v1, 0x2

    if-ge v0, v1, :cond_28

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 684
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xbcf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public setDefaultCameraEditableShortcutOrder()V
    .registers 2

    .prologue
    .line 617
    const-string v0, "1,2,7,5,6,8,4,9,10,11,35,13,14,15,16,19,20,51,22,30,99,99,"

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setDefaultCameraSideMenuOrder()V
    .registers 4

    .prologue
    .line 606
    const-string v1, "36,3,"

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 608
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    const/4 v1, 0x2

    if-ge v0, v1, :cond_28

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 611
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public setEditableShortcutHelpTextDialog(I)V
    .registers 6
    .parameter "editableShortcutHelpTextDialog"

    .prologue
    .line 2678
    const-string v1, "pref_editable_shortcut_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEditableShortcutHelpTextDialog:I

    .line 2679
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEditableShortcutHelpTextDialog:I

    if-eq v1, p1, :cond_37

    .line 2680
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEditableShortcutHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEditableShortcutHelpTextDialog:I

    .line 2682
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2683
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_editable_shortcut_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2684
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2686
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_37
    return-void
.end method

.method public setEffect(I)V
    .registers 5
    .parameter "effect"

    .prologue
    .line 1043
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eq v0, p1, :cond_28

    .line 1044
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 1046
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v0, :cond_29

    .line 1047
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 1051
    :cond_28
    :goto_28
    return-void

    .line 1049
    :cond_29
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_28
.end method

.method public setExposuremeter(I)V
    .registers 6
    .parameter "exposuremeter"

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    .line 1076
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    if-eq v1, p1, :cond_42

    .line 1077
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposuremeter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    .line 1079
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1080
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposuremeter_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1081
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1083
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1085
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setFlip(I)V
    .registers 6
    .parameter "flip"

    .prologue
    .line 1700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_self_flip_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    .line 1701
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    if-eq v1, p1, :cond_44

    .line 1702
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    .line 1704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1705
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1706
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1708
    const/16 v1, 0x26

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1710
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_44
    return-void
.end method

.method public setFocusMode(I)V
    .registers 6
    .parameter "focusMode"

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_focus_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 913
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    if-eq v1, p1, :cond_41

    .line 914
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 916
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 917
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 918
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 920
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 922
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_41
    return-void
.end method

.method public setGps(I)V
    .registers 6
    .parameter "gps"

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_gps_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    .line 1313
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    if-eq v1, p1, :cond_42

    .line 1314
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    .line 1316
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1317
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_gps_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1320
    const/16 v1, 0x14

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1322
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setGuideline(I)V
    .registers 6
    .parameter "guideline"

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    .line 1195
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    if-eq v1, p1, :cond_46

    .line 1196
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGuideline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    .line 1198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1199
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1201
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_47

    .line 1202
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1206
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_46
    :goto_46
    return-void

    .line 1204
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_47
    const/16 v1, 0x7a

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_46
.end method

.method public setISO(I)V
    .registers 6
    .parameter "iso"

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_iso_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 1059
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    if-eq v1, p1, :cond_42

    .line 1060
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setISO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 1062
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1063
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_iso_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1064
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1066
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1068
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setMainCameraSelected(Z)V
    .registers 2
    .parameter "mMainCameraSelected"

    .prologue
    .line 2558
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    .line 2559
    return-void
.end method

.method public setMaxRecordingSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 759
    iput-wide p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 760
    return-void
.end method

.method public setMaxVideoDurationInMs(I)V
    .registers 6
    .parameter "videoDuration"

    .prologue
    .line 730
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 731
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    if-eq v1, p1, :cond_38

    .line 732
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVideoDurationInMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 735
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 736
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 738
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_38
    return-void
.end method

.method public setMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 792
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-eq v1, p1, :cond_3e

    .line 793
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 795
    const-string v1, "GT-I9100"

    const-string v2, "SGH-I577"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 797
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_mode"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 798
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 800
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 802
    :cond_3e
    return-void
.end method

.method public setNetWork(I)V
    .registers 9
    .parameter "network"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1266
    const/4 v0, 0x1

    .line 1268
    .local v0, b:Z
    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_15

    .line 1269
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v0

    .line 1270
    :cond_15
    if-eqz v0, :cond_74

    move v3, v4

    :goto_18
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 1271
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    if-eq v3, p1, :cond_37

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_37

    .line 1272
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v6, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v0, :cond_76

    move v3, v4

    :goto_2f
    invoke-interface {v6, v3}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 1273
    const/16 v3, 0x2a

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_37} :catch_78

    .line 1279
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_camera_network_key"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 1280
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    if-eq v3, p1, :cond_73

    .line 1281
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 1283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1284
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_network_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1285
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1287
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_73
    return-void

    :cond_74
    move v3, v5

    .line 1270
    goto :goto_18

    :cond_76
    move v3, v5

    .line 1272
    goto :goto_2f

    .line 1275
    :catch_78
    move-exception v1

    .line 1277
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_37
.end method

.method public setNumberOfCsShotCaptured(I)V
    .registers 2
    .parameter "mNumberOfCsShotCaptured"

    .prologue
    .line 2542
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 2543
    return-void
.end method

.method public setNumberOfCsShotSaved(I)V
    .registers 2
    .parameter "mNumberOfCsShotSaved"

    .prologue
    .line 2550
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 2551
    return-void
.end method

.method public setObjecttracking(I)V
    .registers 6
    .parameter "objecttracking"

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_objecttracking_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjectTracking:I

    .line 1093
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjectTracking:I

    if-eq v1, p1, :cond_42

    .line 1094
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setObjecttracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjectTracking:I

    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1097
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_objecttracking_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjectTracking:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1098
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1100
    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1102
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setPreviewFileReceived(I)V
    .registers 8
    .parameter "previewFileReceived"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1290
    const/4 v0, 0x1

    .line 1291
    .local v0, b:Z
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_8

    .line 1305
    :cond_7
    :goto_7
    return-void

    .line 1294
    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_1a

    .line 1295
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getAutoPreview()Z

    move-result v0

    .line 1296
    :cond_1a
    if-eqz v0, :cond_42

    move v2, v3

    :goto_1d
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviewFileReceived:I

    .line 1297
    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviewFileReceived:I

    if-eq v2, p1, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_7

    .line 1298
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v5, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v0, :cond_44

    move v2, v3

    :goto_34
    invoke-interface {v5, v2}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 1299
    const/16 v2, 0x2a

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3c} :catch_3d

    goto :goto_7

    .line 1301
    :catch_3d
    move-exception v1

    .line 1303
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_42
    move v2, v4

    .line 1296
    goto :goto_1d

    :cond_44
    move v2, v4

    .line 1298
    goto :goto_34
.end method

.method public setRecordingMode(I)V
    .registers 5
    .parameter "recordingMode"

    .prologue
    .line 1407
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-eq v0, p1, :cond_28

    .line 1408
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1411
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 1413
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1415
    :cond_28
    return-void
.end method

.method public setRequestedRecordingSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 748
    iput-wide p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 749
    return-void
.end method

.method public setReview(I)V
    .registers 6
    .parameter "review"

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_review_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 1214
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    if-eq v1, p1, :cond_42

    .line 1215
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 1217
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1218
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1221
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1223
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setSceneMode(I)V
    .registers 5
    .parameter "sceneMode"

    .prologue
    .line 853
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    if-eq v0, p1, :cond_23

    .line 854
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 856
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 858
    :cond_23
    return-void
.end method

.method public setSelfMode(I)V
    .registers 7
    .parameter "selfMode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 809
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    if-eq v0, p1, :cond_5e

    .line 810
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelfMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    .line 812
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    if-ne v0, v3, :cond_5f

    .line 813
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    .line 814
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempSceneMode:I

    .line 815
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 817
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 818
    const-string v0, "GT-I9103"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "SGH-I927"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 819
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v3, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFrontToRear:Z

    .line 825
    :cond_57
    :goto_57
    const/16 v0, 0x24

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 827
    :cond_5e
    return-void

    .line 821
    :cond_5f
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 822
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempSceneMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    goto :goto_57
.end method

.method public setShootAndShare(I)V
    .registers 6
    .parameter "sns"

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_shootandshare_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    .line 1232
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    if-eq v1, p1, :cond_4d

    .line 1233
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootAndShare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    .line 1235
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1236
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_shootandshare_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1238
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1240
    const/16 v1, 0x27

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1242
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4d
    return-void
.end method

.method public setShootingMode(I)V
    .registers 3
    .parameter "shootingMode"

    .prologue
    .line 834
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    .line 835
    return-void
.end method

.method public setShootingMode(IZ)V
    .registers 6
    .parameter "shootingMode"
    .parameter "exiting"

    .prologue
    .line 838
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-eq v0, p1, :cond_2f

    .line 839
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 841
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    if-nez v0, :cond_26

    .line 842
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 843
    :cond_26
    if-nez p2, :cond_2f

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 846
    :cond_2f
    return-void
.end method

.method public setShootingVintageMode(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1638
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    if-eq v0, p1, :cond_23

    .line 1639
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingVintageMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 1641
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1643
    :cond_23
    return-void
.end method

.method public setShutterSound(I)V
    .registers 6
    .parameter "shuttersound"

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_shuttersound_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 1330
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    if-eq v1, p1, :cond_42

    .line 1331
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 1333
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1334
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_shuttersound_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1337
    const/16 v1, 0x15

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1339
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method

.method public setStorage(I)V
    .registers 8
    .parameter "storage"

    .prologue
    const/16 v5, 0x75

    const/16 v4, 0x16

    .line 1546
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_storage_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1547
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    if-eq v1, p1, :cond_51

    .line 1548
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1550
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1551
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1554
    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1555
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1556
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setDefaultStorageStatus()V

    .line 1557
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 1561
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_51
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1563
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v5, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1565
    return-void
.end method

.method public setTimer(I)V
    .registers 5
    .parameter "timer"

    .prologue
    .line 929
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    if-eq v0, p1, :cond_22

    .line 930
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 932
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 934
    :cond_22
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    .line 1251
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1252
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_user_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1255
    const/16 v1, 0x29

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1256
    return-void
.end method

.method public setVideocallPresetSelected(Z)V
    .registers 2
    .parameter "mVideocallPresetSelected"

    .prologue
    .line 2566
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    .line 2567
    return-void
.end method

.method public setWhiteBalance(I)V
    .registers 5
    .parameter "whitebalance"

    .prologue
    .line 1028
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    if-eq v0, p1, :cond_27

    .line 1029
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 1031
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v0, :cond_28

    .line 1032
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1036
    :cond_27
    :goto_27
    return-void

    .line 1034
    :cond_28
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_27
.end method

.method public unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .registers 4
    .parameter "o"

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 1720
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1721
    monitor-exit v1

    .line 1722
    return-void

    .line 1721
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
