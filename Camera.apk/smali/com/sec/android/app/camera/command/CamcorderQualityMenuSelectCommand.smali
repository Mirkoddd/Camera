.class public Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "CamcorderQualityMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CamcorderQualityMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mQuality:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 4
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 36
    packed-switch p2, :pswitch_data_16

    .line 49
    :goto_8
    return-void

    .line 38
    :pswitch_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mQuality:I

    goto :goto_8

    .line 41
    :pswitch_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mQuality:I

    goto :goto_8

    .line 44
    :pswitch_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mQuality:I

    goto :goto_8

    .line 36
    nop

    :pswitch_data_16
    .packed-switch 0x6a7
        :pswitch_9
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_10

    .line 54
    const-string v0, "CamcorderQualityMenuSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_f
    :goto_f
    return-void

    .line 58
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 59
    const-string v0, "CamcorderQualityMenuSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 63
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mQuality:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderQualityMenuSelect(I)V

    .line 64
    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_f

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_f
.end method
