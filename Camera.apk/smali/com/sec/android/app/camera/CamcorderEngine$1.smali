.class Lcom/sec/android/app/camera/CamcorderEngine$1;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine;->doStartEngineAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 391
    const-string v1, "CamcorderEngine"

    const-string v2, "opening camera device..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraId:I

    invoke-static {v2}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    #setter for: Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$002(Lcom/sec/android/app/camera/CamcorderEngine;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraId:I

    if-nez v1, :cond_65

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_74

    .line 405
    :goto_29
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$000(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$100(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 406
    const-string v1, "CamcorderEngine"

    const-string v2, "camera device is opened."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$000(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    #setter for: Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$202(Lcom/sec/android/app/camera/CamcorderEngine;Lcom/sec/android/seccamera/SecCamera$Parameters;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$200(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    if-nez v1, :cond_84

    .line 410
    const-string v1, "CamcorderEngine"

    const-string v2, "CamcorderParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 416
    :goto_64
    return-void

    .line 398
    :cond_65
    :try_start_65
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_73} :catch_74

    goto :goto_29

    .line 400
    :catch_74
    move-exception v0

    .line 401
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CamcorderEngine"

    const-string v2, "service cannot connect. critical exception occured."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_64

    .line 415
    .end local v0           #e:Ljava/lang/Exception;
    :cond_84
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_64
.end method
