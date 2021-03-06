.class public Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ISOMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ISOMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mISO:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 4
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_42

    .line 80
    :goto_8
    return-void

    .line 39
    :pswitch_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 42
    :pswitch_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 45
    :pswitch_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 48
    :pswitch_15
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 51
    :pswitch_19
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 54
    :pswitch_1d
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 57
    :pswitch_21
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 60
    :pswitch_25
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 63
    :pswitch_29
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 66
    :pswitch_2e
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 69
    :pswitch_33
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 72
    :pswitch_38
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 75
    :pswitch_3d
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    goto :goto_8

    .line 37
    :pswitch_data_42
    .packed-switch 0x44c
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_3d
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 85
    const-string v0, "ISOMenuSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_11
    :goto_11
    return-void

    .line 89
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_22

    .line 90
    const-string v0, "ISOMenuSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 94
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 95
    const-string v0, "ISOMenuSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 99
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mISO:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onISOMenuSelect(I)V

    .line 100
    iget v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_11

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_11
.end method
