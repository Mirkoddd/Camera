.class public abstract Lcom/sec/android/app/camera/AbstractCameraActivity;
.super Landroid/app/Activity;
.source "AbstractCameraActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/AdjustMenu$OnContrastMenuSelectListener;
.implements Lcom/sec/android/app/camera/AdjustMenu$OnSaturationMenuSelectListener;
.implements Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessMenuSelectListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;
.implements Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;


# static fields
.field public static final BACK_FROM_ACCEPT_DIALOG:I = 0x7d6

.field protected static final CAM_AVAILABLE_TEMP:I = 0x1e0

.field protected static final CAM_FLASH_AVAILABLE_TEMP:I = -0x32

.field protected static final CAM_OVERHEAT_TEMP:I = 0x1fe

.field protected static final CHECK_CALL_DLG:I = 0x2

.field protected static final DIALOG_ID_WIFI_DIRECT_NOTIFICATION:I = 0x4

.field protected static final DIALOG_ID_WIFI_NOTIFICATION:I = 0x3

.field protected static final DLG_HIDE:Z = false

.field protected static final DLG_SHOW:Z = true

.field private static final EDITABLE_SHORTCUT_MENU_ROOT_HEIGHT:I = 0x1e0

.field private static final EDITABLE_SHORTCUT_MENU_ROOT_WIDTH:I = 0x230

.field protected static final INACTIVITY_TIMEOUT:I = 0x78

.field protected static final INACTIVITY_TIMER_EXPIRED:I = 0x1

.field public static final KEY_BLINK_DETECTION:Ljava/lang/String; = "blinkdetection"

.field public static final KEY_FROM_APP:Ljava/lang/String; = "from_app"

.field public static final KEY_QUICK_VIEW:Ljava/lang/String; = "quickview"

.field public static final KEY_REVIEW_ON:Ljava/lang/String; = "reviewon"

.field protected static LOW_BATTERY_THRESHOLD_VALUE:I = 0x0

.field protected static LOW_TEMP_FLASH_THRESHOLD_VALUE:I = 0x0

.field protected static final MDNIE_CAMERA_MODE:I = 0x4

.field protected static final MDNIE_UI_MODE:I = 0x0

.field protected static final MESSAGE_TYPE_MMS:I = 0x3

.field protected static final MESSAGE_TYPE_PUSH_SMS:I = 0x2

.field protected static final MESSAGE_TYPE_SMS:I = 0x1

.field protected static final MILLIS_IN_SEC:I = 0x3e8

.field public static final NAME_WITH_DATA:I = 0x7d5

.field protected static final NUM_OF_DLG:I = 0x5

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field protected static final OVERHEAT_TIMEOUT:I = 0x5

.field protected static final OVERHEAT_TIMER_EXPIRED:I = 0x2

.field public static final PHOTO_PICKED_WITH_DATA:I = 0x7d4

.field public static final REQUEST_ATTACH_IMAGE:I = 0x7d1

.field public static final REQUEST_ATTACH_VIDEO:I = 0x7d2

.field public static final REQUEST_BLINKDETECT_IMAGE:I = 0x7d3

.field private static final RESET_POPUP_BACKGROUND_HEIGHT:I = 0xd2

.field private static final RESET_POPUP_BACKGROUND_WIDTH:I = 0x244

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final SCREEN_WIDTH:I = 0x320

.field public static final SELECT_PIC_DLG:I = 0x7

.field private static final SHOOTINGMODE_MENU_ROOT_HEIGHT:I = 0x1e0

.field private static final SHOOTINGMODE_MENU_ROOT_POS_X:I = 0x50

.field private static final SHOOTINGMODE_MENU_ROOT_POS_Y:I = 0x0

.field private static final SHOOTINGMODE_MENU_ROOT_WIDTH:I = 0x280

.field protected static final STORAGE_CHANGE_DLG:I = 0x1

.field protected static final STORAGE_STATUS_DLG:I = 0x0

.field protected static final STORAGE_STATUS_LOW:I = 0x1

.field protected static final STORAGE_STATUS_NONE:I = 0x2

.field protected static final STORAGE_STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbstractCameraActivity"

.field public static final USERPROFILE_DLG:I = 0x6

.field public static mCamcorderToCamera:Z

.field public static mCameraToCamcorder:Z

.field protected static mSelectedMode:I


# instance fields
.field protected bFlagOverheat:Z

.field protected bTurnOnScrAB:Z

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mAutoRotation:Z

.field protected mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mBaseLayout:Landroid/view/ViewGroup;

.field protected mBufferOverFlowPopup:Landroid/app/AlertDialog;

.field public mCameraDefaultResolutionCheck:Z

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field protected mCheckCalling:Z

.field protected mCheckVoIPCalling:Z

.field protected mChkKeyFromApp:Ljava/lang/String;

.field protected mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

.field private mDlgStatus:[Z

.field private mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

.field protected mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mErrorPopup:Landroid/app/AlertDialog;

.field public mFrontToRear:Z

.field protected mGLContext:Lcom/sec/android/glview/TwGLContext;

.field protected mGLInitialized:Z

.field protected mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

.field protected mInactivityPopupHandler:Landroid/os/Handler;

.field public mIsFromSNS:Z

.field protected mLowBatteryPopup:Landroid/app/AlertDialog;

.field protected mLowBatteryWarningLevel:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field protected mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mOpenFailedPopup:Landroid/app/AlertDialog;

.field protected mOverheatPopup:Landroid/app/AlertDialog;

.field protected mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

.field protected mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field public mPreviewTimeout:Z

.field protected mRecordingFailedPopup:Landroid/app/AlertDialog;

.field protected mResetPopup:Landroid/app/AlertDialog;

.field protected mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

.field public mShowWifiDialog:Z

.field protected mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mSpinnerDialog:Landroid/app/Dialog;

.field protected mStorageStatus:I

.field protected mUsbMassStorageEnabled:Z

.field protected mViewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field msgToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 110
    sput v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSelectedMode:I

    .line 182
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    .line 183
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    .line 205
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraToCamcorder:Z

    .line 206
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCamcorderToCamera:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 418
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    .line 152
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 153
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 155
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 157
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 164
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 167
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 172
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 173
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 174
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 175
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 176
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 178
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 179
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 180
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 189
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 196
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 197
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 200
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 202
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraDefaultResolutionCheck:Z

    .line 204
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFrontToRear:Z

    .line 209
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPreviewTimeout:Z

    .line 210
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$1;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$2;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    .line 247
    new-instance v0, Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 249
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 424
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$3;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 434
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$4;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1514
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$22;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1519
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1653
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 419
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method


# virtual methods
.method public CannotStartCamera()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 1220
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eqz v0, :cond_d

    .line 1221
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1225
    :goto_c
    return-void

    .line 1223
    :cond_d
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_c
.end method

.method public PauseGLSurface()V
    .registers 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_9

    .line 1749
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1751
    :cond_9
    return-void
.end method

.method public abstract cancelShutterTimer()V
.end method

.method public abstract changeContrastPreview(I)V
.end method

.method public abstract changeEffectPreview(I)V
.end method

.method public abstract changeSaturationPreview(I)V
.end method

.method public abstract changeSceneModePreview(I)V
.end method

.method public abstract changeSharpnessPreview(I)V
.end method

.method public abstract changeWhiteBalancePreview(I)V
.end method

.method public checkCameraStartCondition_Call()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1228
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1230
    :try_start_3
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1231
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1b

    .line 1232
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1235
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1236
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1244
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_1a
    return v2

    .line 1238
    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    const-string v3, "AbstractCameraActivity"

    const-string v4, "phoneServ is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_22} :catch_23

    goto :goto_1a

    .line 1241
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_23
    move-exception v0

    .line 1242
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AbstractCameraActivity"

    const-string v3, "phoneServ.isOffhook() or phoneServ.isVoIPIdle() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method public checkCameraStartCondition_Security()Z
    .registers 3

    .prologue
    .line 1277
    const-string v1, "persist.sys.camera_lock"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, dev_camera_lock_state:Ljava/lang/String;
    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1279
    const/4 v1, 0x1

    .line 1281
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public checkCameraStartCondition_VoIPCall()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1248
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1250
    :try_start_4
    const-string v4, "voip"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 1251
    .local v1, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_1f

    .line 1252
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v4

    if-nez v4, :cond_17

    move v2, v3

    :cond_17
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1254
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1263
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :goto_1e
    return v2

    .line 1256
    .restart local v1       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_1f
    const-string v4, "AbstractCameraActivity"

    const-string v5, "voipInterfaceService is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_26} :catch_27

    goto :goto_1e

    .line 1259
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_27
    move-exception v0

    .line 1261
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 1263
    goto :goto_1e
.end method

.method public checkStorage(ZZ)V
    .registers 7
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1485
    if-eqz p1, :cond_33

    .line 1486
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1488
    sget v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSelectedMode:I

    if-nez v0, :cond_29

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1494
    :goto_13
    if-eqz p2, :cond_22

    .line 1495
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-eq v0, v3, :cond_22

    .line 1496
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1497
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1510
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 1511
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->mediaStorageDialog()V

    .line 1512
    return-void

    .line 1491
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    goto :goto_13

    .line 1501
    :cond_33
    if-eqz p2, :cond_38

    .line 1502
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1504
    :cond_38
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1506
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetStorageMedia()V

    goto :goto_22
.end method

.method public checkStorageLow(I)I
    .registers 8
    .parameter "storage"

    .prologue
    .line 1454
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1455
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    .line 1456
    const/4 v2, 0x2

    .line 1462
    :goto_b
    return v2

    .line 1458
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2a

    .line 1460
    const/4 v2, 0x1

    goto :goto_b

    .line 1462
    :cond_2a
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public abstract checkStorageLow()V
.end method

.method protected clearGLSurfaceView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_c

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 645
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 647
    :cond_c
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 648
    return-void
.end method

.method public dismissResetDialog()V
    .registers 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1745
    return-void
.end method

.method public dumpViewStack()Ljava/lang/String;
    .registers 5

    .prologue
    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 567
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-ge v0, v3, :cond_5b

    .line 568
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Lcom/sec/android/app/camera/MenuBase;
    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 569
    .restart local v2       #view:Lcom/sec/android/app/camera/MenuBase;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v3, "(Z:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    const-string v3, ",C:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 577
    const-string v3, ",P:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 579
    const-string v3, ")\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 581
    :cond_5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->PauseGLSurface()V

    .line 512
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 513
    return-void
.end method

.method public finishOnError(I)V
    .registers 12
    .parameter "error"

    .prologue
    const v9, 0x7f0a000e

    const v8, 0x7f0a0095

    .line 1117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1118
    const-string v5, "AbstractCameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera is finished [Error type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :goto_2a
    return-void

    .line 1122
    :cond_2b
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1123
    .local v3, dialog:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a0004

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1124
    const v5, 0x1080027

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1125
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1127
    packed-switch p1, :pswitch_data_fa

    .line 1199
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1204
    :goto_46
    :try_start_46
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1205
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_52

    goto :goto_2a

    .line 1206
    :catch_52
    move-exception v4

    .line 1207
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_2a

    .line 1130
    .end local v4           #ex:Ljava/lang/Exception;
    :pswitch_57
    const/16 v1, 0x190

    .line 1131
    .local v1, RCS_CAMERA_VALUE:I
    const-string v0, "Rcs_Camera_Key"

    .line 1132
    .local v0, RCS_CAMERA_KEY:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1133
    .local v2, b:Landroid/os/Bundle;
    const-string v5, "finishOnError"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " bundle is  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    if-eqz v2, :cond_92

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v1, :cond_92

    .line 1137
    const v5, 0x7f0a000f

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1143
    :goto_89
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$5;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_46

    .line 1141
    :cond_92
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_89

    .line 1150
    .end local v0           #RCS_CAMERA_KEY:Ljava/lang/String;
    .end local v1           #RCS_CAMERA_VALUE:I
    .end local v2           #b:Landroid/os/Bundle;
    :pswitch_96
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1151
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$6;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_46

    .line 1158
    :pswitch_a2
    const v5, 0x7f0a0011

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1159
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$7;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_46

    .line 1166
    :pswitch_b1
    const v5, 0x7f0a0014

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1167
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$8;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_46

    .line 1174
    :pswitch_c0
    const v5, 0x7f0a0012

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1175
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$9;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$9;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_46

    .line 1182
    :pswitch_d0
    const-string v5, "The firmware is not latest.\nDo you want to continue?"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1183
    const v5, 0x7f0a00bd

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1184
    const v5, 0x7f0a00be

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$10;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$10;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_46

    .line 1191
    :pswitch_e9
    const v5, 0x7f0a0013

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1192
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$11;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$11;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_46

    .line 1127
    nop

    :pswitch_data_fa
    .packed-switch -0x8
        :pswitch_e9
        :pswitch_d0
        :pswitch_c0
        :pswitch_b1
        :pswitch_a2
        :pswitch_96
        :pswitch_57
        :pswitch_57
    .end packed-switch
.end method

.method public getAutoRotation()Z
    .registers 2

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    return v0
.end method

.method public getAvailableStorage()J
    .registers 5

    .prologue
    .line 1467
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1469
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 1470
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1472
    :cond_13
    return-wide v0
.end method

.method public getAvailableStorage(I)J
    .registers 6
    .parameter "storage"

    .prologue
    .line 1476
    invoke-static {p1}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1478
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 1479
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1481
    :cond_d
    return-wide v0
.end method

.method public final getBaseLayout()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method public abstract getChkKeyFromApp()Ljava/lang/String;
.end method

.method public getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    return-object v0
.end method

.method public getCurrentMode()I
    .registers 2

    .prologue
    .line 1702
    sget v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSelectedMode:I

    return v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 543
    :goto_c
    return v0

    .line 540
    :catch_d
    move-exception v0

    .line 543
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getGLContext()Lcom/sec/android/glview/TwGLContext;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public abstract getIsLaunchGallery()Z
.end method

.method public getKeyLockState()Z
    .registers 4

    .prologue
    .line 710
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 711
    .local v0, kgMgr:Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    .line 712
    .local v1, showing:Z
    if-eqz v0, :cond_f

    .line 713
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 714
    :cond_f
    return v1
.end method

.method public getMainHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMemoryStatus()I
    .registers 2

    .prologue
    .line 1565
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    return v0
.end method

.method public getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    return-object v0
.end method

.method public getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method public final getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getShootingmodeRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getUsbMassStorageEnabledStatus()V
    .registers 5

    .prologue
    .line 1758
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1759
    .local v0, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 1760
    const-string v1, "AbstractCameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUsbMassStorageEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    return-void
.end method

.method protected handleBatteryOverheat()V
    .registers 6

    .prologue
    .line 1620
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleBatteryOverheat"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1651
    :goto_13
    return-void

    .line 1626
    :cond_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1627
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1628
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1629
    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1631
    const v1, 0x7f0a0017

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$25;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$25;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1638
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1639
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$26;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$26;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1648
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 1649
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1650
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_13
.end method

.method protected handleLowBattery()V
    .registers 4

    .prologue
    .line 1569
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1617
    :goto_13
    return-void

    .line 1581
    :cond_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1582
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1583
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1584
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1586
    const v1, 0x7f0a0017

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$23;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$23;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1594
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1595
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$24;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$24;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1608
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1609
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_13
.end method

.method public abstract handleResolutionChanged(IZ)V
.end method

.method public hideAllDlg()V
    .registers 4

    .prologue
    .line 1556
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_16

    .line 1557
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 1558
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1559
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 1556
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1562
    :cond_16
    return-void
.end method

.method public hideDlg(I)V
    .registers 5
    .parameter "nId"

    .prologue
    .line 1545
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_18

    .line 1546
    if-ne v0, p1, :cond_15

    .line 1547
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 1548
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1549
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 1545
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1553
    :cond_18
    return-void
.end method

.method public abstract hideSideMenu()V
.end method

.method public abstract hideSideMenuItems()V
.end method

.method public hideWaitingAnimation()V
    .registers 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method

.method protected inflateWaitingView()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 455
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 456
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 457
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 458
    .local v2, v:Landroid/view/View;
    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 459
    .local v1, pBar4:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 462
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 463
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 464
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 465
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f0201b9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 466
    return-void
.end method

.method protected initializeGLSurfaceView()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 599
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 600
    new-instance v0, Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v2, p0, v3}, Lcom/sec/android/glview/TwGLContext;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v6, 0x4

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 607
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 608
    .local v7, glViewLayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 611
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLSurfaceCreate**StartU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method

.method public invalidatePreview()V
    .registers 3

    .prologue
    .line 1106
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1107
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 1108
    return-void
.end method

.method public abstract isActivityDestoying()Z
.end method

.method public isCaptureEnabled()Z
    .registers 2

    .prologue
    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 561
    :goto_c
    return v0

    .line 558
    :catch_d
    move-exception v0

    .line 561
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected isEnforcedPlayingShutterSound()Z
    .registers 3

    .prologue
    .line 586
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, code:Ljava/lang/String;
    const-string v1, "OPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "XSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "HUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "AUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "BOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "CAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "DIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "DTL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "FTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "NRJ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "ORC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "ORN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "OUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "SFR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "TL2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "VGF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "XEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "ZER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "LPM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "FRE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    :cond_b6
    const/4 v1, 0x1

    :goto_b7
    return v1

    :cond_b8
    const/4 v1, 0x0

    goto :goto_b7
.end method

.method public abstract isPreviewStarted()Z
.end method

.method public isPreviewTouchEnabled()Z
    .registers 2

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 552
    :goto_c
    return v0

    .line 549
    :catch_d
    move-exception v0

    .line 552
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isResetDialogActive()Z
    .registers 2

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-nez v0, :cond_6

    .line 1738
    const/4 v0, 0x0

    .line 1740
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_5
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 2

    .prologue
    .line 1754
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    return v0
.end method

.method protected makeToast(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 4
    .parameter "cls"
    .parameter "id"
    .parameter "str"

    .prologue
    .line 1699
    return-void
.end method

.method public mediaStorageDialog()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1212
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v0, :cond_9

    .line 1213
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1217
    :goto_8
    return-void

    .line 1215
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_8
.end method

.method protected notifyOnPause()V
    .registers 2

    .prologue
    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_13} :catch_14

    .line 830
    :cond_13
    :goto_13
    return-void

    .line 827
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method protected abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onAntishakeSelect(I)V
    .registers 2
    .parameter "antishake"

    .prologue
    .line 368
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .registers 2
    .parameter "audiorecording"

    .prologue
    .line 407
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .registers 2
    .parameter "autocontrast"

    .prologue
    .line 371
    return-void
.end method

.method public onBlinkdetectionSelect(I)V
    .registers 2
    .parameter "blinkdetection"

    .prologue
    .line 374
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .registers 2
    .parameter "quality"

    .prologue
    .line 380
    return-void
.end method

.method public onCameraQualityMenuSelect(I)V
    .registers 2
    .parameter "quality"

    .prologue
    .line 377
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .registers 2
    .parameter "contrast"

    .prologue
    .line 322
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 980
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 981
    const-string v1, "AbstractCameraActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 986
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "AbstractCameraActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 987
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->setStorageVolume(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 989
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 990
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    .line 992
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 13
    .parameter "id"

    .prologue
    const v10, 0x7f0a0110

    const v9, 0x7f0a0017

    const v8, 0x7f0a0004

    const v6, 0x1080027

    const/4 v7, 0x0

    .line 1285
    packed-switch p1, :pswitch_data_10c

    .line 1419
    const/4 v5, 0x0

    :goto_11
    return-object v5

    .line 1287
    :pswitch_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1288
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$12;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$12;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1306
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$13;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$13;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1316
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_11

    .line 1318
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    :pswitch_3f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1319
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a00e5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00bd

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$15;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$15;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00be

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$14;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$14;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1333
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_11

    .line 1335
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :pswitch_6b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1339
    .local v2, builder3:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a0018

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1342
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$16;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$16;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1349
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$17;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$17;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1359
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_11

    .line 1362
    .end local v2           #builder3:Landroid/app/AlertDialog$Builder;
    :pswitch_98
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1363
    .local v3, builder4:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a010c

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1364
    const v5, 0x7f0a010d

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1365
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$18;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$18;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1377
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0111

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$19;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$19;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1387
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_11

    .line 1390
    .end local v3           #builder4:Landroid/app/AlertDialog$Builder;
    :pswitch_d2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1391
    .local v4, builder5:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a010e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1392
    const v5, 0x7f0a010f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1393
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$20;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$20;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1406
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0111

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$21;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$21;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1417
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_11

    .line 1285
    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_3f
        :pswitch_6b
        :pswitch_98
        :pswitch_d2
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1015
    const-string v0, "AbstractCameraActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_15

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1019
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1022
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1026
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 1027
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 1029
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_38

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1033
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 1036
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_43

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1038
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1041
    :cond_43
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4e

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1043
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 1046
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_59

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1048
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 1051
    :cond_59
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_64

    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1053
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 1056
    :cond_64
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_6f

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 1058
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 1061
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7a

    .line 1062
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1063
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1066
    :cond_7a
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_85

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1068
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1071
    :cond_85
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_90

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1073
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1076
    :cond_90
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_9b

    .line 1077
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1078
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1081
    :cond_9b
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_a6

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1083
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1086
    :cond_a6
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    if-eqz v0, :cond_b1

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->clear()V

    .line 1088
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 1091
    :cond_b1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 1092
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 1094
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1095
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1096
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 1097
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 1099
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1100
    return-void
.end method

.method public onDeviceListMenuSelect()V
    .registers 1

    .prologue
    .line 336
    return-void
.end method

.method public onEditModeSelectCommand()V
    .registers 1

    .prologue
    .line 410
    return-void
.end method

.method public onEffectMenuSelect(I)V
    .registers 2
    .parameter "effect"

    .prologue
    .line 316
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .registers 2
    .parameter "exposureValue"

    .prologue
    .line 347
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .registers 2
    .parameter "exposuremeter"

    .prologue
    .line 359
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .registers 2
    .parameter "flashMode"

    .prologue
    .line 301
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .registers 2
    .parameter "flip"

    .prologue
    .line 413
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .registers 2
    .parameter "focusMode"

    .prologue
    .line 298
    return-void
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .registers 14
    .parameter "rootView"

    .prologue
    const/high16 v4, 0x4448

    const/high16 v5, 0x43f0

    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_78

    .line 652
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 653
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 654
    new-instance v6, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/high16 v10, 0x440c

    move v8, v2

    move v9, v2

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 656
    new-instance v6, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/high16 v8, 0x42a0

    const/high16 v10, 0x4420

    move v9, v2

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 658
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 659
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 668
    :cond_78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 669
    return-void
.end method

.method public onGpsChanged(I)V
    .registers 2
    .parameter "gps"

    .prologue
    .line 386
    return-void
.end method

.method public onGuidelineSelect(I)V
    .registers 2
    .parameter "guideline"

    .prologue
    .line 383
    return-void
.end method

.method public onISOMenuSelect(I)V
    .registers 2
    .parameter "iso"

    .prologue
    .line 356
    return-void
.end method

.method public onModechanged()V
    .registers 1

    .prologue
    .line 362
    return-void
.end method

.method public onObjecttrackingSelect(I)V
    .registers 2
    .parameter "objecttracking"

    .prologue
    .line 365
    return-void
.end method

.method public onOutdoorVisibilitySelect(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 401
    return-void
.end method

.method protected onPause()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 835
    const/16 v1, 0x190

    .line 836
    .local v1, RCS_CAMERA_VALUE:I
    const-string v0, "Rcs_Camera_Key"

    .line 839
    .local v0, RCS_CAMERA_KEY:Ljava/lang/String;
    const-string v4, "AbstractCameraActivity"

    const-string v5, "onPause"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 843
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v4, :cond_22

    .line 844
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 847
    :cond_22
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 848
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->onPause()V

    .line 849
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->reset()V

    .line 852
    :cond_3c
    iput-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 854
    const-string v4, "AbstractCameraActivity"

    const-string v5, "GL Cleared!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 858
    const-string v4, "GT-I9100"

    const-string v5, "GT-N7000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    const-string v4, "GT-I9100"

    const-string v5, "GT-I9220"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 859
    :cond_60
    const-string v4, "AbstractCameraActivity"

    const-string v5, "setSystemPowerSaveMode false for brightness"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 861
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {v3, v7}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 865
    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_72
    const-string v4, "AbstractCameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPause : SCREEN_BRIGHTNESS_MODE - bTurnOnScrAB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    if-eqz v4, :cond_9b

    .line 867
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 868
    .restart local v3       #pm:Landroid/os/PowerManager;
    invoke-virtual {v3, v9, v9}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 871
    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_9b
    const-string v4, "GT-I9103"

    const-string v5, "GT-I9100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string v4, "SGH-I927"

    const-string v5, "GT-I9100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1de

    .line 873
    :cond_af
    const-string v4, "AbstractCameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YYY -- mCameraToCamcorder1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraToCamcorder:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-string v4, "AbstractCameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YYY -- mCamcorderToCamera1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCamcorderToCamera:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    sget-boolean v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraToCamcorder:Z

    if-eq v4, v10, :cond_1d8

    sget-boolean v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCamcorderToCamera:Z

    if-eq v4, v10, :cond_1d8

    .line 881
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 883
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 887
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 896
    :goto_f4
    const-string v4, "AbstractCameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YYY -- mCameraToCamcorder2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraToCamcorder:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v4, "AbstractCameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YYY -- mCamcorderToCamera2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCamcorderToCamera:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 917
    .local v2, b:Landroid/os/Bundle;
    const-string v4, "onresume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " bundle is  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    if-eqz v2, :cond_1e9

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1e9

    .line 922
    const-string v4, "onresume"

    const-string v5, "RCS camera launch during CS call :"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_157
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_168

    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_168

    .line 937
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 938
    :cond_168
    iput-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 940
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_17b

    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_17b

    .line 941
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 943
    :cond_17b
    iput-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 945
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_18e

    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_18e

    .line 946
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 947
    :cond_18e
    iput-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 949
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1a1

    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1a1

    .line 950
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 951
    :cond_1a1
    iput-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 953
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1b4

    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1b4

    .line 954
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 955
    :cond_1b4
    iput-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 957
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 958
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 960
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1c9

    .line 961
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 964
    :cond_1c9
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1d4

    .line 965
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 976
    :cond_1d4
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 977
    :goto_1d7
    return-void

    .line 892
    .end local v2           #b:Landroid/os/Bundle;
    :cond_1d8
    sput-boolean v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraToCamcorder:Z

    .line 893
    sput-boolean v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCamcorderToCamera:Z

    goto/16 :goto_f4

    .line 905
    :cond_1de
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 907
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 911
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    goto/16 :goto_128

    .line 926
    .restart local v2       #b:Landroid/os/Bundle;
    :cond_1e9
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v4, :cond_1f1

    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eqz v4, :cond_157

    .line 929
    :cond_1f1
    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSelectedMode:I

    if-eqz v4, :cond_157

    const-string v4, "from_app"

    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_157

    .line 930
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 931
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_1d7
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 9
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 1423
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    packed-switch p1, :pswitch_data_7e

    .line 1445
    :goto_1c
    return-void

    .line 1426
    :pswitch_1d
    const v2, 0x7f0a0005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, message:Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-ne v2, v5, :cond_4a

    .line 1428
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-nez v2, :cond_51

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_51

    .line 1431
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_card_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4a
    :goto_4a
    move-object v0, p2

    .line 1442
    check-cast v0, Landroid/app/AlertDialog;

    .line 1443
    .local v0, builder:Landroid/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 1433
    .end local v0           #builder:Landroid/app/AlertDialog;
    :cond_51
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-ne v2, v5, :cond_6f

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_6f

    .line 1435
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_phone_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 1438
    :cond_6f
    const-string v2, "AbstractCameraActivity"

    const-string v3, "not_enough_space"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const v2, 0x7f0a0006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 1424
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public onPreviewFileReceived(I)V
    .registers 2
    .parameter "preview"

    .prologue
    .line 338
    return-void
.end method

.method public onRecordingModeMenuSelect(I)V
    .registers 2
    .parameter "recordingMode"

    .prologue
    .line 353
    return-void
.end method

.method public onResolutionMenuSelect(I)V
    .registers 2
    .parameter "resolution"

    .prologue
    .line 313
    return-void
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 745
    const-string v4, "AbstractCameraActivity"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :try_start_9
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 748
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuBase;->onResume()V
    :try_end_1c
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_1c} :catch_f2

    .line 756
    :cond_1c
    :goto_1c
    iput-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    .line 759
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 760
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 762
    :cond_2b
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 763
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 765
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3c

    .line 766
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 769
    :cond_3c
    const/4 v2, 0x1

    .line 771
    .local v2, mAutomatic:I
    :try_start_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3d .. :try_end_4a} :catch_de

    move-result v2

    .line 777
    :goto_4b
    if-ne v2, v7, :cond_e8

    .line 778
    iput-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 780
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 781
    .local v3, pm:Landroid/os/PowerManager;
    const-string v4, "persist.sys.default_brightness"

    const/16 v5, 0x78

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 782
    .local v0, defBrightness:I
    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 787
    .end local v0           #defBrightness:I
    .end local v3           #pm:Landroid/os/PowerManager;
    :goto_63
    const-string v4, "GT-I9100"

    const-string v5, "GT-N7000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    const-string v4, "GT-I9100"

    const-string v5, "GT-I9220"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 788
    :cond_77
    const-string v4, "AbstractCameraActivity"

    const-string v5, "setSystemPowerSaveMode true for brightness"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 790
    .restart local v3       #pm:Landroid/os/PowerManager;
    invoke-virtual {v3, v7}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 794
    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_89
    const-string v4, "AbstractCameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume : SCREEN_BRIGHTNESS_MODE - mAutomatic:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bTurnOnScrAB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v4, :cond_b6

    .line 798
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 800
    :cond_b6
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v4, :cond_da

    .line 801
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->onResume()V

    .line 802
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->resetOrientation()V

    .line 803
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLContext;->enableOrientation(Z)V

    .line 804
    const-string v4, "GT-I9100"

    const-string v5, "SGH-T879"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 805
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLContext;->setScrollBarAutoHide(Z)V

    .line 813
    :cond_da
    :goto_da
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 814
    return-void

    .line 773
    :catch_de
    move-exception v1

    .line 774
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "AbstractCameraActivity"

    const-string v5, "to get SCREEN_BRIGHTNESS_MODE failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .line 784
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_e8
    iput-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    goto/16 :goto_63

    .line 807
    :cond_ec
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLContext;->setScrollBarAutoHide(Z)V

    goto :goto_da

    .line 750
    .end local v2           #mAutomatic:I
    :catch_f2
    move-exception v4

    goto/16 :goto_1c
.end method

.method public onReviewMenuSelect(I)V
    .registers 2
    .parameter "cameraReview"

    .prologue
    .line 331
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .registers 2
    .parameter "sns"

    .prologue
    .line 340
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .registers 2
    .parameter "saturation"

    .prologue
    .line 325
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .registers 2
    .parameter "sceneMode"

    .prologue
    .line 350
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .registers 1

    .prologue
    .line 404
    return-void
.end method

.method public onSharpnessMenuSelect(I)V
    .registers 2
    .parameter "sharpness"

    .prologue
    .line 328
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .registers 2
    .parameter "sns"

    .prologue
    .line 334
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .registers 2
    .parameter "shootingMode"

    .prologue
    .line 304
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .registers 2
    .parameter "shutterSound"

    .prologue
    .line 344
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .registers 1

    .prologue
    .line 398
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_13} :catch_2d

    .line 1003
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1004
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1011
    :cond_29
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1012
    return-void

    .line 999
    :catch_2d
    move-exception v0

    goto :goto_13
.end method

.method public onStorageMenuSelect(I)V
    .registers 2
    .parameter "storage"

    .prologue
    .line 389
    return-void
.end method

.method public onTimerEvent(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 392
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .registers 2
    .parameter "timer"

    .prologue
    .line 307
    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 703
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 704
    return-void
.end method

.method public onVintageMenuSelect(I)V
    .registers 2
    .parameter "vintage"

    .prologue
    .line 395
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .registers 2
    .parameter "whiteBalance"

    .prologue
    .line 319
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 817
    if-eqz p1, :cond_5

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 819
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 820
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .registers 2
    .parameter "zoomValue"

    .prologue
    .line 310
    return-void
.end method

.method protected pauseAudioPlayback()V
    .registers 5

    .prologue
    .line 1522
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1523
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1524
    return-void
.end method

.method public abstract playCameraSound(II)V
.end method

.method public popMenu(I)V
    .registers 3
    .parameter "zOrder"

    .prologue
    .line 517
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    if-lt v0, p1, :cond_23

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_21
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_0

    .line 524
    :catch_22
    move-exception v0

    .line 527
    :cond_23
    return-void
.end method

.method public processBack()V
    .registers 5

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 489
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    move-object v2, v0
    :try_end_b
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_b} :catch_27

    .line 495
    :goto_b
    if-eqz v2, :cond_26

    .line 496
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 497
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 500
    :try_start_13
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 501
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V
    :try_end_26
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_26} :catch_2c

    .line 507
    :cond_26
    :goto_26
    return-void

    .line 490
    :catch_27
    move-exception v1

    .line 492
    .local v1, e:Ljava/util/EmptyStackException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_b

    .line 503
    .end local v1           #e:Ljava/util/EmptyStackException;
    :catch_2c
    move-exception v3

    goto :goto_26
.end method

.method public pushMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 473
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->popMenu(I)V

    .line 475
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_18
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_18} :catch_1e

    .line 482
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    return-void

    .line 478
    :catch_1e
    move-exception v0

    goto :goto_18
.end method

.method public removeMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_5} :catch_6

    .line 535
    :goto_5
    return-void

    .line 532
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public resetStorageMedia()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_a

    .line 1449
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1450
    :cond_a
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1451
    return-void
.end method

.method public abstract resetToDefaultSettings()V
.end method

.method public abstract resizeForPreviewAspectRatio()Z
.end method

.method protected restartInactivityTimer()V
    .registers 3

    .prologue
    .line 684
    const-string v0, "AbstractCameraActivity"

    const-string v1, "restarting inactivity timer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 686
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startInactivityTimer()V

    .line 687
    return-void
.end method

.method protected resumeAudioPlayback()V
    .registers 3

    .prologue
    .line 1527
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1528
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1529
    return-void
.end method

.method public setDefaultStorageStatus()V
    .registers 2

    .prologue
    .line 1532
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1533
    return-void
.end method

.method public showDlg(I)V
    .registers 5
    .parameter "nId"

    .prologue
    .line 1536
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_11

    .line 1537
    if-ne v0, p1, :cond_e

    .line 1538
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1539
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 1536
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1542
    :cond_11
    return-void
.end method

.method protected showEditableShortcutHelpTextDialog()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 1765
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_6

    .line 1801
    :cond_5
    :goto_5
    return-void

    .line 1768
    :cond_6
    const-string v6, "AbstractCameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create showEditableShortcutHelpTextDialog - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getEditableShortcutHelpTextDialog()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getEditableShortcutHelpTextDialog()I

    move-result v6

    if-eq v6, v9, :cond_5

    .line 1770
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1771
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1773
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030009

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1774
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f080035

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1775
    .local v2, img:Landroid/widget/ImageView;
    const v6, 0x7f080036

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1776
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f080037

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1778
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f0a0109

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1779
    const v6, 0x7f020025

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1781
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1782
    const v6, 0x7f0a0108

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1783
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1784
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1786
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$29;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$29;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1793
    const v6, 0x7f0a0095

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$30;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$30;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1798
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 1799
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5
.end method

.method public showResetPopup()V
    .registers 4

    .prologue
    .line 1706
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1707
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1708
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1709
    const v1, 0x7f0a00e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1711
    const v1, 0x7f0a00bd

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$27;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$27;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1719
    const v1, 0x7f0a00be

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$28;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$28;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1727
    :goto_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1728
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_2d

    .line 1731
    :cond_37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 1732
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1734
    return-void
.end method

.method public abstract showSideMenu()V
.end method

.method public abstract showSideMenuItems()V
.end method

.method public showWaitingAnimation()V
    .registers 5

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    return-void
.end method

.method protected startInactivityTimer()V
    .registers 5

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 681
    return-void
.end method

.method protected startOverheatTimer()V
    .registers 5

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 695
    return-void
.end method

.method protected stopInactivityTimer()V
    .registers 3

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    return-void
.end method

.method protected stopOverheatTimer()V
    .registers 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    return-void
.end method

.method public abstract updateRemainStorageIndicator()V
.end method
