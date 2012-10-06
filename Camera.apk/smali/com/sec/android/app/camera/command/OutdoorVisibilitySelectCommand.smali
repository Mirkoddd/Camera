.class public Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "OutdoorVisibilitySelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OutdoorVisibilitySelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mOutdoorVisibility:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 4
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_12

    .line 49
    :goto_8
    return-void

    .line 40
    :pswitch_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mOutdoorVisibility:I

    goto :goto_8

    .line 44
    :pswitch_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mOutdoorVisibility:I

    goto :goto_8

    .line 37
    nop

    :pswitch_data_12
    .packed-switch 0xd48
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_10

    .line 54
    const-string v0, "OutdoorVisibilitySelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_f
    :goto_f
    return-void

    .line 58
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 59
    const-string v0, "OutdoorVisibilitySelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 63
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_38

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 65
    const-string v0, "OutdoorVisibilitySelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 70
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mOutdoorVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibilitySelect(I)V

    .line 71
    iget v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_f

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_f
.end method
