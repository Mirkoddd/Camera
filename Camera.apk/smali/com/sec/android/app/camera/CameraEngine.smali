.class public Lcom/sec/android/app/camera/CameraEngine;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;,
        Lcom/sec/android/app/camera/CameraEngine$LocationListener;,
        Lcom/sec/android/app/camera/CameraEngine$CameraPreviewCallback;,
        Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;,
        Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;,
        Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;,
        Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;,
        Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;,
        Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;,
        Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;,
        Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;,
        Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;,
        Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;,
        Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;,
        Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;,
        Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
    }
.end annotation


# static fields
.field private static final AF_FAIL_SOUND:I = 0x2

.field private static final AF_SUCCESS_SOUND:I = 0x1

.field protected static final DEFAULT_IMEI_KTF:Ljava/lang/String; = "004400152020002"

.field protected static final DEFAULT_IMEI_SKT:Ljava/lang/String; = "357858010034783"

.field public static final ERROR_BUFFER_OVERFLOW_FROM_RECORDER:I = -0x6

.field public static final ERROR_CAMCORDER_OPEN:I = -0x2

.field public static final ERROR_CAMERA_OPEN:I = -0x1

.field public static final ERROR_INVALID_FIRMWARE_VERSION:I = -0x7

.field public static final ERROR_MEDIA_SERVER_DIED:I = -0x8

.field public static final ERROR_RECORDING:I = -0x4

.field public static final ERROR_START_PREVIEW:I = -0x3

.field public static final ERROR_UNKOWN_CALLBACK_FROM_DEVICE:I = -0x5

.field public static final FOCUSING:I = 0x1

.field public static final FOCUS_CANCELLED:I = 0x4

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_SUCCESS:I = 0x2

.field protected static final FRONT:I = 0x1

.field private static final LOCATION_DISTANCE:F = 100.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field private static final NUM_OF_SAVE_PICTURES_IN_HDR_MODE:I = 0x2

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREVIEW_HEIGHT:I = 0x1e0

.field private static final PREVIEW_NORMAL_WIDTH:I = 0x280

.field private static final PREVIEW_SHOT_MODE_HEIGHT:I = 0x1e0

.field private static final PREVIEW_SHOT_MODE_WIDTH:I = 0x280

.field private static final PREVIEW_WIDE_WIDTH:I = 0x320

.field protected static final REAR:I = 0x0

.field private static final RES_AUTOFOCUS_CANCELED:I = 0x2

.field private static final RES_AUTOFOCUS_SUCCESS:I = 0x1

.field public static final SHUTTER_TIMER_HANDLER_MSG:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraEngine"

.field protected static final URI_SEARCHING_FINISHED:I = 0x1

.field protected static final URI_SEARCHING_ID:I = 0x0

.field protected static final URI_SEARCHING_INTERVAL:I = 0x1e

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static m_bForFocusSetOrg:Z

.field private static m_bIsFocusSetAuto:Z

.field private static m_bIsObjectTracking:Z

.field private static m_bIsTouchAutoFocusing:Z

.field private static m_bIsTouchFocusPositioned:Z


# instance fields
.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field protected mCameraId:I

.field protected mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field protected mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCaptureInitiated:Z

.field protected mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

.field protected mDateTaken:J

.field public mEnableWaitingAnimation:Z

.field private mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

.field protected mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

.field private mFocusState:I

.field protected mFocusToneGenerator:Landroid/media/ToneGenerator;

.field protected mInformedAboutFirmwareVersion:Z

.field private mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

.field private mLandscapeActive:Z

.field private mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

.field private mLastCapturedFileName:Ljava/lang/String;

.field private mLastCapturedTitle:Ljava/lang/String;

.field protected mLastContentUri:Landroid/net/Uri;

.field private mLastOrientation:I

.field mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNumOfSavedImageInHDR:I

.field protected mNumberOfCameras:I

.field protected mOldViewFinderHeight:I

.field protected mOldViewFinderWidth:I

.field protected mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

.field protected mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

.field protected mOpenCameraThread:Ljava/lang/Thread;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationOnTake:I

.field protected mOriginalViewFinderHeight:I

.field protected mOriginalViewFinderWidth:I

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mPictureSavingThread:Ljava/lang/Thread;

.field private mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

.field protected mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

.field private mSearchingLastContentUriThread:Ljava/lang/Thread;

.field private mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

.field private mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

.field protected mStartPreviewThread:Ljava/lang/Thread;

.field protected mStateDepot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/AbstractCeState;",
            ">;"
        }
    .end annotation
.end field

.field protected mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

.field private mTapArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

.field protected mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 163
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    .line 164
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 165
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    .line 167
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    .line 168
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bForFocusSetOrg:Z

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 13
    .parameter "activityContext"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 112
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 118
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 119
    new-instance v1, Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CeRequestQueue;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    .line 121
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    .line 128
    iput v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 140
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    .line 141
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    .line 142
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 143
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 147
    iput v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    .line 153
    iput v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraId:I

    .line 158
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mEnableWaitingAnimation:Z

    .line 170
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 174
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    .line 175
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    .line 183
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    .line 193
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/CeStateIdle;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v3, p0, v4, v7}, Lcom/sec/android/app/camera/CeStateIdle;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/CeStateInitializing;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v3, p0, v4, v8}, Lcom/sec/android/app/camera/CeStateInitializing;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/CeStateInitialized;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v3, p0, v4, v9}, Lcom/sec/android/app/camera/CeStateInitialized;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/CeStateStartingPreview;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v5, 0x3

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/camera/CeStateStartingPreview;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/CeStatePreviewing;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v5, 0x4

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/camera/CeStatePreviewing;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/CeStateShutdown;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v5, 0x7

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/camera/CeStateShutdown;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    .line 227
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    .line 267
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    .line 285
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 287
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    .line 290
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    .line 291
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    .line 292
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    .line 293
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    .line 294
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    .line 296
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    .line 300
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 301
    iput v10, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    .line 302
    iput v10, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    .line 304
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 305
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 306
    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 2040
    new-array v1, v9, [Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;-><init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;-><init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)V

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    .line 353
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 354
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 357
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    .line 359
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfCameras:I

    .line 360
    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfCameras:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_131
    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfCameras:I

    if-ge v0, v1, :cond_148

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_131

    .line 366
    :cond_148
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    sget-object v2, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    #setter for: Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$402(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 372
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraEngine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/CameraEngine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    return p1
.end method

.method static synthetic access$1100()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/seccamera/SecCamera$Parameters;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/CameraEngine;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastOrientation(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CameraEngine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/CameraEngine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CaptureData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CaptureData;)Lcom/sec/android/app/camera/CaptureData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/CameraEngine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    return-object v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    return v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public static clamp(III)I
    .registers 3
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 2236
    if-le p0, p2, :cond_3

    .line 2238
    .end local p2
    :goto_2
    return p2

    .line 2237
    .restart local p2
    :cond_3
    if-ge p0, p1, :cond_7

    move p2, p1

    goto :goto_2

    :cond_7
    move p2, p0

    .line 2238
    goto :goto_2
.end method

.method private getCurrentStateId()I
    .registers 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    return v0
.end method

.method private initializeLocationManager()V
    .registers 3

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 1959
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    .line 1961
    :cond_10
    return-void
.end method

.method public static roundOrientation(I)I
    .registers 2
    .parameter "orientation"

    .prologue
    .line 2410
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private setLastOrientation(I)V
    .registers 2
    .parameter "lastOrientation"

    .prologue
    .line 2414
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    .line 2415
    return-void
.end method

.method private startReceivingLocationUpdates()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 1969
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->initializeLocationManager()V

    .line 1971
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1972
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1977
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_25} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_25} :catch_3f

    .line 1986
    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_35} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_35} :catch_66

    .line 1994
    :goto_35
    return-void

    .line 1980
    :catch_36
    move-exception v6

    .line 1981
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraEngine"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1982
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3f
    move-exception v6

    .line 1983
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1989
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_5d
    move-exception v6

    .line 1990
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraEngine"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 1991
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_66
    move-exception v6

    .line 1992
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private stopReceivingLocationUpdates()V
    .registers 5

    .prologue
    .line 1997
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1f

    .line 1998
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 2000
    :try_start_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_16

    .line 1998
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2001
    :catch_16
    move-exception v0

    .line 2002
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraEngine"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 2006
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_1f
    return-void
.end method


# virtual methods
.method public CreateCaptureData(Landroid/content/Intent;)V
    .registers 7
    .parameter "data"

    .prologue
    .line 2522
    if-eqz p1, :cond_49

    .line 2523
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v1, :cond_e

    .line 2524
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 2525
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2527
    :cond_e
    new-instance v1, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2528
    const-string v1, "inline-data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 2529
    .local v0, mdata:[B
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    const-wide v3, 0x4112c00000000000L

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V

    .line 2534
    .end local v0           #mdata:[B
    :cond_49
    return-void
.end method

.method public IsWaitingAnimation()Z
    .registers 2

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mEnableWaitingAnimation:Z

    return v0
.end method

.method protected calculateOrientationForPicture(I)I
    .registers 8
    .parameter "orientation"

    .prologue
    const/4 v5, 0x1

    .line 2430
    const/4 v1, 0x0

    .line 2431
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_84

    .line 2432
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    iget v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraId:I

    aget-object v0, v2, v3

    .line 2433
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateOrientationForPicture - orientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateOrientationForPicture - info.facing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateOrientationForPicture - info.orientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v5, :cond_8d

    .line 2437
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v2

    if-ne v2, v5, :cond_85

    .line 2438
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0xb4

    rem-int/lit16 v1, v2, 0x168

    .line 2446
    :goto_6c
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateOrientationForPicture - rotation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_84
    return v1

    .line 2440
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_85
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    goto :goto_6c

    .line 2443
    :cond_8d
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_6c
.end method

.method public final cancelAutoFocus()V
    .registers 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_c

    .line 958
    const-string v0, "CameraEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_b
    :goto_b
    return-void

    .line 962
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_1a

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$2;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 971
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 972
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_b

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_b
.end method

.method public cancelCaptureForPanorama()V
    .registers 5

    .prologue
    .line 1704
    const-string v0, "CameraEngine"

    const-string v1, "cancelCaptureForPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1706
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->cancelCaptureForPanorama()V

    .line 1707
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1709
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 1711
    return-void
.end method

.method public cancelFocusing()V
    .registers 2

    .prologue
    .line 2205
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 2206
    return-void
.end method

.method public cancelSeriesActionShot()V
    .registers 2

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->cancelSeriesActionShot()V

    .line 2383
    return-void
.end method

.method public changeEngineState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 581
    if-ltz p1, :cond_5

    const/4 v0, 0x7

    if-le p1, v0, :cond_6

    .line 588
    :cond_5
    :goto_5
    return-void

    .line 586
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCeState;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 587
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEngineState => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public chkActionShotStarted()Z
    .registers 2

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->chkActionShotStarted()Z

    move-result v0

    return v0
.end method

.method public clearCaptureImageData()V
    .registers 2

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v0, :cond_c

    .line 2230
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 2231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2233
    :cond_c
    return-void
.end method

.method public clearFocusState()V
    .registers 2

    .prologue
    .line 2201
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 2202
    return-void
.end method

.method public clearLastContentUri()V
    .registers 2

    .prologue
    .line 2221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2222
    return-void
.end method

.method public clearRequest()V
    .registers 4

    .prologue
    .line 1300
    const-string v1, "CameraEngine"

    const-string v2, "clearRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    const/16 v1, 0xa

    if-gt v0, v1, :cond_14

    .line 1303
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->removeMessages(I)V

    .line 1302
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1306
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1307
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1308
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1309
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1310
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1311
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1312
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1313
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1314
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1315
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1316
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1318
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequestQueue;->clear()V

    .line 1319
    return-void
.end method

.method public clearTimer()V
    .registers 4

    .prologue
    .line 1746
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0xa

    if-gt v0, v1, :cond_d

    .line 1747
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->removeMessages(I)V

    .line 1746
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1750
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1752
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1753
    return-void
.end method

.method public convertExifOrientationToMediaOrientation(I)I
    .registers 3
    .parameter "orientation"

    .prologue
    .line 2465
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 2466
    const/16 v0, 0x5a

    .line 2472
    :goto_5
    return v0

    .line 2467
    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 2468
    const/16 v0, 0xb4

    goto :goto_5

    .line 2469
    :cond_c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_13

    .line 2470
    const/16 v0, 0x10e

    goto :goto_5

    .line 2472
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public convertToExifInterfaceOrientation(I)I
    .registers 4
    .parameter "orientation"

    .prologue
    const/4 v0, 0x1

    .line 2452
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_7

    .line 2453
    const/4 v0, 0x6

    .line 2461
    :cond_6
    :goto_6
    return v0

    .line 2454
    :cond_7
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_d

    .line 2455
    const/4 v0, 0x3

    goto :goto_6

    .line 2456
    :cond_d
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_14

    .line 2457
    const/16 v0, 0x8

    goto :goto_6

    .line 2458
    :cond_14
    const/16 v1, 0x168

    if-eq p1, v1, :cond_6

    if-nez p1, :cond_6

    goto :goto_6
.end method

.method public disableStatusBar()V
    .registers 4

    .prologue
    .line 3169
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 3170
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_11

    .line 3171
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 3173
    :cond_11
    return-void
.end method

.method public final doAutoFocusAsync()V
    .registers 5

    .prologue
    .line 946
    const-string v0, "CameraEngine"

    const-string v1, "doAutoFocusAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**StartU["

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

    .line 950
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_37

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 954
    :cond_37
    return-void
.end method

.method public final doCancelShutterTimer()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 996
    const-string v0, "CameraEngine"

    const-string v1, "doCancelShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resumeAudioPlayback()V

    .line 1000
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1003
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1005
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1006
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1010
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_50

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    .line 1011
    :cond_50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1013
    :cond_53
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1014
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1015
    return-void
.end method

.method protected doCaptureAfterAF()V
    .registers 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    .line 786
    return-void
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .registers 8
    .parameter "param"

    .prologue
    const/16 v5, 0x7530

    const/16 v4, 0x3a98

    const/16 v3, 0x1e0

    .line 1598
    const-string v1, "CameraEngine"

    const-string v2, "doChangeParameterSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_19

    .line 1601
    const-string v1, "CameraEngine"

    const-string v2, "returning because mCameraDevice is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_18
    :goto_18
    return-void

    .line 1605
    :cond_19
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_25

    .line 1606
    const-string v1, "CameraEngine"

    const-string v2, "mParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_25
    move-object v0, p1

    .line 1610
    check-cast v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    .line 1611
    .local v0, p:Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    packed-switch v1, :pswitch_data_180

    .line 1673
    :goto_2f
    :pswitch_2f
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v1

    if-nez v1, :cond_177

    .line 1674
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1679
    :goto_3f
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 1680
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto :goto_18

    .line 1615
    :pswitch_50
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1616
    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 1617
    iput v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 1624
    :goto_62
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7e

    .line 1625
    const-string v1, "CameraEngine"

    const-string v2, "preview-frame-rate 15"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_2f

    .line 1619
    :cond_77
    const/16 v1, 0x280

    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 1620
    iput v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    goto :goto_62

    .line 1628
    :cond_7e
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_2f

    .line 1632
    :pswitch_84
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 1635
    :pswitch_9a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVintageString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getVintageModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 1638
    :pswitch_ac
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1641
    :pswitch_c3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1644
    :pswitch_da
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1647
    :pswitch_f1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1650
    :pswitch_108
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1653
    :pswitch_11f
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1656
    :pswitch_136
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 1659
    :pswitch_14d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_2f

    .line 1669
    :pswitch_164
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_2f

    .line 1676
    :cond_177
    const-string v1, "CameraEngine"

    const-string v2, "parameter will set next operation coming"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1611
    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_50
        :pswitch_84
        :pswitch_c3
        :pswitch_ac
        :pswitch_da
        :pswitch_2f
        :pswitch_164
        :pswitch_f1
        :pswitch_108
        :pswitch_11f
        :pswitch_136
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_2f
        :pswitch_14d
        :pswitch_2f
        :pswitch_164
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_9a
    .end packed-switch
.end method

.method public final doHideReviewScreenSync()V
    .registers 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideReviewMenu()V

    .line 1150
    return-void
.end method

.method public final doPostInitSync()V
    .registers 3

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V

    .line 1272
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnBlinkDetectionEventListener(Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;)V

    .line 1273
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V

    .line 1274
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V

    .line 1275
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setObjectTrackingMsgListener(Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;)V

    .line 1276
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V

    .line 1277
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V

    .line 1278
    return-void
.end method

.method public doProcessBackSync()V
    .registers 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 1573
    return-void
.end method

.method public doSetAllParamsSync()V
    .registers 3

    .prologue
    .line 1024
    const-string v0, "CameraEngine"

    const-string v1, "doSetAllParamsSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->initialize()V

    .line 1026
    return-void
.end method

.method public doSetParametersSync(Ljava/lang/Object;)V
    .registers 6
    .parameter "param"

    .prologue
    .line 1582
    const-string v1, "CameraEngine"

    const-string v2, "doSetParametersSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_22

    move-object v0, p1

    .line 1585
    check-cast v0, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;

    .line 1586
    .local v0, p:Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1589
    .end local v0           #p:Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;
    :cond_22
    return-void
.end method

.method public final doShowReviewScreenSync()V
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showReviewMenu()V

    .line 1142
    return-void
.end method

.method public final doShutterTimerAsync(I)V
    .registers 7
    .parameter "value"

    .prologue
    .line 985
    const-string v1, "CameraEngine"

    const-string v2, "doShutterTimerAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    move v0, p1

    .line 988
    .local v0, i:I
    move v0, p1

    :goto_9
    const/4 v1, -0x1

    if-le v0, v1, :cond_1b

    .line 989
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 988
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 992
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    add-int/lit8 v3, p1, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 993
    return-void
.end method

.method public final doStartActionShotSync()V
    .registers 3

    .prologue
    .line 1076
    const-string v0, "CameraEngine"

    const-string v1, "doStartActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationAndSendItToFramework()V

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->pauseAudioPlayback()V

    .line 1079
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startSeriesActionShot()V

    .line 1080
    return-void
.end method

.method public doStartEngineAsync()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1159
    const-string v0, "CameraEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    .line 1164
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_16

    .line 1165
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 1168
    :cond_16
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1170
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1171
    iput v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraId:I

    .line 1175
    :goto_23
    const-string v0, "GT-I9103"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "SGH-I927"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 1183
    :cond_37
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 1184
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_84

    .line 1185
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1193
    :cond_46
    :goto_46
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 1196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$4;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_88

    .line 1235
    const-string v0, "CameraEngine"

    const-string v1, "camera device is already conntected for some reason (eg. onResume is called twice without calling onPause)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string v0, "CameraEngine"

    const-string v1, "skip connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1243
    :goto_6c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v0

    if-ne v0, v3, :cond_95

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1245
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->startReceivingLocationUpdates()V

    .line 1249
    :goto_7d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationListener()V

    .line 1252
    return-void

    .line 1173
    :cond_81
    iput v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraId:I

    goto :goto_23

    .line 1187
    :cond_84
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_46

    .line 1239
    :cond_88
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCameraThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6c

    .line 1247
    :cond_95
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGps(I)V

    goto :goto_7d
.end method

.method public final doStartPanoramaAsync()V
    .registers 4

    .prologue
    .line 1043
    const-string v1, "CameraEngine"

    const-string v2, "doStartPanoramaSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$3;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1053
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "PanoramaStartingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1055
    return-void
.end method

.method public doStartPreviewAsync()V
    .registers 10

    .prologue
    const/4 v7, 0x3

    .line 1360
    const-string v5, "CameraEngine"

    const-string v6, "doStartPreviewAsync"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1365
    .local v2, _axtime_st_1:J
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v5, :cond_21

    .line 1366
    const-string v5, "CameraEngine"

    const-string v6, "return because mSurfaceHolder is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    if-eqz v5, :cond_20

    .line 1369
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1471
    :cond_20
    :goto_20
    return-void

    .line 1375
    :cond_21
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v5, :cond_2d

    .line 1376
    const-string v5, "CameraEngine"

    const-string v6, "return because mCameraDevice is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1380
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->resetPreviewSize()V

    .line 1383
    :try_start_30
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_b7

    .line 1394
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/app/camera/CameraEngine$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CameraEngine$5;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1441
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    const-string v6, "startPreviewThread"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1442
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1443
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1445
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v5, :cond_cd

    .line 1446
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v5}, Landroid/view/OrientationEventListener;->enable()V

    .line 1450
    :goto_5b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1451
    .local v0, _axtime_ed_1:J
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PrepareStartPreview-End**End["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**[]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    move-wide v2, v0

    .line 1453
    const-string v5, "GT-I9103"

    const-string v6, "GT-I9100"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9e

    const-string v5, "SGH-I927"

    const-string v6, "GT-I9100"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1455
    :cond_9e
    const-string v5, "CameraEngine"

    const-string v6, "YS --- N1 OK "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 1464
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v5

    if-nez v5, :cond_d5

    .line 1465
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto/16 :goto_20

    .line 1384
    .end local v0           #_axtime_ed_1:J
    :catch_b7
    move-exception v4

    .line 1385
    .local v4, exception:Ljava/io/IOException;
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v5}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 1386
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1389
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 1390
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_20

    .line 1448
    .end local v4           #exception:Ljava/io/IOException;
    :cond_cd
    const-string v5, "CameraEngine"

    const-string v6, "doStartPreviewAsync : mOrientationListener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 1467
    .restart local v0       #_axtime_ed_1:J
    :cond_d5
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto/16 :goto_20
.end method

.method public doStartSmileDetectionAsync()V
    .registers 3

    .prologue
    .line 1544
    const-string v0, "CameraEngine"

    const-string v1, "startSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 1546
    return-void
.end method

.method public doStopActionShotSync()V
    .registers 3

    .prologue
    .line 1089
    const-string v0, "CameraEngine"

    const-string v1, "doStopActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopSeriesActionShot()V

    .line 1092
    return-void
.end method

.method public doStopEngineSync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1328
    const-string v0, "CameraEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_14

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 1332
    iput-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 1335
    :cond_14
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    if-eqz v0, :cond_1b

    .line 1336
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopObjectTracking()V

    .line 1337
    :cond_1b
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v0, :cond_25

    .line 1338
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 1339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1341
    :cond_25
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopReceivingLocationUpdates()V

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_33

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 1345
    iput-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1350
    :cond_33
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1351
    return-void
.end method

.method public doStopPanoramaSync()V
    .registers 3

    .prologue
    .line 1064
    const-string v0, "CameraEngine"

    const-string v1, "doStopPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startPanorama(Z)V

    .line 1067
    return-void
.end method

.method public doStopPreviewDummySync()V
    .registers 3

    .prologue
    .line 1500
    const-string v0, "CameraEngine"

    const-string v1, "doStopPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_15

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1508
    :goto_14
    return-void

    .line 1506
    :cond_15
    const-string v0, "CameraEngine"

    const-string v1, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public doStopPreviewSync()V
    .registers 9

    .prologue
    .line 1511
    const-string v4, "CameraEngine"

    const-string v5, "doStopPreviewSync"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1516
    .local v2, _axtime_st_1:J
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_14

    .line 1517
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1520
    :cond_14
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1522
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v4, :cond_51

    .line 1523
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->disable()V

    .line 1526
    :goto_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1527
    .local v0, _axtime_ed_1:J
    const-string v4, "AXLOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPreview**End["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**[]**"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    move-wide v2, v0

    .line 1529
    return-void

    .line 1525
    .end local v0           #_axtime_ed_1:J
    :cond_51
    const-string v4, "CameraEngine"

    const-string v5, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public doStopSmileDetectionSync()V
    .registers 3

    .prologue
    .line 1561
    const-string v0, "CameraEngine"

    const-string v1, "stopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 1563
    return-void
.end method

.method public final doSwitchCameraSync(Z)V
    .registers 6
    .parameter "main"

    .prologue
    .line 1295
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching-doSwitchCameraSync**Point["

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

    .line 1296
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setMainCameraSelected(Z)V

    .line 1297
    return-void
.end method

.method public final doTakePictureAsync()V
    .registers 6

    .prologue
    .line 1105
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shot2Shot-TakePicture**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationOnTake(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1110
    .local v0, rotation:I
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doTakePictureAsync - rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 1113
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 1114
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_81

    .line 1115
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1116
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 1118
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_81

    .line 1119
    const-string v1, "CameraEngine"

    const-string v2, "[HDR] mNumOfSavedImageInHDR = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I

    .line 1124
    :cond_81
    return-void
.end method

.method public final doWaitAsync(I)V
    .registers 6
    .parameter "milisec"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1134
    return-void
.end method

.method public enableStatusBar()V
    .registers 4

    .prologue
    .line 3161
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 3162
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_10

    .line 3163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 3165
    :cond_10
    return-void
.end method

.method public forSetOrgFocus()V
    .registers 2

    .prologue
    .line 2370
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bForFocusSetOrg:Z

    .line 2371
    return-void
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .registers 6

    .prologue
    .line 2015
    const/4 v1, 0x0

    .line 2016
    .local v1, l:Landroid/location/Location;
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    array-length v2, v4

    .line 2017
    .local v2, length:I
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    .line 2019
    .local v3, localArray:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_16

    .line 2020
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 2021
    if-eqz v1, :cond_13

    move-object v4, v1

    .line 2024
    :goto_12
    return-object v4

    .line 2019
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2024
    :cond_16
    const/4 v4, 0x0

    goto :goto_12
.end method

.method public getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;
    .registers 2

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    return-object v0
.end method

.method public getFocusState()I
    .registers 2

    .prologue
    .line 2209
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    return v0
.end method

.method protected getGpsLocation()Landroid/location/Location;
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const-wide/16 v9, 0x0

    .line 1912
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v8, :cond_9

    .line 1953
    :cond_8
    :goto_8
    return-object v3

    .line 1916
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->removeGpsData()V

    .line 1919
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v8

    if-ne v8, v0, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1922
    .local v3, loc:Landroid/location/Location;
    :cond_1a
    if-eqz v3, :cond_8

    .line 1923
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1924
    .local v1, lat:D
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1925
    .local v4, lon:D
    cmpl-double v8, v1, v9

    if-nez v8, :cond_2c

    cmpl-double v8, v4, v9

    if-eqz v8, :cond_5f

    .line 1928
    .local v0, hasLatLon:Z
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_67

    .line 1929
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLatitude(D)V

    .line 1930
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLongitude(D)V

    .line 1931
    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1932
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    .line 1939
    :goto_47
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 1942
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 1943
    .local v6, utcTimeSeconds:J
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsTimestamp(J)V

    goto :goto_8

    .line 1925
    .end local v0           #hasLatLon:Z
    .end local v6           #utcTimeSeconds:J
    :cond_5f
    const/4 v0, 0x0

    goto :goto_2c

    .line 1937
    .restart local v0       #hasLatLon:Z
    :cond_61
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    goto :goto_47

    .line 1946
    :cond_67
    const/4 v3, 0x0

    goto :goto_8
.end method

.method public getKeyLockState()Z
    .registers 2

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getKeyLockState()Z

    move-result v0

    return v0
.end method

.method public getLandscapeActive()Z
    .registers 2

    .prologue
    .line 2390
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    return v0
.end method

.method public getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;
    .registers 2

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object v0
.end method

.method public getLastCapturedFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getLastDateTaken()J
    .registers 3

    .prologue
    .line 1908
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mDateTaken:J

    return-wide v0
.end method

.method public getLastOrientation()I
    .registers 2

    .prologue
    .line 2418
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    return v0
.end method

.method public getNumberOfCameras()I
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mNumberOfCameras:I

    return v0
.end method

.method public getOrientationOnTake()I
    .registers 2

    .prologue
    .line 2426
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    return v0
.end method

.method public getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;
    .registers 2

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    return-object v0
.end method

.method public getTouchFocusPositioned()Z
    .registers 2

    .prologue
    .line 2283
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public handleShutterEvent()V
    .registers 3

    .prologue
    .line 1694
    const-string v0, "CameraEngine"

    const-string v1, "handleShuttreEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleShutterEvent()V

    .line 1696
    return-void
.end method

.method public handleShutterReleaseEvent()V
    .registers 3

    .prologue
    .line 1699
    const-string v0, "CameraEngine"

    const-string v1, "handleShutterReleaseEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleShutterReleaseEvent()V

    .line 1701
    return-void
.end method

.method public imageStoringCompleted()V
    .registers 4

    .prologue
    .line 1728
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_21

    .line 1729
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_14} :catch_2e

    if-eqz v1, :cond_21

    .line 1731
    :try_start_16
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->shareFile(Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_21} :catch_2e

    .line 1742
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted()V

    .line 1743
    :goto_28
    return-void

    .line 1732
    :catch_29
    move-exception v0

    .line 1734
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_21

    .line 1737
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2e
    move-exception v0

    .line 1738
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_28
.end method

.method public initialize()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 398
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 400
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "camera-id"

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x25

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffect()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 410
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x18

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 411
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x19

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x1a

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 413
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1c1

    .line 414
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVintageString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getVintageModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_c2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v7, :cond_1d1

    .line 419
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 424
    :goto_d1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 434
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 435
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 444
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "video_recording_gamma"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "slow_ae"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "50hz"

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 566
    :goto_185
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "disable-aeawb-lock"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 568
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 570
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    .line 572
    const-string v2, "357858010034783"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b4

    const-string v2, "004400152020002"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 573
    :cond_1b4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2, v6}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    .line 577
    :goto_1b9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v3, 0x454

    invoke-virtual {v2, v3, v6, v5}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 578
    return-void

    .line 416
    :cond_1c1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVintageString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getVintageModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 421
    :cond_1d1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_d1

    .line 505
    :cond_1dc
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "camera-id"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x25

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 515
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 518
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 519
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "video_recording_gamma"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "slow_ae"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setFrontSensorMirror(I)V

    goto/16 :goto_185

    .line 575
    :cond_246
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2, v5}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    goto/16 :goto_1b9
.end method

.method public isAutoFocusing()Z
    .registers 3

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 846
    const/4 v0, 0x1

    .line 848
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCapturing()Z
    .registers 3

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 855
    :cond_1d
    const/4 v0, 0x1

    .line 857
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isCurrentState(I)Z
    .registers 3
    .parameter "state"

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateId()I

    move-result v0

    if-ne v0, p1, :cond_8

    .line 909
    const/4 v0, 0x1

    .line 910
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isMediaScannerScanning(Landroid/content/Context;)Z
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 3143
    const/4 v7, 0x0

    .line 3144
    .local v7, result:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3145
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3147
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3b

    .line 3148
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_38

    .line 3149
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3150
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3151
    .local v8, volumeName:Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "internal"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3152
    :cond_37
    const/4 v7, 0x1

    .line 3154
    .end local v8           #volumeName:Ljava/lang/String;
    :cond_38
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3156
    :cond_3b
    return v7
.end method

.method public isObjectTracking()Z
    .registers 2

    .prologue
    .line 2298
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    return v0
.end method

.method public isObjectTrackingPositioned()Z
    .registers 2

    .prologue
    .line 2378
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public isPanoramaCapturing()Z
    .registers 2

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->isPanoramaCapturing()Z

    move-result v0

    return v0
.end method

.method public isPrepareRecording()Z
    .registers 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 594
    :cond_14
    const/4 v0, 0x1

    .line 596
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isPreviewStarted()Z
    .registers 2

    .prologue
    .line 885
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 886
    const/4 v0, 0x1

    .line 888
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isProviderEnabled()Z
    .registers 3

    .prologue
    .line 1964
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->initializeLocationManager()V

    .line 1965
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSmileDetecting()Z
    .registers 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 879
    const/4 v0, 0x1

    .line 881
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isStartingEngine()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 861
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 864
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public isStartingPreview()Z
    .registers 4

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 868
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 874
    :cond_8
    :goto_8
    return v0

    .line 871
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 874
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStopPreviewPending()Z
    .registers 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 894
    const/4 v0, 0x1

    .line 896
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isTimerCounting()Z
    .registers 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    .line 902
    const/4 v0, 0x1

    .line 904
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isTouchAutoFocusing()Z
    .registers 2

    .prologue
    .line 2374
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .registers 6
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 2120
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2123
    const-string v0, "CameraEngine"

    const-string v1, "capture in progress, setparameters are not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :goto_2f
    return-void

    .line 2127
    :cond_30
    packed-switch p1, :pswitch_data_6a

    .line 2181
    :cond_33
    :goto_33
    :pswitch_33
    sparse-switch p1, :sswitch_data_ae

    goto :goto_2f

    .line 2189
    :sswitch_37
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    goto :goto_2f

    .line 2145
    :pswitch_3c
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto :goto_33

    .line 2148
    :pswitch_40
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    goto :goto_33

    .line 2152
    :pswitch_44
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_33

    .line 2167
    :pswitch_4d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_33

    .line 2168
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->startReceivingLocationUpdates()V

    goto :goto_33

    .line 2173
    :pswitch_54
    if-nez p2, :cond_33

    .line 2174
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_33

    .line 2175
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->releaseBlinkDetection()V

    goto :goto_33

    .line 2183
    :sswitch_60
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    goto :goto_2f

    .line 2186
    :sswitch_65
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    goto :goto_2f

    .line 2127
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_33
        :pswitch_3c
        :pswitch_3c
        :pswitch_33
        :pswitch_3c
        :pswitch_33
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_54
        :pswitch_3c
        :pswitch_33
        :pswitch_44
        :pswitch_33
        :pswitch_4d
        :pswitch_33
        :pswitch_40
        :pswitch_33
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_3c
    .end packed-switch

    .line 2181
    :sswitch_data_ae
    .sparse-switch
        0x3 -> :sswitch_37
        0x9 -> :sswitch_65
        0x16 -> :sswitch_60
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v1, :cond_15

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 389
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_f

    .line 390
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 392
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 394
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 375
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v1, :cond_3b

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 377
    .local v0, holder:Landroid/view/SurfaceHolder;
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreate**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz v0, :cond_35

    .line 379
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 380
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 382
    :cond_35
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 384
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_3b
    return-void
.end method

.method public releaseCamera()V
    .registers 2

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_c

    .line 3177
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 3178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 3180
    :cond_c
    return-void
.end method

.method public resetPanoramaCapturing()V
    .registers 2

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->resetPanoramaCapturing()V

    .line 1719
    return-void
.end method

.method protected resetPreviewSize()V
    .registers 8

    .prologue
    const/16 v6, 0x320

    const/16 v5, 0x280

    const/4 v4, 0x0

    const/16 v3, 0x1e0

    .line 1756
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPreviewSize()- WH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string v0, "GT-I9103"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "SGH-I927"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1760
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1761
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 1762
    iput v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 1768
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_c4

    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_84

    .line 1777
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1816
    :goto_63
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_bc

    .line 1817
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_77

    .line 1818
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v1, 0x410

    invoke-virtual {v0, v1, v4, v4}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1820
    :cond_77
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1829
    :goto_7e
    return-void

    .line 1764
    :cond_7f
    iput v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 1765
    iput v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    goto :goto_51

    .line 1788
    :cond_84
    const-string v0, "GT-I9103"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "SGH-I927"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 1790
    :cond_98
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFrontToRear:Z

    if-eqz v0, :cond_b2

    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v4, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFrontToRear:Z

    .line 1793
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    if-ne v0, v6, :cond_b2

    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    if-ne v0, v3, :cond_b2

    .line 1795
    const-string v0, "CameraEngine"

    const-string v1, "resetPreviewSize() return , Only use the N1_Model!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 1812
    :cond_b2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto :goto_63

    .line 1822
    :cond_bc
    const-string v0, "CameraEngine"

    const-string v1, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 1826
    :cond_c4
    const-string v0, "CameraEngine"

    const-string v1, "resetPreviewSize()- mParameters is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e
.end method

.method public final scheduleAutoFocus()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 914
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 917
    :cond_14
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus is skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 943
    :cond_1e
    :goto_1e
    return-void

    .line 922
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_2f

    .line 923
    const-string v0, "CameraEngine"

    const-string v1, "scheduleAutoFocus - current focus mode is off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 927
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_1e
.end method

.method public final scheduleChangeParameter(II)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1592
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleChangeParameter key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1595
    return-void
.end method

.method public final scheduleHideReviewScreen()V
    .registers 4

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1146
    return-void
.end method

.method public final schedulePostInit()V
    .registers 4

    .prologue
    .line 1265
    const-string v0, "CameraEngine"

    const-string v1, "schedulePostInit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1268
    return-void
.end method

.method public scheduleProcessBack()V
    .registers 4

    .prologue
    .line 1566
    const-string v0, "CameraEngine"

    const-string v1, "scheduleProcessBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1569
    return-void
.end method

.method public final scheduleSetAllParams()V
    .registers 4

    .prologue
    .line 1018
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSetAllParams"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1021
    return-void
.end method

.method public final scheduleSetParameters(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1576
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSetParameter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1579
    return-void
.end method

.method public final scheduleShowReviewScreen()V
    .registers 4

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1138
    return-void
.end method

.method public final scheduleShutterTimer(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 979
    const-string v0, "CameraEngine"

    const-string v1, "scheduleShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 982
    return-void
.end method

.method public final scheduleStartActionShot()V
    .registers 4

    .prologue
    .line 1070
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1073
    return-void
.end method

.method public final scheduleStartEngine()V
    .registers 4

    .prologue
    .line 1153
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1156
    return-void
.end method

.method public final scheduleStartPanorama()V
    .registers 4

    .prologue
    .line 1037
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1040
    return-void
.end method

.method public final scheduleStartPreview()V
    .registers 4

    .prologue
    .line 1354
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1357
    return-void
.end method

.method public scheduleStartSmileDetection()V
    .registers 4

    .prologue
    const/16 v2, 0xb

    .line 1532
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1541
    :cond_1b
    :goto_1b
    return-void

    .line 1540
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_1b
.end method

.method public final scheduleStopActionShot()V
    .registers 4

    .prologue
    .line 1083
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1086
    return-void
.end method

.method public final scheduleStopEngine()V
    .registers 4

    .prologue
    .line 1322
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1325
    return-void
.end method

.method public final scheduleStopPanorama()V
    .registers 4

    .prologue
    .line 1058
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1061
    return-void
.end method

.method public final scheduleStopPreview()V
    .registers 4

    .prologue
    .line 1491
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1497
    return-void
.end method

.method public final scheduleStopPreviewDummy()V
    .registers 4

    .prologue
    .line 1486
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1488
    return-void
.end method

.method public scheduleStopSmileDetection()V
    .registers 4

    .prologue
    const/16 v2, 0xc

    .line 1549
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1558
    :goto_11
    return-void

    .line 1556
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_11
.end method

.method public final scheduleSwitchCamera(Z)V
    .registers 5
    .parameter "main"

    .prologue
    .line 1281
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 1285
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x14

    if-eqz p1, :cond_32

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 1288
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_2e

    .line 1289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 1290
    :cond_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 1291
    return-void

    .line 1285
    :cond_32
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final scheduleTakePicture()V
    .registers 4

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1099
    return-void
.end method

.method public final scheduleWait(I)V
    .registers 5
    .parameter "milisec"

    .prologue
    .line 1127
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleWait: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mili seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1130
    return-void
.end method

.method public searchForInitialLastContentUri()V
    .registers 3

    .prologue
    .line 826
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$1;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    const-string v1, "searchForInitialLastContentUri"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 842
    return-void
.end method

.method protected searchForLastContentUri()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_7

    .line 823
    :goto_6
    return-void

    .line 793
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 796
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_ac

    .line 797
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 798
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 799
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 801
    .local v7, dataIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.NEW_PICTURE"

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 804
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 805
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 808
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_86
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    if-eqz v0, :cond_a4

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_93

    .line 810
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 813
    :cond_93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 819
    :goto_9f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 816
    :cond_a4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto :goto_9f

    .line 821
    :cond_ac
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto/16 :goto_6
.end method

.method public setFrontSensorMirror(I)V
    .registers 5
    .parameter "flip"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3205
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_d

    .line 3206
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_e

    :goto_a
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 3207
    :cond_d
    return-void

    :cond_e
    move v0, v1

    .line 3206
    goto :goto_a
.end method

.method public setHDMICableConnected(Z)V
    .registers 6
    .parameter "connected"

    .prologue
    const/4 v1, 0x0

    .line 3183
    const-string v0, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDMICableConnected. connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_25

    .line 3186
    const-string v0, "CameraEngine"

    const-string v1, "mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :goto_24
    return-void

    .line 3190
    :cond_25
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v3, 0x461

    if-eqz p1, :cond_30

    const/4 v0, 0x1

    :goto_2c
    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_24

    :cond_30
    move v0, v1

    goto :goto_2c
.end method

.method public setLandscapeActive(Z)V
    .registers 2
    .parameter "active"

    .prologue
    .line 2386
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    .line 2387
    return-void
.end method

.method public final setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    .line 187
    return-void
.end method

.method public setOnSutterSound(I)V
    .registers 5
    .parameter "shuttersound"

    .prologue
    .line 3194
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnSutterSound. shuttersound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    if-nez p1, :cond_2a

    .line 3197
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "AppShutterSound"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 3201
    :goto_22
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 3202
    return-void

    .line 3199
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "AppShutterSound"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_22
.end method

.method public final setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

    .line 197
    return-void
.end method

.method public setOrientationAndSendItToFramework()V
    .registers 5

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationOnTake(I)V

    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1031
    .local v0, rotation:I
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientationAndSendItToFramework - rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 1033
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1034
    return-void
.end method

.method protected setOrientationListener()V
    .registers 3

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_d

    .line 2395
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$6;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CameraEngine$6;-><init>(Lcom/sec/android/app/camera/CameraEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2406
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2407
    return-void
.end method

.method protected setOrientationOnTake(I)V
    .registers 2
    .parameter "orientationOnTake"

    .prologue
    .line 2422
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    .line 2423
    return-void
.end method

.method public setTouchFocusMode()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2303
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    if-nez v0, :cond_1c

    .line 2304
    sput-boolean v2, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    .line 2305
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2309
    :cond_1c
    return-void
.end method

.method public setTouchFocusPosition(II)V
    .registers 16
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x44fa

    const/high16 v10, 0x447a

    const/4 v9, 0x0

    .line 2242
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->setObjectTrackingPosition(II)V

    .line 2247
    const/16 v1, 0x66

    .line 2248
    .local v1, focusWidth:I
    const/16 v0, 0x46

    .line 2249
    .local v0, focusHeight:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v6

    if-eqz v6, :cond_164

    .line 2250
    const/16 v5, 0x320

    .line 2251
    .local v5, width:I
    const/16 v2, 0x1e0

    .line 2257
    .local v2, height:I
    :goto_1f
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    if-nez v6, :cond_39

    .line 2258
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    .line 2259
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v12}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2262
    :cond_39
    add-int/lit8 v6, p1, -0x33

    sub-int v7, v5, v1

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/CameraEngine;->clamp(III)I

    move-result v3

    .line 2263
    .local v3, left:I
    add-int/lit8 v6, p2, -0x23

    const/16 v7, 0x19a

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/CameraEngine;->clamp(III)I

    move-result v4

    .line 2265
    .local v4, top:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 2266
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v4

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 2267
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v3, v1

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 2268
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v4, v0

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 2270
    const-string v6, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "left: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " top: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    const-string v7, "CameraEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTapArea.get(0).rect.left: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const-string v7, "CameraEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTapArea.get(0).rect.top: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const-string v7, "CameraEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTapArea.get(0).rect.right: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    const-string v7, "CameraEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTapArea.get(0).rect.bottom: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mTapArea:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2277
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2279
    sput-boolean v12, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    .line 2280
    return-void

    .line 2253
    .end local v2           #height:I
    .end local v3           #left:I
    .end local v4           #top:I
    .end local v5           #width:I
    :cond_164
    const/16 v5, 0x280

    .line 2254
    .restart local v5       #width:I
    const/16 v2, 0x1e0

    .restart local v2       #height:I
    goto/16 :goto_1f
.end method

.method public setWaitingAnimation(Z)V
    .registers 2
    .parameter "waitinganimation"

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mEnableWaitingAnimation:Z

    .line 675
    return-void
.end method

.method public smileDetectionCompleted()V
    .registers 3

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1723
    return-void
.end method

.method public startObjectTracking()V
    .registers 2

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startObjectTracking()V

    .line 2288
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    .line 2289
    return-void
.end method

.method public startTouchAutoFocus()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2313
    const-string v0, "CameraEngine"

    const-string v1, "##############startTouchAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const-string v0, "RS_M5LS"

    const-string v1, "S5K4ECGX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2334
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startTouchAutoFocus()V

    .line 2335
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 2336
    return-void

    .line 2321
    :cond_1a
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    if-nez v0, :cond_12

    .line 2322
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    .line 2327
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_12
.end method

.method public startingPreviewCompleted()V
    .registers 3

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onStartingPreviewCompleted()V

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPreviewTimeout:Z

    .line 1483
    return-void
.end method

.method public stopLongTouchAutoFocus()V
    .registers 2

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_9

    .line 2340
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopTouchAutoFocus()V

    .line 2342
    :cond_9
    return-void
.end method

.method public stopObjectTracking()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2292
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopObjectTracking()V

    .line 2293
    sput-boolean v1, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    .line 2294
    sput-boolean v1, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    .line 2295
    return-void
.end method

.method public stopTouchAutoFocus()V
    .registers 5

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 2346
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopTouchAutoFocus()V

    .line 2348
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2349
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2350
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bForFocusSetOrg:Z

    if-eqz v0, :cond_42

    .line 2351
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2352
    :cond_24
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2355
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2362
    :cond_3e
    :goto_3e
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bForFocusSetOrg:Z

    .line 2363
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    .line 2365
    :cond_42
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 2366
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    .line 2367
    return-void

    .line 2357
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_3e
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 11
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v5, 0x1e0

    const/4 v4, 0x0

    .line 1832
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreate**EndU["

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

    .line 1834
    const-string v0, "GT-I9103"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "SGH-I927"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1836
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1837
    const/16 v0, 0x320

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 1838
    iput v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 1844
    :cond_6d
    :goto_6d
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    if-ne v0, p3, :cond_7f

    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    if-ne v0, p4, :cond_7f

    .line 1846
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraDefaultResolutionCheck:Z

    if-eqz v0, :cond_af

    .line 1848
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v4, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraDefaultResolutionCheck:Z

    .line 1855
    :cond_7f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8b

    .line 1856
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1869
    :cond_8b
    iput p3, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 1870
    iput p4, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 1872
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 1874
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->resetPreviewSize()V

    .line 1876
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b7

    .line 1877
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 1884
    :cond_af
    :goto_af
    return-void

    .line 1840
    :cond_b0
    const/16 v0, 0x280

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 1841
    iput v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    goto :goto_6d

    .line 1879
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c9

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_af

    .line 1881
    :cond_c9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_af
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 1887
    const-string v0, "CameraEngine"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1890
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1891
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 1894
    const-string v0, "CameraEngine"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1898
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1901
    :cond_1b
    return-void
.end method

.method public updateFocusIndicator()V
    .registers 3

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    if-eqz v0, :cond_b

    .line 2196
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;->onFocusStateChanged(I)V

    .line 2198
    :cond_b
    return-void
.end method

.method public updateStorage()V
    .registers 3

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    .line 1905
    return-void
.end method

.method public waitForCurrentPictureSaving()V
    .registers 2

    .prologue
    .line 2477
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 2478
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2483
    :cond_9
    :goto_9
    return-void

    .line 2480
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public waitForCurrentSearchingLastContentUri()V
    .registers 2

    .prologue
    .line 2513
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 2514
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2519
    :cond_9
    :goto_9
    return-void

    .line 2516
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public waitForEngineStartingThread()V
    .registers 2

    .prologue
    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 1257
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1262
    :cond_9
    :goto_9
    return-void

    .line 1259
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public waitForLastFileToSync()V
    .registers 7

    .prologue
    .line 2486
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 2499
    :goto_4
    return-void

    .line 2490
    :cond_5
    :try_start_5
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before file sync::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    sget-object v2, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 2492
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 2493
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after file sync::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_4e} :catch_4f
    .catch Ljava/io/SyncFailedException; {:try_start_5 .. :try_end_4e} :catch_54

    goto :goto_4

    .line 2494
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :catch_4f
    move-exception v0

    .line 2495
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 2496
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_54
    move-exception v0

    .line 2497
    .local v0, e:Ljava/io/SyncFailedException;
    invoke-virtual {v0}, Ljava/io/SyncFailedException;->printStackTrace()V

    goto :goto_4
.end method

.method public waitForStartPreviewThreadComplete()V
    .registers 2

    .prologue
    .line 2503
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 2504
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2509
    :cond_9
    :goto_9
    return-void

    .line 2506
    :catch_a
    move-exception v0

    goto :goto_9
.end method
