.class public Lcom/sec/android/app/camera/CamcorderEngine;
.super Lcom/sec/android/app/camera/CameraEngine;
.source "CamcorderEngine.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
    }
.end annotation


# static fields
.field private static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field public static final MULTIPLE_176X144:I = 0x3

.field public static final MULTIPLE_320X240:I = 0x2

.field public static final PREVIEW_HEIGHT_1280X720:I = 0x1c2

.field public static final PREVIEW_HEIGHT_176X144:I = 0x90

.field public static final PREVIEW_HEIGHT_1920X1080:I = 0x1c2

.field public static final PREVIEW_HEIGHT_320X240:I = 0xf0

.field public static final PREVIEW_HEIGHT_640X480:I = 0x1e0

.field public static final PREVIEW_HEIGHT_720X480:I = 0x1e0

.field public static final PREVIEW_HEIGHT_800X480:I = 0x1e0

.field public static final PREVIEW_WIDTH_1280X720:I = 0x320

.field public static final PREVIEW_WIDTH_176X144:I = 0xb0

.field public static final PREVIEW_WIDTH_1920X1080:I = 0x320

.field public static final PREVIEW_WIDTH_320X240:I = 0x140

.field public static final PREVIEW_WIDTH_640X480:I = 0x280

.field public static final PREVIEW_WIDTH_720X480:I = 0x2d0

.field public static final PREVIEW_WIDTH_800X480:I = 0x320

.field private static final TAG:Ljava/lang/String; = "CamcorderEngine"

.field private static m_bIsFocusSetAuto:Z

.field private static m_bIsTouchFocusPositioned:Z


# instance fields
.field private mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoTitle:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

.field private mIsVideoCaptureIntent:Z

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mMediaRecorderRecording:Z

.field mPausing:Z

.field private mPrepareRecordingThread:Ljava/lang/Thread;

.field mPreviewing:Z

.field private mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

.field private mRecordingInitiated:Z

.field private mStartRecordingThread:Ljava/lang/Thread;

.field private mVideoFileLengthInByte:J

.field private mVideoRecordingTimeInMiliSecond:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 104
    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    .line 105
    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsFocusSetAuto:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 10
    .parameter "activityContext"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 95
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPausing:Z

    .line 120
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPreviewing:Z

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 131
    iput-wide v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 132
    iput-wide v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 134
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 135
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateRecording;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateRecording;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateWaitForSurface;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v5}, Lcom/sec/android/app/camera/CeStateWaitForSurface;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/CamcorderEngine;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/CamcorderEngine;Lcom/sec/android/seccamera/SecCamera$Parameters;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    return-void
.end method

.method private cleanupEmptyFile()V
    .registers 6

    .prologue
    .line 1541
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 1542
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1543
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1544
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1548
    .end local v0           #f:Ljava/io/File;
    :cond_38
    return-void
.end method

.method private cleanupTempFile()V
    .registers 5

    .prologue
    .line 1551
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1553
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_2b
    return-void
.end method

.method private createVideoPath()V
    .registers 25

    .prologue
    .line 1471
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 1472
    .local v17, time:Landroid/text/format/Time;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 1473
    .local v18, timezone:Ljava/util/TimeZone;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1475
    .local v3, calendar:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1476
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    .line 1478
    .local v7, dateTaken:J
    const-string v21, "CamcorderEngine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "createVideoPath "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v21

    if-nez v21, :cond_168

    .line 1484
    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 1491
    .local v5, cameraDirPath:Ljava/lang/String;
    :goto_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16c

    .line 1492
    const-string v10, ".mp4"

    .line 1493
    .local v10, extension:Ljava/lang/String;
    const-string v16, "video/mp4"

    .line 1499
    .local v16, mimeType:Ljava/lang/String;
    :goto_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v21

    if-eqz v21, :cond_70

    .line 1500
    const-string v10, ".3gp"

    .line 1501
    const-string v16, "video/3gpp"

    .line 1504
    :cond_70
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1505
    .local v4, cameraDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1506
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1507
    .local v6, date:Ljava/util/Date;
    const-string v21, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1508
    .local v15, filepart:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1509
    .local v12, filename:Ljava/lang/String;
    move-object/from16 v19, v15

    .line 1510
    .local v19, title:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1513
    .local v9, displayName:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v11, f:Ljava/io/File;
    const/4 v13, 0x0

    .line 1515
    .local v13, filenumber:I
    :goto_c9
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_172

    .line 1516
    const-string v21, "CamcorderEngine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Duplicated file name found: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {v6, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 1518
    const-string v21, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1519
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v14, v13, 0x1

    .end local v13           #filenumber:I
    .local v14, filenumber:I
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1520
    move-object/from16 v19, v15

    .line 1521
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1522
    const-string v21, "CamcorderEngine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "New file name created: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    new-instance v11, Ljava/io/File;

    .end local v11           #f:Ljava/io/File;
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11       #f:Ljava/io/File;
    move v13, v14

    .end local v14           #filenumber:I
    .restart local v13       #filenumber:I
    goto/16 :goto_c9

    .line 1486
    .end local v4           #cameraDir:Ljava/io/File;
    .end local v5           #cameraDirPath:Ljava/lang/String;
    .end local v6           #date:Ljava/util/Date;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #extension:Ljava/lang/String;
    .end local v11           #f:Ljava/io/File;
    .end local v12           #filename:Ljava/lang/String;
    .end local v13           #filenumber:I
    .end local v15           #filepart:Ljava/lang/String;
    .end local v16           #mimeType:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    :cond_168
    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v5       #cameraDirPath:Ljava/lang/String;
    goto/16 :goto_48

    .line 1495
    :cond_16c
    const-string v10, ".3gp"

    .line 1496
    .restart local v10       #extension:Ljava/lang/String;
    const-string v16, "video/3gpp"

    .restart local v16       #mimeType:Ljava/lang/String;
    goto/16 :goto_60

    .line 1526
    .restart local v4       #cameraDir:Ljava/io/File;
    .restart local v6       #date:Ljava/util/Date;
    .restart local v9       #displayName:Ljava/lang/String;
    .restart local v11       #f:Ljava/io/File;
    .restart local v12       #filename:Ljava/lang/String;
    .restart local v13       #filenumber:I
    .restart local v15       #filepart:Ljava/lang/String;
    .restart local v19       #title:Ljava/lang/String;
    :cond_172
    new-instance v20, Landroid/content/ContentValues;

    const/16 v21, 0x7

    invoke-direct/range {v20 .. v21}, Landroid/content/ContentValues;-><init>(I)V

    .line 1528
    .local v20, values:Landroid/content/ContentValues;
    const-string v21, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v21, "_display_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v21, "datetaken"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1531
    const-string v21, "mime_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string v21, "_data"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1535
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    .line 1537
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1538
    return-void
.end method

.method private disableAlertSound()V
    .registers 4

    .prologue
    .line 913
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 914
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_11

    .line 915
    const/high16 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 917
    :cond_11
    return-void
.end method

.method private enableAlertSound()V
    .registers 4

    .prologue
    .line 921
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 922
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_11

    .line 923
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 925
    :cond_11
    return-void
.end method

.method private getTempFileName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1559
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-nez v1, :cond_24

    .line 1560
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 1564
    .local v0, cameraDirPath:Ljava/lang/String;
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1562
    .end local v0           #cameraDirPath:Ljava/lang/String;
    :cond_24
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v0       #cameraDirPath:Ljava/lang/String;
    goto :goto_a
.end method

.method private initializeRecorder()V
    .registers 15

    .prologue
    .line 539
    const-string v10, "CamcorderEngine"

    const-string v11, "initializeRecorder"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v10, :cond_c

    .line 723
    :goto_b
    return-void

    .line 544
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 546
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 547
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 549
    .local v5, myExtras:Landroid/os/Bundle;
    const-wide/16 v6, 0x0

    .line 551
    .local v6, requestedSizeLimit:J
    iget-boolean v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v10, :cond_72

    if-eqz v5, :cond_72

    .line 552
    const-string v10, "output"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 553
    .local v9, saveUri:Landroid/net/Uri;
    if-eqz v9, :cond_54

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 556
    :try_start_2e
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "rw"

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 558
    iput-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 559
    const-string v10, "CamcorderEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCameraVideoFileDescriptor: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_54} :catch_1f0

    .line 565
    :cond_54
    :goto_54
    const-string v10, "android.intent.extra.sizeLimit"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 566
    const-string v10, "CamcorderEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestedSizeLimit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v9           #saveUri:Landroid/net/Uri;
    :cond_72
    new-instance v10, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v10}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 570
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera;->unlock()V

    .line 571
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCamera(Lcom/sec/android/seccamera/SecCamera;)V

    .line 573
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v10, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 574
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v10, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 577
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9e

    .line 578
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 580
    :cond_9e
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 581
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v10

    if-eqz v10, :cond_1fc

    .line 582
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 586
    :goto_b2
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 589
    :try_start_b9
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v11, 0x1f4

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 590
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v11, 0x780

    if-ne v10, v11, :cond_207

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v11, 0x438

    if-ne v10, v11, :cond_207

    .line 591
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v11, 0xaf000

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b9 .. :try_end_d8} :catch_221

    .line 614
    :cond_d8
    :goto_d8
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v10, :cond_29c

    .line 615
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 625
    :goto_e7
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 626
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v12, v12, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 628
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 629
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 630
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 631
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 632
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 635
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13c

    .line 636
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 638
    :cond_13c
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 640
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v10

    const-wide/32 v12, 0x500000

    add-long v3, v10, v12

    .line 641
    .local v3, maxFileSize:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_161

    cmp-long v10, v6, v3

    if-gez v10, :cond_161

    .line 642
    move-wide v3, v6

    .line 645
    :cond_161
    const-wide v10, 0xffffffffL

    cmp-long v10, v3, v10

    if-lez v10, :cond_16f

    .line 646
    const-wide v3, 0xffffffffL

    .line 649
    :cond_16f
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ORG"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b6

    .line 650
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18f

    .line 651
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_2aa

    .line 652
    const-wide/32 v3, 0x42400

    .line 690
    :cond_18f
    :goto_18f
    const-string v10, "CamcorderEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "maxFileSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :try_start_1a7
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v10, v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V
    :try_end_1ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a7 .. :try_end_1ac} :catch_2d6

    .line 700
    :goto_1ac
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CamcorderEngine;->setOrientationOnTake(I)V

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v8

    .line 703
    .local v8, rotation:I
    const-string v10, "CamcorderEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMediaRecorder.setOrientationHint("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v10, :cond_1e2

    .line 705
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v10, v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOrientationHint(I)V

    .line 707
    :cond_1e2
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v10, :cond_1eb

    .line 709
    :try_start_1e6
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v10}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1eb} :catch_303

    .line 722
    :cond_1eb
    :goto_1eb
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_b

    .line 560
    .end local v3           #maxFileSize:J
    .end local v8           #rotation:I
    .restart local v9       #saveUri:Landroid/net/Uri;
    :catch_1f0
    move-exception v1

    .line 562
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v10, "CamcorderEngine"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 584
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v9           #saveUri:Landroid/net/Uri;
    :cond_1fc
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v11, v11, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_b2

    .line 592
    :cond_207
    :try_start_207
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v11, 0x500

    if-ne v10, v11, :cond_224

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v11, 0x2d0

    if-ne v10, v11, :cond_224

    .line 593
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v11, 0x7d000

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_d8

    .line 607
    :catch_221
    move-exception v10

    goto/16 :goto_d8

    .line 594
    :cond_224
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v11, 0x2d0

    if-ne v10, v11, :cond_23e

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v11, 0x1e0

    if-ne v10, v11, :cond_23e

    .line 595
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v11, 0x1e000

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_d8

    .line 596
    :cond_23e
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v11, 0x280

    if-ne v10, v11, :cond_258

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v11, 0x1e0

    if-ne v10, v11, :cond_258

    .line 597
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v11, 0x19000

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_d8

    .line 598
    :cond_258
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v11, 0x140

    if-ne v10, v11, :cond_271

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v11, 0xf0

    if-ne v10, v11, :cond_271

    .line 599
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v11, 0x7800

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_d8

    .line 600
    :cond_271
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v11, 0xb0

    if-ne v10, v11, :cond_d8

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v11, 0x90

    if-ne v10, v11, :cond_d8

    .line 601
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_293

    .line 602
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v11, 0x1800

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_d8

    .line 604
    :cond_293
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v11, 0x3000

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_29a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_207 .. :try_end_29a} :catch_221

    goto/16 :goto_d8

    .line 617
    :cond_29c
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->createVideoPath()V

    .line 618
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_e7

    .line 653
    .restart local v3       #maxFileSize:J
    :cond_2aa
    const-wide/32 v10, 0x42400

    cmp-long v10, v6, v10

    if-lez v10, :cond_18f

    .line 654
    const-wide/32 v3, 0x42400

    goto/16 :goto_18f

    .line 668
    :cond_2b6
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18f

    .line 669
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_2ca

    .line 670
    const-wide/32 v3, 0x49c00

    goto/16 :goto_18f

    .line 671
    :cond_2ca
    const-wide/32 v10, 0x49c00

    cmp-long v10, v6, v10

    if-lez v10, :cond_18f

    .line 672
    const-wide/32 v3, 0x49c00

    goto/16 :goto_18f

    .line 694
    :catch_2d6
    move-exception v0

    .line 695
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v10, "CamcorderEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v10, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    goto/16 :goto_1ac

    .line 710
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v8       #rotation:I
    :catch_303
    move-exception v0

    .line 711
    .local v0, e:Ljava/io/IOException;
    const-string v10, "CamcorderEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prepare failed for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v10, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 715
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 719
    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v11, -0x4

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1eb
.end method

.method private readVideoPreferences()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 1661
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    .line 1664
    .local v4, videoQuality:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1665
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1666
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1667
    .local v0, extraVideoQuality:I
    if-nez v0, :cond_3c

    move v4, v5

    .line 1672
    .end local v0           #extraVideoQuality:I
    :cond_1e
    :goto_1e
    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 1673
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1674
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1678
    .local v3, seconds:I
    mul-int/lit16 v5, v3, 0x3e8

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 1688
    .end local v3           #seconds:I
    :cond_32
    :goto_32
    new-instance v5, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v5, v6, v4}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1689
    return-void

    .line 1667
    .restart local v0       #extraVideoQuality:I
    :cond_3c
    const/4 v4, 0x2

    goto :goto_1e

    .line 1680
    .end local v0           #extraVideoQuality:I
    :cond_3e
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->camcorderBaseIndicatorsRemainTime()I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 1681
    .local v2, nRemainTime:I
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getMaxVideoDurationInMs()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 1682
    iget v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    if-le v5, v2, :cond_32

    .line 1683
    const-string v5, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaxVideoDurationInMs("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") > nRemainTime("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto :goto_32
.end method

.method private registerVideo()V
    .registers 10

    .prologue
    const v8, 0x7f0a00f1

    const/4 v7, 0x0

    .line 1574
    const-string v3, "CamcorderEngine"

    const-string v4, "registerVideo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_ba

    .line 1577
    const-string v3, "content://media/external/video/media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1578
    .local v2, videoTable:Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "_size"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1579
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    iget-wide v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1580
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "resolution"

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    :try_start_49
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1587
    const-string v3, "CamcorderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current video URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_49 .. :try_end_76} :catch_7a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_49 .. :try_end_76} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_76} :catch_a3

    .line 1612
    .end local v2           #videoTable:Landroid/net/Uri;
    :goto_76
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1613
    return-void

    .line 1589
    .restart local v2       #videoTable:Landroid/net/Uri;
    :catch_7a
    move-exception v1

    .line 1590
    .local v1, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CamcorderEngine"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_76

    .line 1592
    .end local v1           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_8c
    move-exception v0

    .line 1593
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v3, "CamcorderEngine"

    const-string v4, "insert failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_76

    .line 1595
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_a3
    move-exception v0

    .line 1596
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "CamcorderEngine"

    const-string v4, "insert failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_76

    .line 1601
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v2           #videoTable:Landroid/net/Uri;
    :cond_ba
    :try_start_ba
    const-string v3, "CamcorderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current video URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_dd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ba .. :try_end_dd} :catch_de
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_ba .. :try_end_dd} :catch_f0

    goto :goto_76

    .line 1603
    :catch_de
    move-exception v1

    .line 1604
    .restart local v1       #sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CamcorderEngine"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_76

    .line 1606
    .end local v1           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_f0
    move-exception v0

    .line 1607
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v3, "CamcorderEngine"

    const-string v4, "insert failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_76
.end method

.method private renameTempFile()V
    .registers 4

    .prologue
    .line 1568
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1569
    .local v1, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1571
    return-void
.end method


# virtual methods
.method public closeVideoFileDescriptor()V
    .registers 4

    .prologue
    .line 730
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_c

    .line 732
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_d

    .line 736
    :goto_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 738
    :cond_c
    return-void

    .line 733
    :catch_d
    move-exception v0

    .line 734
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public doCancelVideoRecordingSync()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1051
    const-string v4, "CamcorderEngine"

    const-string v5, "doCancelVideoRecordingSync"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v4, "CamcorderEngine"

    const-string v5, "Cancelling VideoRecording..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v4, :cond_2e

    .line 1056
    :try_start_18
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 1057
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 1058
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_29} :catch_a1

    .line 1063
    :goto_29
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1074
    :cond_2e
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1076
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_7e

    .line 1077
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1078
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1080
    .local v2, myExtras:Landroid/os/Bundle;
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_7c

    if-eqz v2, :cond_7c

    .line 1081
    const-string v4, "output"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1082
    .local v3, saveUri:Landroid/net/Uri;
    const-string v4, "CamcorderEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting cancelled video file ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :try_start_6b
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/net/URI;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7c
    .catch Ljava/net/URISyntaxException; {:try_start_6b .. :try_end_7c} :catch_c0

    .line 1089
    .end local v3           #saveUri:Landroid/net/Uri;
    :cond_7c
    :goto_7c
    iput-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1093
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #myExtras:Landroid/os/Bundle;
    :cond_7e
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 1095
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 1096
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 1097
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 1098
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 1099
    :cond_99
    const-string v4, "CamcorderEngine"

    const-string v5, "Cancelling VideoRecording is completed!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return-void

    .line 1059
    :catch_a1
    move-exception v0

    .line 1060
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "CamcorderEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 1085
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #myExtras:Landroid/os/Bundle;
    .restart local v3       #saveUri:Landroid/net/Uri;
    :catch_c0
    move-exception v4

    goto :goto_7c
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .registers 7
    .parameter "param"

    .prologue
    const/16 v4, 0xb

    .line 447
    const-string v1, "CamcorderEngine"

    const-string v2, "doChangeParameterSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_15

    .line 450
    const-string v1, "CamcorderEngine"

    const-string v2, "returning because mCameraDevice is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_14
    return-void

    .line 454
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_21

    .line 455
    const-string v1, "CamcorderEngine"

    const-string v2, "CamcorderParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_21
    move-object v0, p1

    .line 459
    check-cast v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    .line 461
    .local v0, p:Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    sparse-switch v1, :sswitch_data_100

    .line 492
    :goto_2b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_4d

    .line 493
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_ef

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_14

    .line 463
    :sswitch_55
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 466
    :sswitch_6b
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 469
    :sswitch_81
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 472
    :sswitch_97
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 475
    :sswitch_ae
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 478
    :sswitch_c5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 486
    :sswitch_dc
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_2b

    .line 497
    :cond_ef
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 461
    nop

    :sswitch_data_100
    .sparse-switch
        0xa -> :sswitch_ae
        0xb -> :sswitch_c5
        0x67 -> :sswitch_55
        0x69 -> :sswitch_6b
        0x6b -> :sswitch_97
        0x6c -> :sswitch_81
        0x6d -> :sswitch_dc
        0x6e -> :sswitch_dc
        0x70 -> :sswitch_dc
        0x72 -> :sswitch_dc
        0x73 -> :sswitch_dc
        0x74 -> :sswitch_dc
    .end sparse-switch
.end method

.method public doLaunchGallerySync(Ljava/lang/String;)V
    .registers 4
    .parameter "keyValue"

    .prologue
    .line 1109
    const-string v0, "CamcorderEngine"

    const-string v1, "doLaunchGallerySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method public doPauseVideoRecordingSync()V
    .registers 4

    .prologue
    .line 934
    const-string v1, "CamcorderEngine"

    const-string v2, "doPauseVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_13

    .line 937
    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :goto_12
    return-void

    .line 941
    :cond_13
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1f

    .line 942
    const-string v1, "CamcorderEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 947
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_28

    .line 954
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_12

    .line 948
    :catch_28
    move-exception v0

    .line 949
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_12
.end method

.method public doPrepareVideoRecordingAsync()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 766
    const-string v0, "CamcorderEngine"

    const-string v1, "doPrepareVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_1d

    .line 769
    const-string v0, "CamcorderEngine"

    const-string v1, "mMediaRecorder is already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing mMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 773
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_3a

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_3b

    .line 777
    const-string v0, "CamcorderEngine"

    const-string v1, "CamcorderParameters is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 810
    :cond_3a
    :goto_3a
    return-void

    .line 782
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v2, :cond_6b

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "continuous_af"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 788
    :goto_4b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 791
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$2;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3a

    .line 785
    :cond_6b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "continuous_af"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_4b
.end method

.method public doResumeVideoRecordingSync()V
    .registers 4

    .prologue
    .line 964
    const-string v1, "CamcorderEngine"

    const-string v2, "doResumeVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_13

    .line 967
    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :goto_12
    return-void

    .line 971
    :cond_13
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1f

    .line 972
    const-string v1, "CamcorderEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 977
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_28

    .line 982
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    goto :goto_12

    .line 978
    :catch_28
    move-exception v0

    .line 979
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Could not resume media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public doSetAllParamsSync()V
    .registers 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initialize()V

    .line 444
    return-void
.end method

.method public doStartEngineAsync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 352
    const-string v0, "CamcorderEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_16

    .line 358
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 361
    :cond_16
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 364
    iput v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraId:I

    .line 368
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

    .line 376
    :cond_37
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_68

    .line 378
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 386
    :cond_46
    :goto_46
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 389
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$1;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCamcorderThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOrientationListener()V

    .line 423
    return-void

    .line 366
    :cond_65
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraId:I

    goto :goto_23

    .line 380
    :cond_68
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_46
.end method

.method public doStartPreviewAsync()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 1115
    const-string v2, "CamcorderEngine"

    const-string v3, "doStartPreviewAsync"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1d

    .line 1118
    const-string v2, "CamcorderEngine"

    const-string v3, "return because mSurfaceHolder is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    if-eqz v2, :cond_1c

    .line 1121
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1201
    :cond_1c
    :goto_1c
    return-void

    .line 1127
    :cond_1d
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_29

    .line 1128
    const-string v2, "CamcorderEngine"

    const-string v3, "return because mCameraDevice is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1132
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->resetPreviewSize()V

    .line 1135
    :try_start_2c
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_7d

    .line 1146
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine$4;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1176
    .local v1, startPreviewThread:Ljava/lang/Thread;
    const-string v2, "startPreviewThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1178
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1180
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v2, :cond_92

    .line 1181
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 1184
    :goto_51
    const-string v2, "GT-I9103"

    const-string v3, "GT-I9100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    const-string v2, "SGH-I927"

    const-string v3, "GT-I9100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1186
    :cond_65
    const-string v2, "CamcorderEngine"

    const-string v3, "YS --- N1 OK "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 1194
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v2

    if-nez v2, :cond_9a

    .line 1195
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_1c

    .line 1136
    .end local v1           #startPreviewThread:Ljava/lang/Thread;
    :catch_7d
    move-exception v0

    .line 1137
    .local v0, exception:Ljava/io/IOException;
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 1138
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1141
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 1142
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1c

    .line 1183
    .end local v0           #exception:Ljava/io/IOException;
    .restart local v1       #startPreviewThread:Ljava/lang/Thread;
    :cond_92
    const-string v2, "CamcorderEngine"

    const-string v3, "doStartPreviewAsync : mOrientationListener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 1197
    :cond_9a
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto/16 :goto_1c
.end method

.method public doStartVideoRecordingAsync()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 821
    const-string v0, "CamcorderEngine"

    const-string v1, "doStartVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 823
    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 829
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_19} :catch_3d

    .line 836
    :cond_19
    :goto_19
    const-string v0, "CamcorderEngine"

    const-string v1, "start video recording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v0, :cond_3c

    .line 839
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$3;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v1, "StartRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 890
    :cond_3c
    return-void

    .line 832
    :catch_3d
    move-exception v0

    goto :goto_19
.end method

.method public doStopEngineSync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 426
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_14

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 430
    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 433
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_24

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->lock()V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 436
    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 439
    :cond_24
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 440
    return-void
.end method

.method public doStopPreviewSync()V
    .registers 3

    .prologue
    .line 1204
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_10

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1210
    :cond_10
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1e

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1216
    :goto_1d
    return-void

    .line 1215
    :cond_1e
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public doStopVideoRecordingSync()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 992
    const-string v1, "CamcorderEngine"

    const-string v2, "doStopVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v1, "CamcorderEngine"

    const-string v2, "Stopping VideoRecording..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v1, :cond_46

    .line 997
    :try_start_18
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 998
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 999
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 1000
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenu()V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_33} :catch_5f

    .line 1015
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_3a

    .line 1016
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->renameTempFile()V

    .line 1018
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1020
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1021
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1031
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->registerVideo()V

    .line 1034
    :cond_46
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1036
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 1037
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 1039
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->DisplayLowBatteryPopup()V

    .line 1041
    const-string v1, "CamcorderEngine"

    const-string v2, "Stopping VideoRecording is completed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :goto_5e
    return-void

    .line 1002
    :catch_5f
    move-exception v0

    .line 1003
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1007
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1008
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 1011
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_5e
.end method

.method public doWaitForSurfaceAsync()V
    .registers 3

    .prologue
    .line 746
    const-string v0, "CamcorderEngine"

    const-string v1, "doWaitForSurfaceAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_18

    .line 749
    const-string v0, "CamcorderEngine"

    const-string v1, "mSurfaceHolder is already created!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 755
    :goto_17
    return-void

    .line 752
    :cond_18
    const-string v0, "CamcorderEngine"

    const-string v1, "start waiting for mSurfaceHolder..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_17
.end method

.method public getCurrentVideoFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;
    .registers 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_d

    .line 525
    const-string v0, "CamcorderEngine"

    const-string v1, "getMediaProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x0

    .line 533
    :goto_c
    return-object v0

    .line 529
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    if-eqz v0, :cond_14

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_c

    .line 532
    :cond_14
    new-instance v0, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_c
.end method

.method public getRemainTime()I
    .registers 7

    .prologue
    .line 1744
    const/4 v1, 0x0

    .line 1745
    .local v1, nBitrate:I
    const/4 v3, 0x0

    .line 1746
    .local v3, nVideoBitrate:I
    const/4 v0, 0x0

    .line 1747
    .local v0, nAudioBitrate:I
    const/4 v2, 0x0

    .line 1749
    .local v2, nRemainTime:I
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 1750
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v4, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 1752
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 1753
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v4, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 1756
    :cond_18
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x8

    .line 1757
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/CheckMemory;->getRemainTime(II)I

    move-result v2

    .line 1759
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1761
    return v2
.end method

.method public getTouchFocusPositioned()Z
    .registers 2

    .prologue
    .line 1258
    sget-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getVideoFileLengthInByte()J
    .registers 3

    .prologue
    .line 1692
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInSecond()I
    .registers 5

    .prologue
    .line 1696
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public handleVideoRecordingStarted()V
    .registers 3

    .prologue
    .line 893
    const-string v0, "CamcorderEngine"

    const-string v1, "handleVideoRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->onVideoRecordingStart()V

    .line 896
    return-void
.end method

.method public initialize()V
    .registers 10

    .prologue
    const/16 v8, 0x25

    const/16 v7, 0xb

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 148
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "camera-id"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffect()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x6b

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x70

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x6d

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x6e

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x72

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x73

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x74

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x68

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "video_recording_gamma"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "slow_ae"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_13a

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_101
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "50hz"

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 294
    :goto_122
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v2, 0x454

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "mode"

    const-string v3, "video-mode"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 300
    return-void

    .line 179
    :cond_13a
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    .line 244
    :cond_148
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "camera-id"

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x6d

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    goto :goto_122
.end method

.method public isMediaRecorderRecording()Z
    .registers 2

    .prologue
    .line 1740
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isPreviewStarted()Z
    .registers 2

    .prologue
    .line 1801
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1802
    const/4 v0, 0x1

    .line 1804
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isRecording()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 520
    :cond_b
    :goto_b
    return v0

    .line 516
    :cond_c
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 520
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCameraSettingsChanged(II)V
    .registers 4
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1219
    sparse-switch p1, :sswitch_data_16

    .line 1250
    :goto_3
    :sswitch_3
    return-void

    .line 1230
    :sswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_3

    .line 1243
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_3

    .line 1247
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    goto :goto_3

    .line 1219
    nop

    :sswitch_data_16
    .sparse-switch
        0x16 -> :sswitch_11
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_3
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6d -> :sswitch_4
        0x6e -> :sswitch_4
        0x6f -> :sswitch_3
        0x70 -> :sswitch_8
        0x72 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_4
    .end sparse-switch
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .registers 6
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1704
    const-string v0, "CamcorderEngine"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const/4 v0, 0x1

    if-ne p2, v0, :cond_25

    .line 1707
    const-string v0, "CamcorderEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 1710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1711
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->finishRecordingWithError()V

    .line 1718
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 1719
    :goto_24
    return-void

    .line 1712
    :cond_25
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1e

    .line 1713
    const-string v0, "CamcorderEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    .line 1715
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_24
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .registers 8
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x2

    .line 1722
    const/16 v0, 0x320

    if-ne p2, v0, :cond_17

    .line 1723
    const-string v0, "CamcorderEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 1725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1737
    :cond_16
    :goto_16
    return-void

    .line 1726
    :cond_17
    const/16 v0, 0x321

    if-ne p2, v0, :cond_3a

    .line 1727
    const-string v0, "CamcorderEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 1729
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1731
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0009

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_16

    .line 1732
    :cond_3a
    const/16 v0, 0x384

    if-ne p2, v0, :cond_48

    .line 1733
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    goto :goto_16

    .line 1734
    :cond_48
    const/16 v0, 0x385

    if-ne p2, v0, :cond_16

    .line 1735
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    goto :goto_16
.end method

.method public releaseMediaRecorder()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1457
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_1d

    .line 1459
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupEmptyFile()V

    .line 1460
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 1461
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 1462
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 1463
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1465
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_26

    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->lock()V

    .line 1468
    :cond_26
    return-void
.end method

.method protected resetPreviewSize()V
    .registers 11

    .prologue
    const/16 v9, 0x7530

    const/16 v8, 0x3a98

    const/4 v7, 0x1

    .line 1274
    const-string v4, "CamcorderEngine"

    const-string v5, "resetPreviewSize()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    packed-switch v4, :pswitch_data_100

    .line 1388
    :pswitch_15
    const/16 v3, 0x280

    .line 1389
    .local v3, recordingWidth:I
    const/16 v2, 0x1e0

    .line 1390
    .local v2, recordingHeight:I
    const/16 v1, 0x280

    .line 1391
    .local v1, previewWidth:I
    const/16 v0, 0x1e0

    .line 1395
    .local v0, previewHeight:I
    :goto_1d
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v4

    if-ne v4, v7, :cond_2d

    .line 1396
    const/16 v3, 0xb0

    .line 1397
    const/16 v2, 0x90

    .line 1399
    const/16 v1, 0x210

    .line 1400
    const/16 v0, 0x1b0

    .line 1417
    :cond_2d
    const-string v4, "GT-I9103"

    const-string v5, "GT-I9100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    const-string v4, "SGH-I927"

    const-string v5, "GT-I9100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 1419
    :cond_41
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v4

    if-nez v4, :cond_98

    .line 1421
    const/16 v4, 0x280

    if-ne v1, v4, :cond_51

    const/16 v4, 0x1e0

    if-eq v0, v4, :cond_98

    .line 1423
    :cond_51
    const-string v4, "CamcorderEngine"

    const-string v5, "YYS -- Camcorder Self reseting Preview Size pass"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :goto_58
    return-void

    .line 1336
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v2           #recordingHeight:I
    .end local v3           #recordingWidth:I
    :pswitch_59
    const/16 v3, 0x780

    .line 1337
    .restart local v3       #recordingWidth:I
    const/16 v2, 0x438

    .line 1338
    .restart local v2       #recordingHeight:I
    const/16 v1, 0x320

    .line 1339
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1c2

    .line 1340
    .restart local v0       #previewHeight:I
    goto :goto_1d

    .line 1342
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v2           #recordingHeight:I
    .end local v3           #recordingWidth:I
    :pswitch_62
    const/16 v3, 0x500

    .line 1343
    .restart local v3       #recordingWidth:I
    const/16 v2, 0x2d0

    .line 1344
    .restart local v2       #recordingHeight:I
    const/16 v1, 0x320

    .line 1345
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1c2

    .line 1346
    .restart local v0       #previewHeight:I
    goto :goto_1d

    .line 1348
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v2           #recordingHeight:I
    .end local v3           #recordingWidth:I
    :pswitch_6b
    const/16 v3, 0x320

    .line 1349
    .restart local v3       #recordingWidth:I
    const/16 v2, 0x1e0

    .line 1350
    .restart local v2       #recordingHeight:I
    const/16 v1, 0x320

    .line 1351
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1352
    .restart local v0       #previewHeight:I
    goto :goto_1d

    .line 1354
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v2           #recordingHeight:I
    .end local v3           #recordingWidth:I
    :pswitch_74
    const/16 v3, 0x2d0

    .line 1355
    .restart local v3       #recordingWidth:I
    const/16 v2, 0x1e0

    .line 1356
    .restart local v2       #recordingHeight:I
    const/16 v1, 0x2d0

    .line 1357
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1358
    .restart local v0       #previewHeight:I
    goto :goto_1d

    .line 1360
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v2           #recordingHeight:I
    .end local v3           #recordingWidth:I
    :pswitch_7d
    const/16 v3, 0x280

    .line 1361
    .restart local v3       #recordingWidth:I
    const/16 v2, 0x1e0

    .line 1362
    .restart local v2       #recordingHeight:I
    const/16 v1, 0x280

    .line 1363
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1364
    .restart local v0       #previewHeight:I
    goto :goto_1d

    .line 1366
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v2           #recordingHeight:I
    .end local v3           #recordingWidth:I
    :pswitch_86
    const/16 v3, 0x140

    .line 1367
    .restart local v3       #recordingWidth:I
    const/16 v2, 0xf0

    .line 1369
    .restart local v2       #recordingHeight:I
    const/16 v1, 0x280

    .line 1370
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1375
    .restart local v0       #previewHeight:I
    goto :goto_1d

    .line 1377
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v2           #recordingHeight:I
    .end local v3           #recordingWidth:I
    :pswitch_8f
    const/16 v3, 0xb0

    .line 1378
    .restart local v3       #recordingWidth:I
    const/16 v2, 0x90

    .line 1380
    .restart local v2       #recordingHeight:I
    const/16 v1, 0x210

    .line 1381
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1b0

    .line 1386
    .restart local v0       #previewHeight:I
    goto :goto_1d

    .line 1429
    :cond_98
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v4, :cond_e0

    .line 1430
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1431
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x68

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVideoSize()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x25

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1440
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v4

    if-ne v4, v7, :cond_e9

    .line 1441
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v8, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1442
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFrameRate(I)V

    .line 1448
    :goto_d3
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_f6

    .line 1449
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_58

    .line 1436
    :cond_e0
    const-string v4, "CamcorderEngine"

    const-string v5, "resetPreviewSize()- mParameters is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 1444
    :cond_e9
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v9, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1445
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_d3

    .line 1451
    :cond_f6
    const-string v4, "CamcorderEngine"

    const-string v5, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 1334
    nop

    :pswitch_data_100
    .packed-switch 0xb
        :pswitch_7d
        :pswitch_6b
        :pswitch_59
        :pswitch_62
        :pswitch_74
        :pswitch_15
        :pswitch_86
        :pswitch_8f
    .end packed-switch
.end method

.method public scheduleCancelVideoRecording()V
    .registers 4

    .prologue
    .line 1045
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleCancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1048
    return-void
.end method

.method public scheduleLaunchGallery(Ljava/lang/String;)V
    .registers 4
    .parameter "keyValue"

    .prologue
    .line 1103
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleLaunchGallery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x19

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1106
    return-void
.end method

.method public schedulePauseVideoRecording()V
    .registers 4

    .prologue
    .line 928
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 931
    return-void
.end method

.method public schedulePrepareVideoRecording()V
    .registers 4

    .prologue
    const/16 v2, 0x65

    .line 758
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePrepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 763
    :cond_1b
    return-void
.end method

.method public scheduleResumeVideoRecording()V
    .registers 4

    .prologue
    .line 958
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleResumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 961
    return-void
.end method

.method public scheduleStartVideoRecording()V
    .registers 4

    .prologue
    const/16 v2, 0x66

    .line 813
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 818
    :cond_1b
    return-void
.end method

.method public scheduleStopVideoRecording()V
    .registers 4

    .prologue
    .line 986
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 989
    return-void
.end method

.method public scheduleWaitForSurface()V
    .registers 4

    .prologue
    .line 741
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleWaitForSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 743
    return-void
.end method

.method public searchForInitialLastContentUri()V
    .registers 3

    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearLastContentUri()V

    .line 1656
    new-instance v0, Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;-><init>(Landroid/content/ContentResolver;)V

    .line 1657
    .local v0, ml:Lcom/sec/android/app/camera/imageviewer/MediaList;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1658
    return-void
.end method

.method protected searchForLastContentUri()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1616
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_7

    .line 1650
    :goto_6
    return-void

    .line 1620
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1621
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1623
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a1

    .line 1624
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1625
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1626
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1628
    .local v7, dataIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

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

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 1631
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1632
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 1635
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_7a
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    if-eqz v0, :cond_97

    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_86

    .line 1637
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 1640
    :cond_86
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1646
    :goto_92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 1643
    :cond_97
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_92

    .line 1648
    :cond_a1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto/16 :goto_6
.end method

.method public setFrontSensorMirror(I)V
    .registers 5
    .parameter "flip"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1795
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_d

    .line 1796
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_e

    :goto_a
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 1798
    :cond_d
    return-void

    :cond_e
    move v0, v1

    .line 1796
    goto :goto_a
.end method

.method public setHDMICableConnected(Z)V
    .registers 7
    .parameter "connected"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1778
    const-string v2, "CamcorderEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHDMICableConnected. connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v2, :cond_2f

    .line 1781
    const-string v2, "CamcorderEngine"

    const-string v3, "Recording is in progrss"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz p1, :cond_2d

    :goto_29
    invoke-virtual {v2, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setHDMICableConnected(I)V

    .line 1792
    :goto_2c
    return-void

    :cond_2d
    move v0, v1

    .line 1782
    goto :goto_29

    .line 1786
    :cond_2f
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_3b

    .line 1787
    const-string v0, "CamcorderEngine"

    const-string v1, "mCamcorderDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1791
    :cond_3b
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v3, 0x461

    if-eqz p1, :cond_45

    :goto_41
    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_2c

    :cond_45
    move v0, v1

    goto :goto_41
.end method

.method public setIsVideoCaptureIntent(Z)Z
    .registers 5
    .parameter "chkIsVideoCaptureIntent"

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    .line 507
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoCaptureIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public setTouchFocusPosition(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1254
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    .line 1255
    return-void
.end method

.method public startTouchAutoFocus()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1263
    sget-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsFocusSetAuto:Z

    if-nez v0, :cond_1c

    .line 1264
    sput-boolean v2, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsFocusSetAuto:Z

    .line 1265
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1271
    :cond_1c
    return-void
.end method

.method public waitForStartRecordingThreadComplete()V
    .registers 2

    .prologue
    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 903
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_12} :catch_13

    .line 909
    :cond_12
    :goto_12
    return-void

    .line 906
    :catch_13
    move-exception v0

    goto :goto_12
.end method
