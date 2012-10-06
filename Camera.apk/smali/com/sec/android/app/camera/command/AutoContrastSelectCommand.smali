.class public Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "AutoContrastSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoContrastSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAutoContrast:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 6
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 36
    const-string v0, "AutoContrastSelectCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandid.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    packed-switch p2, :pswitch_data_2a

    .line 49
    :goto_20
    return-void

    .line 40
    :pswitch_21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mAutoContrast:I

    goto :goto_20

    .line 44
    :pswitch_25
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mAutoContrast:I

    goto :goto_20

    .line 37
    nop

    :pswitch_data_2a
    .packed-switch 0x5dc
        :pswitch_21
        :pswitch_25
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_10

    .line 54
    const-string v0, "AutoContrastSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_f
    :goto_f
    return-void

    .line 58
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 59
    const-string v0, "AutoContrastSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 63
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_38

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 65
    const-string v0, "AutoContrastSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 70
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mAutoContrast:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAutocontrastSelect(I)V

    .line 71
    iget v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_f

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_f
.end method
