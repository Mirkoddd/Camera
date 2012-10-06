.class public Lcom/sec/android/app/camera/Camcorder;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camcorder$ThumbKicker;,
        Lcom/sec/android/app/camera/Camcorder$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field private static CA_HARDKEY_FULL_PRESS:I = 0x0

.field private static CA_HARDKEY_FULL_UP:I = 0x0

.field private static CA_HARDKEY_HALF_PRESS:I = 0x0

.field private static CA_HARDKEY_HALF_UP:I = 0x0

.field private static CA_HARDKEY_NONE:I = 0x0

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final LAST_VIDEO_URI:Ljava/lang/String; = "last_video_uri"

.field private static final MSG_RECORDING_MODE_POPUP_FOR_THREAD:I = 0x0

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field private static ORIENTATION_DIRTY_DURATION:I = 0x0

.field private static ORIENTATION_TIMER_EXPIRED:I = 0x0

.field public static final PREVIEW_HEIGHT:I = 0x1e0

.field public static final PREVIEW_HEIGHT_1280X720:I = 0x1c2

.field public static final PREVIEW_HEIGHT_176X144:I = 0x1b0

.field public static final PREVIEW_HEIGHT_1920X1080:I = 0x1c2

.field public static final PREVIEW_HEIGHT_320X240:I = 0x1e0

.field public static final PREVIEW_HEIGHT_640X480:I = 0x1e0

.field public static final PREVIEW_HEIGHT_720X480:I = 0x1e0

.field public static final PREVIEW_HEIGHT_800X480:I = 0x1e0

.field public static final PREVIEW_NORMAL_WIDTH:I = 0x280

.field public static final PREVIEW_WIDE_WIDTH:I = 0x320

.field public static final PREVIEW_WIDTH_1280X720:I = 0x320

.field public static final PREVIEW_WIDTH_176X144:I = 0x210

.field public static final PREVIEW_WIDTH_1920X1080:I = 0x320

.field public static final PREVIEW_WIDTH_320X240:I = 0x280

.field public static final PREVIEW_WIDTH_640X480:I = 0x280

.field public static final PREVIEW_WIDTH_720X480:I = 0x2d0

.field public static final PREVIEW_WIDTH_800X480:I = 0x320

.field private static RETRY_AUDIO_FOCUS_GAIN:I = 0x0

.field private static RETRY_AUDIO_FOCUS_GAIN_DURATION:I = 0x0

.field public static final SCREEN_HEIGHT:I = 0x1e0

.field public static final SCREEN_WIDTH:I = 0x320

.field private static SET_DIRTY_COUNT:I = 0x0

.field private static SET_DIRTY_DURATION:I = 0x0

.field private static SET_DIRTY_TIMER_EXPIRED:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "Camcorder"

.field public static final THUMBNAIL_LEFT:I = 0x2d8

.field public static final THUMBNAIL_SIZE:I = 0x42

.field public static final THUMBNAIL_TOP:I = 0x190

.field public static final VIDEO_THUMBNAIL_HEIGHT:I = 0x1e0

.field public static final VIDEO_THUMBNAIL_WIDTH:I = 0x280

.field private static final WIDGET_SETTINGS_OFF:Ljava/lang/String; = "com.sec.samsung.torchwidget.widget_off"

.field public static final ZOOM_VELOCITY:I = 0x46

.field private static mNotSupportedZoomToast:Landroid/widget/Toast;

.field private static mScanToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private bIsCharging:Z

.field private battLevel:I

.field private battScale:I

.field private mActionMoveCount:I

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

.field private mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

.field private mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

.field private mChkAllowFocusTouch:Z

.field private mChkLaunchGallery:Z

.field private mDirtyCount:I

.field private mDoRestoreShutterButton:Z

.field private mHardKeyStatus:I

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsDestroying:Z

.field private mIsReocrdingStoppedForcely:Z

.field private mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

.field private mLastVideoUri:Landroid/net/Uri;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field protected mLowBatteryDisableFlashPopupDisplayedAfterRecordingStop:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field protected mRecordingPopupHandler:Landroid/os/Handler;

.field private mRetryAudioFocusCount:I

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field private mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

.field private mTouchAutoFocusActive:Z

.field private mWindowManager:Landroid/view/IWindowManager;

.field public misTvoutenabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 146
    sput v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    .line 147
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    .line 149
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    .line 150
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    .line 151
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    .line 153
    const/16 v0, 0x12c

    sput v0, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    .line 154
    const/16 v0, 0x1f4

    sput v0, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN_DURATION:I

    .line 157
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    .line 158
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    .line 159
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_UP:I

    .line 160
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_PRESS:I

    .line 161
    sput v1, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 122
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 130
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 134
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 137
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 141
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 152
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 155
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRetryAudioFocusCount:I

    .line 163
    sget v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 167
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 212
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$1;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    .line 229
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 230
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mWindowManager:Landroid/view/IWindowManager;

    .line 231
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkAllowFocusTouch:Z

    .line 232
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 233
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    .line 238
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 241
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 242
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 243
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 249
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 253
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 254
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayedAfterRecordingStop:Z

    .line 256
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->misTvoutenabled:Z

    .line 267
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$2;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 471
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$3;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1582
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$4;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 2572
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 2574
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderBaseIndicators;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    return-object v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN_DURATION:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camcorder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camcorder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleMusicServiceCommand(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camcorder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/Camcorder;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/Camcorder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/RecordingData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/RecordingData;)Lcom/sec/android/app/camera/RecordingData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/Camcorder;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$504(Lcom/sec/android/app/camera/Camcorder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    return v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/Camcorder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRetryAudioFocusCount:I

    return v0
.end method

.method static synthetic access$808(Lcom/sec/android/app/camera/Camcorder;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRetryAudioFocusCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRetryAudioFocusCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/Camcorder;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method private checkCamcorderStartCondition_RequestedSize()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 830
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 831
    .local v1, requestedSizeLimit:J
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getMediaProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;

    move-result-object v0

    .line 833
    .local v0, profile:Lcom/sec/android/app/camera/MediaRecorderProfile;
    if-eqz v0, :cond_61

    .line 834
    const-string v4, "Camcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCamcorderStartCondition_RequestedSize: cur size-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ref size-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_61

    iget v4, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_61

    .line 837
    const v4, 0x7f0a00eb

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 838
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 839
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 840
    const/4 v3, 0x1

    .line 844
    :cond_61
    return v3
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2065
    const-string v4, "status"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2066
    .local v1, battStatus:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 2067
    const-string v4, "level"

    iget v5, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 2068
    const-string v4, "plugged"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2070
    .local v0, battPlugged:I
    const-string v4, "temperature"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2072
    .local v2, battTemp:I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_2e

    if-ne v0, v6, :cond_d9

    .line 2073
    :cond_2e
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 2077
    :goto_30
    const-string v4, "Camcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBatteryChanged : Level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", battPlugged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", battTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v5, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_99

    .line 2107
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    sget v5, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v4, v5, :cond_dd

    .line 2108
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_91

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 2109
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2111
    :cond_91
    iput-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 2114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery()V

    .line 2136
    :cond_99
    :goto_99
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v5, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_bf

    .line 2137
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_b0

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 2138
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2140
    :cond_b0
    iput-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2142
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v4, :cond_bf

    .line 2143
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 2144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 2149
    :cond_bf
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v5, 0x7f030015

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 2150
    .local v3, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    if-eqz v4, :cond_e8

    .line 2151
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->setBatteryCharging()V

    .line 2152
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setBatteryCharging()V

    .line 2157
    :goto_d8
    return-void

    .line 2075
    .end local v3           #recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    :cond_d9
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    goto/16 :goto_30

    .line 2116
    :cond_dd
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v4, :cond_99

    .line 2117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 2118
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    goto :goto_99

    .line 2154
    .restart local v3       #recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    :cond_e8
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->setBatteryLevel(I)V

    .line 2155
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iget v5, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v5, v5, 0x64

    iget v6, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setBatteryLevel(I)V

    goto :goto_d8
.end method

.method private handleMusicServiceCommand(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 500
    .local v0, myExtras:Landroid/os/Bundle;
    if-nez v0, :cond_e

    .line 501
    const-string v1, "Camcorder"

    const-string v2, "handleMusicServiceCommand - myExtras is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_d
    :goto_d
    return-void

    .line 505
    :cond_e
    const-string v1, "command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    .line 506
    :cond_1e
    const-string v1, "Camcorder"

    const-string v2, "handleMusicServiceCommand - myExtras.getString is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 510
    :cond_26
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMusicServiceCommand - cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "command"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v1, :cond_60

    .line 513
    const-string v1, "Camcorder"

    const-string v2, "handleMusicServiceCommand - mCamcorderEngine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 517
    :cond_60
    const-string v1, "command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    .line 520
    const-string v1, "Camcorder"

    const-string v2, "handleMusicServiceCommand - do stop recording by cmd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto/16 :goto_d
.end method

.method private handlePluggedLowBattery(Z)V
    .registers 7
    .parameter "temp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2897
    const-string v1, "Camcorder"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2942
    :goto_15
    return-void

    .line 2902
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2903
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayedAfterRecordingStop:Z

    goto :goto_15

    .line 2907
    :cond_21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2908
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2909
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2910
    if-eqz p1, :cond_6c

    .line 2911
    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2915
    :goto_3a
    const v1, 0x7f0a0017

    new-instance v2, Lcom/sec/android/app/camera/Camcorder$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camcorder$7;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2921
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2922
    new-instance v1, Lcom/sec/android/app/camera/Camcorder$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$8;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2937
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 2938
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2940
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2941
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_15

    .line 2913
    :cond_6c
    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3a
.end method

.method private initIntentFilter()V
    .registers 8

    .prologue
    .line 622
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 625
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    const-string v5, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string v5, "file"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 632
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 634
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 635
    .local v2, intentFilterMusicCmd:Landroid/content/IntentFilter;
    const-string v5, "com.android.music.musicservicecommand"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 639
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    .local v1, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v3, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 667
    .local v4, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v5, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 678
    new-instance v5, Landroid/content/Intent;

    const-string v6, "intent.stop.app-in-app"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 679
    return-void
.end method

.method private initRemains()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initCamcorderSound()V

    .line 687
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 690
    iput v5, p0, Lcom/sec/android/app/camera/Camcorder;->mRetryAudioFocusCount:I

    .line 691
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_37

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, focusResult:I
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 694
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 696
    if-nez v0, :cond_4d

    .line 697
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    sget v3, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 702
    .end local v0           #focusResult:I
    :cond_37
    :goto_37
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 704
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 706
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 707
    return-void

    .line 698
    .restart local v0       #focusResult:I
    :cond_4d
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 699
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    goto :goto_37
.end method

.method private onChkVideoCaptureIntent()Z
    .registers 3

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private showRecordingModePopup()V
    .registers 5

    .prologue
    const/16 v3, 0x34

    .line 2654
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 2655
    .local v0, popup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;
    if-nez v0, :cond_26

    .line 2656
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .end local v0           #popup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2657
    .restart local v0       #popup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    :cond_26
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->showMenu()V

    .line 2660
    return-void
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .registers 5

    .prologue
    .line 2773
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v1, :cond_28

    .line 2775
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 2779
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 2780
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 2782
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v1, :cond_28

    .line 2783
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-nez v1, :cond_2a

    .line 2785
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Ljava/lang/String;Z)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_65
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_28} :catch_63

    .line 2809
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    .line 2790
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 2791
    .local v0, orientation:I
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 2798
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 2799
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;
    :try_end_62
    .catchall {:try_start_2a .. :try_end_62} :catchall_65
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_62} :catch_63

    goto :goto_28

    .line 2803
    .end local v0           #orientation:I
    :catch_63
    move-exception v1

    goto :goto_28

    .line 2773
    :catchall_65
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private switchToCamera()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1708
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1713
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1715
    const-string v1, "GT-I9103"

    const-string v2, "GT-I9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "SGH-I927"

    const-string v2, "GT-I9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1716
    :cond_23
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCamcorderToCamera:Z

    .line 1718
    :cond_26
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1720
    const-string v1, "Camcorder"

    const-string v2, "Camcorder finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1724
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    .line 1725
    return-void
.end method


# virtual methods
.method public DisplayLowBatteryPopup()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2945
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayedAfterRecordingStop:Z

    if-eqz v0, :cond_a

    .line 2946
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayedAfterRecordingStop:Z

    .line 2947
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    .line 2949
    :cond_a
    return-void
.end method

.method public IsShutterButtonHidden()Z
    .registers 2

    .prologue
    .line 2549
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    return v0
.end method

.method public ShutterButtonIsRestored()V
    .registers 2

    .prologue
    .line 2553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 2554
    return-void
.end method

.method public camcorderBaseIndicatorsRemainTime()I
    .registers 2

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->getRemainTime()I

    move-result v0

    return v0
.end method

.method public cancelShutterTimer()V
    .registers 2

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 2490
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 2491
    return-void
.end method

.method public changeContrastPreview(I)V
    .registers 4
    .parameter "contrast"

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1885
    return-void
.end method

.method public changeEffectPreview(I)V
    .registers 5
    .parameter "effect"

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1841
    if-eqz p1, :cond_11

    .line 1842
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1843
    :cond_11
    return-void
.end method

.method public changeSaturationPreview(I)V
    .registers 4
    .parameter "saturation"

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1889
    return-void
.end method

.method public changeSceneModePreview(I)V
    .registers 2
    .parameter "sceneMode"

    .prologue
    .line 2498
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .registers 4
    .parameter "sharpness"

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1893
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .registers 5
    .parameter "whiteBalance"

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1827
    if-eqz p1, :cond_11

    .line 1828
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1829
    :cond_11
    return-void
.end method

.method public checkBatteryStatus()V
    .registers 3

    .prologue
    .line 2160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2162
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2163
    return-void
.end method

.method public checkStorage(ZZ)V
    .registers 5
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 2538
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 2539
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2540
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 2541
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2542
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2545
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 2546
    return-void
.end method

.method public checkStorageLow()V
    .registers 5

    .prologue
    .line 2524
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getAvailableStorage()J

    move-result-wide v0

    .line 2525
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 2526
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 2534
    :goto_d
    return-void

    .line 2529
    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_18

    .line 2530
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_d

    .line 2532
    :cond_18
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_d
.end method

.method public finishRecordingWithError()V
    .registers 3

    .prologue
    .line 2334
    const-string v0, "Camcorder"

    const-string v1, "finishRecordingWithError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2338
    return-void
.end method

.method public finishTimerCount()V
    .registers 5

    .prologue
    .line 2873
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030013

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerCounting;

    .line 2874
    .local v0, menu:Lcom/sec/android/app/camera/TimerCounting;
    if-nez v0, :cond_10

    .line 2879
    :cond_f
    :goto_f
    return-void

    .line 2877
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerCounting;->isActive()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2878
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_f
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .registers 2

    .prologue
    .line 2854
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .registers 2

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public gettBattLevel()I
    .registers 3

    .prologue
    .line 2026
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected handleBatteryOverheatDuringRecording()V
    .registers 1

    .prologue
    .line 2023
    return-void
.end method

.method protected handleLowBattery()V
    .registers 3

    .prologue
    .line 2166
    const-string v0, "Camcorder"

    const-string v1, "handleLowBattery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28

    .line 2168
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2c

    .line 2169
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 2173
    :goto_22
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 2176
    :cond_28
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery()V

    .line 2177
    return-void

    .line 2171
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_22
.end method

.method public handleRecordingCommand(I)V
    .registers 4
    .parameter "command"

    .prologue
    .line 2219
    packed-switch p1, :pswitch_data_2c

    .line 2235
    const-string v0, "Camcorder"

    const-string v1, "Invalid recording state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :goto_a
    return-void

    .line 2221
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePauseVideoRecording()V

    goto :goto_a

    .line 2224
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResumeVideoRecording()V

    goto :goto_a

    .line 2227
    :pswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRecordingMenu()V

    .line 2228
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_a

    .line 2231
    :pswitch_20
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 2232
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    goto :goto_a

    .line 2219
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_17
        :pswitch_11
        :pswitch_20
    .end packed-switch
.end method

.method public handleRecordingTimerElapsed()V
    .registers 5

    .prologue
    .line 2200
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 2201
    .local v0, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getRecordingTime()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v2

    if-ne v1, v2, :cond_1a

    .line 2207
    :goto_19
    return-void

    .line 2204
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 2205
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 2206
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateRecImage()V

    goto :goto_19
.end method

.method public handleResolutionChanged(IZ)V
    .registers 5
    .parameter "resolution"
    .parameter "restartPreview"

    .prologue
    const/16 v1, 0x68

    .line 1797
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    if-eqz v0, :cond_7

    .line 1815
    :cond_6
    :goto_6
    return-void

    .line 1801
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1802
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1803
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1806
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1808
    if-eqz p2, :cond_28

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1809
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1812
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_6

    .line 1813
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setWideViewBGVisibility()V

    goto :goto_6
.end method

.method public handleShutter()V
    .registers 3

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1320
    :cond_10
    const-string v0, "Camcorder"

    const-string v1, "Preview is not started!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :goto_17
    return-void

    .line 1324
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 1335
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showWaitingAnimation()V

    .line 1338
    :goto_26
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePrepareVideoRecording()V

    .line 1339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    .line 1340
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartVideoRecording()V

    goto :goto_17

    .line 1326
    :pswitch_34
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_26

    .line 1329
    :pswitch_3b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_26

    .line 1332
    :pswitch_42
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_26

    .line 1324
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_3b
        :pswitch_42
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter "event"

    .prologue
    .line 1613
    const-string v7, "Camcorder"

    const-string v8, "handleAutoFocusEvent"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1681
    :cond_10
    :goto_10
    return-void

    .line 1620
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 1621
    .local v3, ptX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 1622
    .local v4, ptY:I
    const/4 v2, 0x0

    .line 1624
    .local v2, previewWidth:I
    const/4 v6, 0x0

    .line 1625
    .local v6, screenWidth:I
    const/4 v5, 0x0

    .line 1626
    .local v5, screenHeight:I
    const/4 v0, 0x0

    .line 1627
    .local v0, allowLeftMargin:I
    const/4 v1, 0x0

    .line 1629
    .local v1, allowTopMargin:I
    const-string v7, "400x240"

    const-string v8, "800x480"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 1630
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 1631
    const/16 v2, 0x190

    .line 1637
    :goto_3a
    const/16 v6, 0x190

    .line 1638
    const/16 v5, 0xf0

    .line 1639
    const/16 v0, 0x1e

    .line 1640
    const/16 v1, 0x1e

    .line 1653
    :goto_42
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->getTouchRectWidth()I

    move-result v0

    .line 1654
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->getTouchRectHeight()I

    move-result v1

    .line 1656
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    if-lt v3, v7, :cond_10

    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    if-gt v3, v7, :cond_10

    .line 1657
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    if-gt v3, v7, :cond_b6

    .line 1658
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v7, v0

    .line 1662
    :cond_69
    :goto_69
    if-gt v4, v1, :cond_c8

    .line 1663
    move v4, v1

    .line 1669
    :cond_6c
    :goto_6c
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 1670
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 1671
    :cond_79
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7, v3, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->setTouchFocusPosition(II)V

    .line 1672
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->startTouchAutoFocus()V

    .line 1673
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->hideFocusIndicator()V

    .line 1675
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->resetTouchFocusRectView()V

    .line 1676
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v7, v3, v4, v6, v5}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setTouchFocusRectCenter(IIII)V

    .line 1678
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->mChkAllowFocusTouch:Z

    goto/16 :goto_10

    .line 1634
    :cond_97
    const/16 v2, 0x140

    goto :goto_3a

    .line 1642
    :cond_9a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 1643
    const/16 v2, 0x320

    .line 1647
    :goto_aa
    const/16 v6, 0x320

    .line 1648
    const/16 v5, 0x1e0

    .line 1649
    const/16 v0, 0x32

    .line 1650
    const/16 v1, 0x32

    goto :goto_42

    .line 1645
    :cond_b3
    const/16 v2, 0x280

    goto :goto_aa

    .line 1659
    :cond_b6
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    sub-int/2addr v7, v0

    if-lt v3, v7, :cond_69

    .line 1660
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    sub-int v3, v7, v0

    goto :goto_69

    .line 1664
    :cond_c8
    sub-int v7, v5, v1

    if-lt v4, v7, :cond_6c

    .line 1665
    sub-int v4, v5, v1

    goto :goto_6c
.end method

.method public hideSideMenu()V
    .registers 2

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenu()V

    .line 2828
    return-void
.end method

.method public hideSideMenuItems()V
    .registers 2

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenuItems()V

    .line 2820
    return-void
.end method

.method public hideZoomMenu()V
    .registers 4

    .prologue
    .line 2812
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 2813
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2814
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2816
    :cond_1b
    return-void
.end method

.method public initCamcorderSound()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1977
    const-string v0, "Camcorder"

    const-string v1, "Initialize Camcorder Sound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 1985
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1987
    return-void
.end method

.method public isActivityDestoying()Z
    .registers 2

    .prologue
    .line 2858
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method public isCharging()Z
    .registers 2

    .prologue
    .line 2061
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    return v0
.end method

.method public isPreviewStarted()Z
    .registers 2

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .registers 3

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_d

    .line 2558
    const-string v0, "Camcorder"

    const-string v1, "isRecording - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    const/4 v0, 0x0

    .line 2561
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecording()Z

    move-result v0

    goto :goto_c
.end method

.method public isRecordingMenuTop()Z
    .registers 3

    .prologue
    .line 2887
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2888
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera.CamcorderRecordingMenu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    .line 2893
    :goto_1e
    return v0

    .line 2890
    :catch_1f
    move-exception v0

    .line 2893
    :cond_20
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isStopPreviewPending()Z
    .registers 2

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isStopPreviewPending()Z

    move-result v0

    return v0
.end method

.method public isTimerCounting()Z
    .registers 2

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isZoomAvailable()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2033
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_20

    .line 2036
    sget-object v1, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    if-nez v1, :cond_1a

    .line 2037
    const v1, 0x7f0a00fe

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 2039
    :cond_1a
    sget-object v1, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2057
    :cond_1f
    :goto_1f
    return v0

    .line 2044
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1f

    .line 2048
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2052
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isPrepareRecording()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2053
    const-string v1, "Camcorder"

    const-string v2, "prepare recording is in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2057
    :cond_43
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public launchGallery(Ljava/lang/String;)V
    .registers 3
    .parameter "keyValue"

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2342
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleLaunchGallery(Ljava/lang/String;)V

    .line 2343
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 2439
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onActivityResult--requestCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onActivityResult--resultCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onActivityResult--data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    packed-switch p1, :pswitch_data_13c

    .line 2480
    :cond_4c
    :goto_4c
    return-void

    .line 2445
    :pswitch_4d
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b3

    if-eqz p3, :cond_b3

    .line 2446
    const/4 v6, 0x0

    .line 2447
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 2448
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2450
    :cond_6c
    if-eqz v6, :cond_84

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2451
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2452
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 2453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_4c

    .line 2454
    :cond_84
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_94

    .line 2455
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2456
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 2457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_4c

    .line 2458
    :cond_94
    const-string v0, "specify-data"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 2459
    const-string v0, "Camcorder"

    const-string v1, "setResult OK !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/Camcorder;->setResult(I)V

    .line 2461
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_4c

    .line 2463
    :cond_ab
    const-string v0, "Camcorder"

    const-string v1, "Something goes wrong!! Restart attach mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 2465
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_b3
    if-nez p2, :cond_4c

    .line 2466
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 2468
    :try_start_c5
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting cancelled attach image file name: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2471
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting cancelled attach image uri name: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_136
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c5 .. :try_end_136} :catch_138

    goto/16 :goto_4c

    .line 2473
    :catch_138
    move-exception v0

    goto/16 :goto_4c

    .line 2443
    nop

    :pswitch_data_13c
    .packed-switch 0x7d2
        :pswitch_4d
    .end packed-switch
.end method

.method public onAudioRecordingSelect(I)V
    .registers 3
    .parameter "audioRecording"

    .prologue
    .line 1868
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1869
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .registers 3
    .parameter "autocontrast"

    .prologue
    .line 1776
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutocontrast(I)V

    .line 1777
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .registers 3
    .parameter "quality"

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 1847
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    .line 1848
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "newConfig"

    .prologue
    const v5, 0x7f030002

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 528
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 529
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v2, :cond_e

    .line 561
    :cond_d
    :goto_d
    return-void

    .line 532
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_76

    .line 533
    const-string v2, "Camcorder"

    const-string v3, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/BlackScreen;

    .line 536
    .local v1, menu:Lcom/sec/android/app/camera/BlackScreen;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/sec/android/app/camera/BlackScreen;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 538
    :cond_2e
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    .line 539
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    sget v4, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 541
    iput v6, p0, Lcom/sec/android/app/camera/Camcorder;->mRetryAudioFocusCount:I

    .line 542
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_d

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, focusResult:I
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 545
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 547
    if-nez v0, :cond_64

    .line 548
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    sget v4, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_d

    .line 549
    :cond_64
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    goto :goto_d

    .line 553
    .end local v0           #focusResult:I
    .end local v1           #menu:Lcom/sec/android/app/camera/BlackScreen;
    :cond_76
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_d

    .line 554
    const-string v2, "Camcorder"

    const-string v3, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/BlackScreen;

    .line 557
    .restart local v1       #menu:Lcom/sec/android/app/camera/BlackScreen;
    if-eqz v1, :cond_90

    .line 558
    invoke-virtual {v1}, Lcom/sec/android/app/camera/BlackScreen;->showMenu()V

    .line 559
    :cond_90
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    goto/16 :goto_d
.end method

.method public onContrastMenuSelect(I)V
    .registers 3
    .parameter "contrast"

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 1873
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 564
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 565
    const-string v3, "Camcorder"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 568
    .local v2, win:Landroid/view/Window;
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 570
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 573
    const v3, 0x7f030010

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->setContentView(I)V

    .line 574
    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 576
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mWindowManager:Landroid/view/IWindowManager;

    .line 580
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 581
    new-instance v3, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/CamcorderEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 582
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 584
    new-instance v3, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 586
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v4, 0x7f030003

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 589
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 590
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 592
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    .line 595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamcorder()V

    .line 597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v1

    .line 598
    .local v1, recordingMode:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 600
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initializeGLSurfaceView()V

    .line 602
    new-instance v3, Landroid/media/AudioManager;

    invoke-direct {v3, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 604
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v3, :cond_b6

    .line 605
    new-instance v3, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 607
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 610
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 611
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 612
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v3, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b6
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 617
    const v3, 0x7f0a00fe

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 618
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1124
    const-string v0, "Camcorder"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    sget-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_f

    .line 1126
    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 1129
    :cond_f
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1135
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setMainCameraSelected(Z)V

    .line 1137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1139
    const-string v0, "SGH-I717"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_3b

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableStatusBar()V

    .line 1145
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_44

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1149
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_4f

    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 1151
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 1154
    :cond_4f
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 1155
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_5e

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->clear()V

    .line 1158
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 1166
    :cond_5e
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    if-eqz v0, :cond_69

    .line 1167
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->clear()V

    .line 1168
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 1170
    :cond_69
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 1173
    :cond_7a
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_89

    .line 1174
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_89

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1183
    :cond_89
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 1184
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1185
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1186
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 1187
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mWindowManager:Landroid/view/IWindowManager;

    .line 1188
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 1189
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_a2

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->clear()V

    .line 1193
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 1196
    :cond_a2
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1197
    return-void
.end method

.method public onEditModeSelectCommand()V
    .registers 4

    .prologue
    .line 1780
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1d

    .line 1786
    :cond_d
    const/16 v0, 0xbd0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1787
    return-void

    .line 1784
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public onEffectMenuSelect(I)V
    .registers 4
    .parameter "effect"

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    .line 1833
    if-eqz p1, :cond_11

    .line 1834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1836
    :cond_11
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .registers 3
    .parameter "exposureValue"

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 1685
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .registers 3
    .parameter "flashMode"

    .prologue
    .line 1763
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1764
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .registers 3
    .parameter "flip"

    .prologue
    .line 1790
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    .line 1791
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    .line 1793
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartPreviewAsync()V

    .line 1794
    return-void
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .registers 4
    .parameter "rootView"

    .prologue
    .line 2603
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 2605
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 2606
    const-string v0, "Camcorder"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :goto_e
    return-void

    .line 2610
    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$5;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2650
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_e
.end method

.method public onGuidelineSelect(I)V
    .registers 3
    .parameter "guideline"

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1852
    return-void
.end method

.method public onInflatedMenuHidden()V
    .registers 1

    .prologue
    .line 2494
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x12

    const/4 v3, 0x1

    .line 1201
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v2, :cond_9

    move v2, v3

    .line 1315
    :goto_8
    return v2

    .line 1206
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_14
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_14} :catch_19

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v3

    .line 1207
    goto :goto_8

    .line 1209
    :catch_19
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v2, v3

    .line 1211
    goto :goto_8

    .line 1214
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v3

    .line 1215
    goto :goto_8

    .line 1224
    :cond_24
    sparse-switch p1, :sswitch_data_9c

    .line 1315
    :cond_27
    :sswitch_27
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_8

    :sswitch_2c
    move v2, v3

    .line 1226
    goto :goto_8

    .line 1228
    :sswitch_2e
    const/4 v2, 0x0

    goto :goto_8

    :sswitch_30
    move v2, v3

    .line 1238
    goto :goto_8

    .line 1282
    :sswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1283
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1284
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v2

    if-nez v2, :cond_60

    .line 1285
    :cond_4e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1286
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x4

    invoke-static {v6, p0, v2, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1294
    :cond_60
    :goto_60
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v2, :cond_6b

    .line 1296
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_6b
    move v2, v3

    .line 1300
    goto :goto_8

    .line 1289
    .restart local v1       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_6d
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x2

    invoke-static {v6, p0, v2, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_60

    .line 1302
    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :sswitch_7a
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_27

    .line 1304
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 1305
    sget v2, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 1306
    :cond_8c
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 1307
    sget v2, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    :cond_98
    move v2, v3

    .line 1308
    goto/16 :goto_8

    .line 1224
    nop

    :sswitch_data_9c
    .sparse-switch
        0x4 -> :sswitch_30
        0x17 -> :sswitch_27
        0x18 -> :sswitch_32
        0x19 -> :sswitch_32
        0x1a -> :sswitch_30
        0x1b -> :sswitch_27
        0x4f -> :sswitch_2c
        0x50 -> :sswitch_7a
        0x52 -> :sswitch_2e
        0x55 -> :sswitch_30
        0x57 -> :sswitch_30
        0x58 -> :sswitch_30
        0x59 -> :sswitch_30
        0x5a -> :sswitch_30
        0x7e -> :sswitch_30
        0x7f -> :sswitch_30
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1352
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v1, :cond_7

    move v1, v2

    .line 1454
    :goto_6
    return v1

    .line 1357
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1359
    const-string v1, "Camcorder"

    const-string v3, "Delivering to other view"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_1c} :catch_1e

    move v1, v2

    .line 1360
    goto :goto_6

    .line 1362
    :catch_1e
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v1, v2

    .line 1364
    goto :goto_6

    .line 1367
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1368
    const/4 v1, 0x4

    if-ne p1, v1, :cond_34

    .line 1370
    const-string v1, "Camcorder"

    const-string v3, "Dissmiss Reset Dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->dismissResetDialog()V

    :cond_34
    move v1, v2

    .line 1373
    goto :goto_6

    .line 1376
    :cond_36
    sparse-switch p1, :sswitch_data_fc

    .line 1454
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_6

    .line 1378
    :sswitch_3e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_55

    .line 1379
    const/16 v1, 0x27

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, p0, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    :cond_55
    move v1, v2

    .line 1380
    goto :goto_6

    .line 1392
    :sswitch_57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_5f

    move v1, v2

    .line 1393
    goto :goto_6

    .line 1395
    :cond_5f
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_69

    .line 1396
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->showDlg(I)V

    move v1, v2

    .line 1397
    goto :goto_6

    .line 1405
    :cond_69
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isPrepareRecording()Z

    move-result v1

    if-nez v1, :cond_7e

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_87

    .line 1408
    :cond_7e
    const-string v1, "Camcorder"

    const-string v3, "isPrepareRecording, ignore"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1409
    goto :goto_6

    .line 1412
    :cond_87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleShutter()V

    move v1, v2

    .line 1413
    goto/16 :goto_6

    .line 1417
    :sswitch_8d
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingEngine()Z

    move-result v1

    if-nez v1, :cond_9d

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingPreview()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 1421
    :cond_9d
    const-string v1, "Camcorder"

    const-string v3, "Ignoring because preview is being started!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1422
    goto/16 :goto_6

    .line 1425
    :cond_a7
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1426
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 1427
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1429
    :cond_b9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    move v1, v2

    .line 1430
    goto/16 :goto_6

    :sswitch_bf
    move v1, v2

    .line 1433
    goto/16 :goto_6

    .line 1437
    :sswitch_c2
    if-eqz p2, :cond_cd

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_cd

    move v1, v2

    .line 1438
    goto/16 :goto_6

    .line 1440
    :cond_cd
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v3, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    if-eq v1, v3, :cond_d9

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v3, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    if-ne v1, v3, :cond_f6

    :cond_d9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_f6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v1

    if-nez v1, :cond_f6

    .line 1441
    :goto_e5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 1442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_e5

    .line 1444
    :cond_ef
    sget v1, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    move v1, v2

    .line 1445
    goto/16 :goto_6

    :cond_f6
    move v1, v2

    .line 1447
    goto/16 :goto_6

    :sswitch_f9
    move v1, v2

    .line 1449
    goto/16 :goto_6

    .line 1376
    :sswitch_data_fc
    .sparse-switch
        0x4 -> :sswitch_8d
        0x17 -> :sswitch_57
        0x18 -> :sswitch_bf
        0x19 -> :sswitch_bf
        0x1b -> :sswitch_57
        0x42 -> :sswitch_57
        0x4f -> :sswitch_f9
        0x50 -> :sswitch_c2
        0x52 -> :sswitch_3e
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;)V
    .registers 12
    .parameter "keyValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2346
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterMediaBrowerFromCamcorder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camcorder getLastContentUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    if-nez p1, :cond_3b

    .line 2422
    :cond_3a
    :goto_3a
    return-void

    .line 2352
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIsLaunchGallery()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2353
    const-string v5, "Camcorder"

    const-string v6, "returning because it is launch gallery"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 2356
    :cond_49
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 2357
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 2359
    const-string v5, "quickview"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    const-string v5, "reviewon"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 2375
    :cond_6c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2377
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.arcsoft.quickview"

    const-string v6, "com.arcsoft.quickview.QuickViewActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2379
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2380
    const-string v5, "android.intent.extra.fullScreen"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2381
    const-string v5, "android.intent.extra.showActionIcons"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2382
    const-string v5, "com.sec.android.app.camera.ReviewMode"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2385
    :try_start_90
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_93
    .catch Landroid/content/ActivityNotFoundException; {:try_start_90 .. :try_end_93} :catch_97

    .line 2395
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto :goto_3a

    .line 2386
    :catch_97
    move-exception v1

    .line 2387
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "Camcorder"

    const-string v6, "Activity not found or not launched properly."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 2389
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 2390
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    goto :goto_3a

    .line 2396
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_ab
    const-string v5, "from_app"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2397
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    if-nez v5, :cond_ca

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->getBatteryLevel()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_ca

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->getBatteryLevel()I

    move-result v5

    sget v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-lt v5, v6, :cond_3a

    .line 2400
    :cond_ca
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2401
    .local v3, newExtras:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2403
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2404
    const-string v5, "noFaceDetection"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2405
    const-string v5, "video-thumbnail"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2406
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_11f

    .line 2407
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "output"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 2408
    .local v4, saveUri:Landroid/net/Uri;
    const-string v5, "output"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2412
    .end local v4           #saveUri:Landroid/net/Uri;
    :goto_102
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2413
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2415
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 2417
    const/16 v5, 0x7d2

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/camera/Camcorder;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2420
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto/16 :goto_3a

    .line 2410
    :cond_11f
    const-string v5, "attach-video"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_102
.end method

.method public onModechanged()V
    .registers 3

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    .line 1693
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1705
    :goto_12
    return-void

    .line 1701
    :cond_13
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/Camcorder;->mSelectedMode:I

    .line 1702
    const-string v0, "GT-I9100"

    const-string v1, "SGH-I577"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1703
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/Camcorder;->mSelectedMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 1704
    :cond_2f
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->switchToCamera()V

    goto :goto_12
.end method

.method public onOutdoorVisibilitySelect(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 1864
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 1865
    return-void
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 715
    const-string v0, "Camcorder"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->PauseGLSurface()V

    .line 720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->notifyOnPause()V

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_34

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 744
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_47

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 747
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->stopKickThumbSuspend()V

    .line 751
    sget v0, Lcom/sec/android/app/camera/Camcorder;->mSelectedMode:I

    if-ne v0, v2, :cond_100

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->RETRY_AUDIO_FOCUS_GAIN:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 755
    :cond_61
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_70

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_70

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 768
    :cond_70
    :goto_70
    :try_start_70
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_79

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_79} :catch_119

    .line 775
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_df

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartRecordingThreadComplete()V

    .line 779
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_ae

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v2, :cond_111

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 789
    :goto_a9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 792
    :cond_ae
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c5

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 797
    :cond_c5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableStatusBar()V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->onPause()V

    .line 805
    :cond_df
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    if-eqz v0, :cond_e8

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->onPause()V

    .line 808
    :cond_e8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_f1

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->onPause()V

    .line 811
    :cond_f1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 812
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideAllDlg()V

    .line 814
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 826
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 827
    return-void

    .line 761
    :cond_100
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_70

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_70

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto/16 :goto_70

    .line 786
    :cond_111
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_a9

    .line 771
    :catch_119
    move-exception v0

    goto/16 :goto_79
.end method

.method public onRecordingModeMenuSelect(I)V
    .registers 3
    .parameter "recordingMode"

    .prologue
    .line 1728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camcorder;->onRecordingModeMenuSelect(IZ)V

    .line 1729
    return-void
.end method

.method public onRecordingModeMenuSelect(IZ)V
    .registers 7
    .parameter "recordingMode"
    .parameter "fromResetSettings"

    .prologue
    const/4 v3, 0x3

    .line 1732
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    .line 1735
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 1737
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1739
    if-ne p1, v3, :cond_5e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSwitchCamera(Z)V

    .line 1745
    :cond_3a
    :goto_3a
    if-nez p2, :cond_45

    .line 1746
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1748
    :cond_45
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1749
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1750
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1753
    :cond_53
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    .line 1755
    const-string v0, "Camcorder"

    const-string v1, "onRecordingModeChanged out"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    return-void

    .line 1741
    :cond_5e
    if-eq p1, v3, :cond_3a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1742
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSwitchCamera(Z)V

    goto :goto_3a
.end method

.method public onResolutionMenuSelect(I)V
    .registers 3
    .parameter "resolution"

    .prologue
    .line 1771
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 1772
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    .line 1773
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 2433
    if-eqz p1, :cond_c

    .line 2434
    const-string v0, "last_video_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 2436
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 14

    .prologue
    .line 848
    const-string v10, "Camcorder"

    const-string v11, "onResume"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    if-eqz v10, :cond_10

    .line 850
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->updateGuidelines()V

    .line 852
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 853
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 854
    const-string v10, "Camcorder"

    const-string v11, "onResume CAMERA disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const v10, 0x7f0a00f2

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 857
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 859
    :cond_3c
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v10

    if-nez v10, :cond_5c

    .line 860
    const-string v10, "Camcorder"

    const-string v11, "onResume MICROPHONE disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const v10, 0x10401cf

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 863
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 866
    :cond_5c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 868
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 869
    const-string v10, "Camcorder"

    const-string v11, "onResume CAMERA disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const v10, 0x7f0a00f2

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 872
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 889
    :cond_84
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilter()V

    .line 891
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->onResume()V

    .line 892
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->disableStatusBar()V

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v10

    if-eqz v10, :cond_af

    .line 895
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 896
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 904
    :cond_af
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "torch_light"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_de

    const/4 v2, 0x1

    .line 905
    .local v2, externalTorchEnabled:Z
    :goto_be
    if-eqz v2, :cond_e0

    .line 906
    const-string v10, "Camcorder"

    const-string v11, "externalTorchEnabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 930
    :goto_ce
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Call()Z

    move-result v10

    if-nez v10, :cond_da

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_VoIPCall()Z

    move-result v10

    if-eqz v10, :cond_11d

    .line 931
    :cond_da
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1121
    :goto_dd
    return-void

    .line 904
    .end local v2           #externalTorchEnabled:Z
    :cond_de
    const/4 v2, 0x0

    goto :goto_be

    .line 909
    .restart local v2       #externalTorchEnabled:Z
    :cond_e0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/MenuDimController;->getIsFlashDimmed()Z

    move-result v1

    .line 910
    .local v1, externalFlashDimmed:Z
    if-eqz v1, :cond_112

    .line 911
    const-string v10, "Camcorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "externalFlashDimmed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 913
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->cancelFlashDimmed(I)V

    .line 916
    :cond_112
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.sec.samsung.torchwidget.widget_off"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    .local v8, widgetSettingsOff:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_ce

    .line 936
    .end local v1           #externalFlashDimmed:Z
    .end local v8           #widgetSettingsOff:Landroid/content/Intent;
    :cond_11d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14a

    .line 937
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-nez v10, :cond_136

    .line 938
    const-string v10, ""

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    sput-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    .line 940
    :cond_136
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    const v11, 0x7f0a00ea

    invoke-virtual {v10, v11}, Landroid/widget/Toast;->setText(I)V

    .line 941
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 942
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 943
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto :goto_dd

    .line 946
    :cond_14a
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-eqz v10, :cond_153

    .line 947
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->cancel()V

    .line 949
    :cond_153
    const/4 v10, 0x0

    sput-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 953
    .local v9, win:Landroid/view/Window;
    const/16 v10, 0x80

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 955
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 956
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 958
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v10

    if-eqz v10, :cond_173

    .line 959
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 961
    :cond_173
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v10

    if-eqz v10, :cond_18e

    .line 962
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/16 v11, 0x65

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 965
    :cond_18e
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 966
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 968
    .local v4, myExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->setIsVideoCaptureIntent(Z)Z

    move-result v10

    if-eqz v10, :cond_3a2

    .line 969
    const-string v10, "from_app"

    iput-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 970
    if-eqz v4, :cond_38f

    .line 971
    const-string v10, "mms"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1d0

    .line 981
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 982
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 983
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_1fb

    .line 984
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_dd

    .line 987
    :cond_1d0
    const-string v10, "videocall_preset"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2a6

    .line 988
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 990
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x12

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 991
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 992
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1051
    :cond_1fb
    :goto_1fb
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 1052
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1053
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 1055
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v10, :cond_21d

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v10, :cond_21d

    .line 1056
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1058
    :cond_21d
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 1059
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 1061
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_242

    .line 1068
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1069
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->resumeOrientationListener()V

    .line 1072
    :cond_242
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleWait(I)V

    .line 1073
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1075
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3b8

    .line 1076
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    if-nez v10, :cond_262

    .line 1077
    const-string v10, ""

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    sput-object v10, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    .line 1079
    :cond_262
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    const v11, 0x7f0a00e8

    invoke-virtual {v10, v11}, Landroid/widget/Toast;->setText(I)V

    .line 1080
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1081
    const-string v10, "Camcorder"

    const-string v11, "Camcorder is finished due to media scanning"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 1090
    :goto_27b
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v10, :cond_289

    .line 1091
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refresh()V

    .line 1092
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 1095
    :cond_289
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    if-eqz v10, :cond_292

    .line 1096
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->onResume()V

    .line 1099
    :cond_292
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initRemains()V

    .line 1101
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->suspendThumbWork()V

    .line 1110
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v10, :cond_2a1

    .line 1111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showSideMenu()V

    .line 1120
    :cond_2a1
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_dd

    .line 993
    :cond_2a6
    const-string v10, "video_editor"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2eb

    .line 994
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2cd

    .line 1000
    :goto_2ba
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1001
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto/16 :goto_1fb

    .line 996
    :cond_2cd
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v10

    if-eqz v10, :cond_2e1

    .line 997
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto :goto_2ba

    .line 999
    :cond_2e1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto :goto_2ba

    .line 1002
    :cond_2eb
    const-string v10, "rcs_ft"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_316

    .line 1003
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1004
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1005
    const-string v10, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1007
    .local v5, sizelimit:J
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_1fb

    .line 1008
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_dd

    .line 1012
    .end local v5           #sizelimit:J
    :cond_316
    const-string v10, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1013
    .restart local v5       #sizelimit:J
    const-string v10, "video-size"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_375

    .line 1014
    const-string v10, "video-size"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    .line 1015
    .local v7, value:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v10

    if-eqz v10, :cond_349

    .line 1016
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedCamcorderResolutionFeature(I)Z

    move-result v10

    if-eqz v10, :cond_365

    .line 1017
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 1032
    .end local v7           #value:I
    :cond_349
    :goto_349
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1033
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1035
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_1fb

    .line 1036
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_dd

    .line 1020
    .restart local v7       #value:I
    :cond_365
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-lez v10, :cond_349

    .line 1021
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x12

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto :goto_349

    .line 1026
    .end local v7           #value:I
    :cond_375
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-lez v10, :cond_349

    .line 1027
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v10

    if-eqz v10, :cond_349

    .line 1028
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x12

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto :goto_349

    .line 1041
    .end local v5           #sizelimit:J
    :cond_38f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1042
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto/16 :goto_1fb

    .line 1045
    :cond_3a2
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1046
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto/16 :goto_1fb

    .line 1084
    :cond_3b8
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    if-eqz v10, :cond_3c1

    .line 1085
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->cancel()V

    .line 1087
    :cond_3c1
    const/4 v10, 0x0

    sput-object v10, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    goto/16 :goto_27b
.end method

.method public onReviewMenuSelect(I)V
    .registers 3
    .parameter "cameraReview"

    .prologue
    .line 1855
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    .line 1857
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .registers 3
    .parameter "saturation"

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 1877
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 2425
    if-eqz p1, :cond_19

    .line 2426
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2427
    const-string v0, "last_video_uri"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2430
    :cond_19
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 9
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 1528
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1545
    :goto_9
    return v6

    .line 1531
    :cond_a
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide v4, 0x4051800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 1533
    .local v0, newZoomValue:I
    if-gez v0, :cond_21

    .line 1534
    const/4 v0, 0x0

    .line 1536
    :cond_21
    const/16 v1, 0x1e

    if-le v0, v1, :cond_27

    .line 1537
    const/16 v0, 0x1e

    .line 1539
    :cond_27
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 1541
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1542
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 1543
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1544
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 8
    .parameter "arg0"

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 1549
    const-string v3, "Camcorder"

    const-string v4, "onScaleBegin"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1574
    :goto_f
    return v2

    .line 1555
    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1556
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    .line 1558
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v3, :cond_3e

    .line 1559
    new-instance v3, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1562
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1565
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1566
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1567
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v3, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_3e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1571
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1572
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1573
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1574
    const/4 v2, 0x1

    goto :goto_f
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 1578
    const-string v0, "Camcorder"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1580
    return-void
.end method

.method public onSharpnessMenuSelect(I)V
    .registers 3
    .parameter "sharpness"

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 1881
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .registers 1

    .prologue
    .line 1974
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .registers 3
    .parameter "storage"

    .prologue
    .line 1860
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1861
    return-void
.end method

.method public onTimerEvent(I)V
    .registers 6
    .parameter "value"

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030013

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerCounting;

    .line 2181
    .local v0, menu:Lcom/sec/android/app/camera/TimerCounting;
    if-eqz v0, :cond_1e

    .line 2182
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerCounting;->setOrientaion(I)V

    .line 2183
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerCounting;->showMenu()V

    .line 2184
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/TimerCounting;->updateCountingNum(I)V

    .line 2186
    :cond_1e
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .registers 3
    .parameter "timer"

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 1768
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1458
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 1460
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    .line 1524
    :goto_d
    return v1

    .line 1465
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_19
    .catch Ljava/util/NoSuchElementException; {:try_start_e .. :try_end_19} :catch_1e

    move-result v1

    if-eqz v1, :cond_21

    move v1, v2

    .line 1466
    goto :goto_d

    .line 1468
    :catch_1e
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v1, v2

    .line 1470
    goto :goto_d

    .line 1474
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1475
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_30

    move v1, v2

    .line 1476
    goto :goto_d

    .line 1480
    :cond_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isPreviewTouchEnabled()Z

    move-result v1

    if-nez v1, :cond_38

    move v1, v2

    .line 1481
    goto :goto_d

    .line 1484
    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1524
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_d
.end method

.method public onVideoRecordingStart()V
    .registers 5

    .prologue
    .line 2189
    const-string v1, "Camcorder"

    const-string v2, "onVideoRecordingStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 2192
    .local v0, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 2193
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->showMenu()V

    .line 2194
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startTimer()V

    .line 2196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 2197
    return-void
.end method

.method public onVideoStoringCompleted(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 2292
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_14

    .line 2298
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 2299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 2302
    :cond_14
    new-instance v0, Lcom/sec/android/app/camera/RecordingData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/RecordingData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 2303
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e0

    const/16 v3, 0x168

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/RecordingData;->setRecordingData(Landroid/graphics/Bitmap;)V

    .line 2305
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v0

    if-nez v0, :cond_49

    .line 2306
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V

    .line 2309
    :cond_49
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 2311
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2313
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 2314
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_63

    .line 2315
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 2316
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_62

    .line 2317
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 2331
    :cond_62
    :goto_62
    return-void

    .line 2320
    :cond_63
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->launchGallery(Ljava/lang/String;)V

    goto :goto_62

    .line 2323
    :cond_69
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_7e

    .line 2324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    .line 2325
    const-string v0, "reviewon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    goto :goto_62

    .line 2328
    :cond_7e
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto :goto_62
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .registers 4
    .parameter "whiteBalance"

    .prologue
    .line 1818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1819
    if-eqz p1, :cond_11

    .line 1820
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    .line 1822
    :cond_11
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .registers 3
    .parameter "zoomValue"

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 1689
    return-void
.end method

.method public playCameraSound(II)V
    .registers 11
    .parameter "Sound"
    .parameter "loop"

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_c

    .line 1991
    const-string v0, "Camcorder"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :goto_b
    return-void

    .line 1995
    :cond_c
    const/16 v7, 0xf

    .line 1996
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 1998
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_16

    .line 2004
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_b
.end method

.method public reAlignForPreview()V
    .registers 4

    .prologue
    .line 1962
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1964
    .local v0, previewLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1b

    .line 1965
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1969
    :goto_1a
    return-void

    .line 1967
    :cond_1b
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1a
.end method

.method public requestSystemKeyEvent(IZ)Z
    .registers 4
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 2846
    const/4 v0, 0x0

    return v0
.end method

.method public resetMaxVideoDuration(I)V
    .registers 3
    .parameter "recordingMode"

    .prologue
    .line 1759
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 1760
    return-void
.end method

.method public resetScaleDetector()V
    .registers 3

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_a

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1591
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1592
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1593
    return-void
.end method

.method public resetToDefaultSettings()V
    .registers 7

    .prologue
    const/16 v5, 0xbd0

    const/4 v4, 0x0

    .line 2241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetCamcorderSettingsToDefault()V

    .line 2243
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v2, :cond_13

    .line 2244
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setWideViewBGVisibility()V

    .line 2247
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->resetDim()V

    .line 2249
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 2252
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/16 v3, 0x75

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2256
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v2, :cond_8f

    .line 2257
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 2258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2266
    :goto_3e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2267
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    .line 2269
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 2270
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_97

    .line 2271
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 2275
    :goto_5d
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 2276
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v1, :cond_75

    .line 2277
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 2278
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 2280
    :cond_75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 2282
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v2, :cond_85

    .line 2283
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 2285
    :cond_85
    return-void

    .line 2260
    .end local v0           #editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    .end local v1           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    :cond_86
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    goto :goto_3e

    .line 2264
    :cond_8f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    goto :goto_3e

    .line 2273
    .restart local v0       #editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_97
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_5d
.end method

.method public resizeForPreviewAspectRatio()Z
    .registers 6

    .prologue
    .line 1899
    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1905
    .local v1, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    packed-switch v3, :pswitch_data_5e

    .line 1950
    :pswitch_14
    const/16 v2, 0x280

    .line 1951
    .local v2, previewWidth:I
    const/16 v0, 0x1e0

    .line 1958
    .local v0, previewHeight:I
    :goto_18
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setSize(II)Z

    move-result v3

    return v3

    .line 1907
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_1d
    const/16 v2, 0x320

    .line 1908
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1c2

    .line 1909
    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1911
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_22
    const/16 v2, 0x320

    .line 1912
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1c2

    .line 1913
    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1915
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_27
    const/16 v2, 0x320

    .line 1916
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1917
    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1919
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_2c
    const/16 v2, 0x2d0

    .line 1920
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1921
    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1923
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_31
    const/16 v2, 0x280

    .line 1924
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1925
    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1927
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_36
    const-string v3, "400x240"

    const-string v4, "800x480"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1928
    const/16 v2, 0x140

    .line 1929
    .restart local v2       #previewWidth:I
    const/16 v0, 0xf0

    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1931
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :cond_45
    const/16 v2, 0x280

    .line 1932
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1934
    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1936
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_4a
    const-string v3, "400x240"

    const-string v4, "800x480"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1937
    const/16 v2, 0x125

    .line 1938
    .restart local v2       #previewWidth:I
    const/16 v0, 0xf0

    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1941
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :cond_59
    const/16 v2, 0x210

    .line 1942
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1b0

    .line 1948
    .restart local v0       #previewHeight:I
    goto :goto_18

    .line 1905
    :pswitch_data_5e
    .packed-switch 0xb
        :pswitch_31
        :pswitch_27
        :pswitch_1d
        :pswitch_22
        :pswitch_2c
        :pswitch_14
        :pswitch_36
        :pswitch_4a
    .end packed-switch
.end method

.method public restartInactivityTimer()V
    .registers 5

    .prologue
    .line 2862
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 2864
    .local v0, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getRecordingState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    .line 2870
    :goto_1a
    return-void

    .line 2868
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->stopInactivityTimer()V

    .line 2869
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startInactivityTimer()V

    goto :goto_1a
.end method

.method public setIsLaunchGallery(Z)V
    .registers 2
    .parameter "chkLaunchGallery"

    .prologue
    .line 2850
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 2851
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .registers 2
    .parameter "active"

    .prologue
    .line 1597
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 1601
    return-void
.end method

.method public showShutterButton()V
    .registers 2

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showShutterButton()V

    .line 2836
    return-void
.end method

.method public showSideMenu()V
    .registers 2

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenu()V

    .line 2832
    return-void
.end method

.method public showSideMenuItems()V
    .registers 2

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenuItems()V

    .line 2824
    return-void
.end method

.method public showWaitingAnimation()V
    .registers 1

    .prologue
    .line 1347
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 1348
    return-void
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "bitmap"

    .prologue
    .line 2685
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_14

    .line 2687
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 2692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 2695
    :cond_14
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2698
    .local v8, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLandroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 2706
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$6;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 2753
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 2758
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_51} :catch_56

    .line 2765
    .end local v8           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :goto_51
    monitor-exit p0

    return-void

    .line 2685
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2762
    :catch_56
    move-exception v0

    goto :goto_51
.end method

.method public updateRecordingMenu()V
    .registers 5

    .prologue
    .line 2210
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 2211
    .local v0, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    if-eqz v0, :cond_24

    .line 2212
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 2213
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 2214
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateRecImage()V

    .line 2216
    :cond_24
    return-void
.end method

.method public updateRemainStorageIndicator()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 2501
    const/4 v0, 0x0

    .line 2502
    .local v0, nRemainTime:I
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eq v1, v2, :cond_18

    .line 2503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkStorageLow()V

    .line 2504
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-nez v1, :cond_18

    .line 2505
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getRemainTime()I

    move-result v0

    .line 2506
    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 2507
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 2513
    :cond_18
    :goto_18
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_1d

    .line 2514
    const/4 v0, 0x0

    .line 2516
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setRemainTime(I)V

    .line 2517
    return-void

    .line 2508
    :cond_23
    if-gtz v0, :cond_18

    .line 2509
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_18
.end method
