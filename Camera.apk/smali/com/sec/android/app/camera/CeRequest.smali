.class public Lcom/sec/android/app/camera/CeRequest;
.super Ljava/lang/Object;
.source "CeRequest.java"


# static fields
.field public static final CE_CANCEL_VIDEO_RECORDING:I = 0x6a

.field public static final CE_CHANGE_PARAM:I = 0x7

.field public static final CE_DO_AUTOFOCUS:I = 0x5

.field public static final CE_DO_AUTOFOCUS_COMPLETED:I = 0x2

.field public static final CE_DO_CAPTURE:I = 0x6

.field public static final CE_DO_CAPTURE_COMPLETED:I = 0x3

.field public static final CE_HIDE_REVIEW_SCREEN:I = 0x16

.field public static final CE_IMAGE_STORING_COMPLETED:I = 0x7

.field public static final CE_INITIALIZE_RECORDER:I = 0x64

.field public static final CE_LAUNCH_GALLERY:I = 0x19

.field public static final CE_PAUSE_VIDEO_RECORDING:I = 0x67

.field public static final CE_POST_INIT:I = 0x2

.field public static final CE_PREPARE_RECORDING_COMPLETED:I = 0x65

.field public static final CE_PREPARE_VIDEO_RECORDING:I = 0x65

.field public static final CE_PROCESS_BACK:I = 0x17

.field public static final CE_RESUME_VIDEO_RECORDING:I = 0x68

.field public static final CE_SET_ALL_PARAM:I = 0xa

.field public static final CE_SET_PARAM:I = 0x8

.field public static final CE_SHOW_REVIEW_SCREEN:I = 0x15

.field public static final CE_SMILE_DETECTION_CANCELED:I = 0x6

.field public static final CE_SMILE_DETECTION_COMPLETED:I = 0x5

.field public static final CE_START_ACTIONSHOT:I = 0x12

.field public static final CE_START_CONTINUOUS:I = 0xe

.field public static final CE_START_ENGINE:I = 0x0

.field public static final CE_START_ENGINE_COMPLETED:I = 0x0

.field public static final CE_START_PANORAMA:I = 0x10

.field public static final CE_START_PANORAMA_COMPLETED:I = 0x9

.field public static final CE_START_PREVIEW:I = 0x3

.field public static final CE_START_PREVIEW_COMPLETED:I = 0x1

.field public static final CE_START_RECORDING_COMPLETED:I = 0x66

.field public static final CE_START_SHUTTER_TIMER:I = 0x9

.field public static final CE_START_SHUTTER_TIMER_COPMLETED:I = 0x4

.field public static final CE_START_SMILE_DETECTION:I = 0xb

.field public static final CE_START_VIDEO_RECORDING:I = 0x66

.field public static final CE_STOP_ACTIONSHOT:I = 0x13

.field public static final CE_STOP_CONTINUOUS:I = 0xf

.field public static final CE_STOP_ENGINE:I = 0x1

.field public static final CE_STOP_PANORAMA:I = 0x11

.field public static final CE_STOP_PREVIEW:I = 0x4

.field public static final CE_STOP_PREVIEW_DUMMY:I = 0x18

.field public static final CE_STOP_SMILE_DETECTION:I = 0xc

.field public static final CE_STOP_VIDEO_RECORDING:I = 0x69

.field public static final CE_SURFACE_CREATED:I = 0x64

.field public static final CE_SWITCH_CAMERA:I = 0x14

.field public static final CE_WAIT:I = 0xd

.field public static final CE_WAIT_COMPLETED:I = 0x8

.field public static final CE_WAIT_FOR_SURFACE:I = 0x6b

.field private static final REQUEST_POOL_SIZE:I = 0xa

.field private static mPool:[Lcom/sec/android/app/camera/CeRequest;


# instance fields
.field private mParam:Ljava/lang/Object;

.field private mRequest:I

.field public mReserved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/app/camera/CeRequest;

    sput-object v0, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 4
    .parameter "request"
    .parameter "param"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 105
    iput p1, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 106
    iput-object p2, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public static obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;
    .registers 6
    .parameter "request"
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, req:Lcom/sec/android/app/camera/CeRequest;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_29

    .line 87
    sget-object v2, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    aget-object v1, v2, v0

    .line 88
    if-nez v1, :cond_1a

    .line 89
    new-instance v1, Lcom/sec/android/app/camera/CeRequest;

    .end local v1           #req:Lcom/sec/android/app/camera/CeRequest;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/CeRequest;-><init>(ILjava/lang/Object;)V

    .line 90
    .restart local v1       #req:Lcom/sec/android/app/camera/CeRequest;
    iput-boolean v3, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 91
    sget-object v2, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    aput-object v1, v2, v0

    move-object v2, v1

    .line 101
    :goto_19
    return-object v2

    .line 94
    :cond_1a
    iget-boolean v2, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    if-nez v2, :cond_26

    .line 95
    iput p0, v1, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 96
    iput-object p1, v1, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 97
    iput-boolean v3, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    move-object v2, v1

    .line 98
    goto :goto_19

    .line 86
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 101
    :cond_29
    new-instance v2, Lcom/sec/android/app/camera/CeRequest;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/CeRequest;-><init>(ILjava/lang/Object;)V

    goto :goto_19
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_c

    .line 129
    .end local p1
    :cond_b
    :goto_b
    return v0

    .line 126
    .restart local p1
    :cond_c
    check-cast p1, Lcom/sec/android/app/camera/CeRequest;

    .end local p1
    iget v1, p1, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    iget v2, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    if-ne v1, v2, :cond_b

    .line 127
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public getParam()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    return v0
.end method

.method public setRequest(I)V
    .registers 2
    .parameter "request"

    .prologue
    .line 110
    iput p1, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 111
    return-void
.end method
