.class public Lcom/sec/android/app/camera/command/FocusModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "FocusModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusModeSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mFocusMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 4
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_1a

    .line 53
    :goto_8
    return-void

    .line 39
    :pswitch_9
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    goto :goto_8

    .line 42
    :pswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    goto :goto_8

    .line 45
    :pswitch_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    goto :goto_8

    .line 48
    :pswitch_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    goto :goto_8

    .line 37
    nop

    :pswitch_data_1a
    .packed-switch 0x2bc
        :pswitch_15
        :pswitch_9
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    const-string v0, "FocusModeSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_11
    :goto_11
    return-void

    .line 62
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_22

    .line 63
    const-string v0, "FocusModeSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 67
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 68
    const-string v0, "FocusModeSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 72
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onFocusModeMenuSelect(I)V

    .line 73
    iget v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_11

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_11
.end method
