.class public final Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .registers 8
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v4, 0x1

    .line 307
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback.onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 348
    :cond_2f
    :goto_2f
    :sswitch_2f
    return-void

    .line 312
    :cond_30
    sparse-switch p1, :sswitch_data_de

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    goto :goto_2f

    .line 316
    :sswitch_3c
    const-string v1, "CamcorderEngine"

    const-string v2, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 318
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mInformedAboutFirmwareVersion:Z

    if-nez v1, :cond_61

    const-string v1, "357858010034783"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    :cond_61
    const-string v1, "004400152020002"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_7a

    .line 319
    :cond_6d
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mInformedAboutFirmwareVersion:Z

    goto :goto_2f

    .line 322
    :cond_7a
    const-string v1, "CamcorderEngine"

    const-string v2, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 326
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :sswitch_82
    const-string v1, "CamcorderEngine"

    const-string v2, "!!!Camcorder retry!!! - start!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a3

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    if-ge v1, v4, :cond_d7

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 334
    :cond_a3
    :goto_a3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b5

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 337
    :cond_b5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartEngineAsync()V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartPreviewAsync()V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 342
    const-string v1, "CamcorderEngine"

    const-string v2, "!!!Camcorder retry!!! before return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 331
    :cond_d7
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_a3

    .line 312
    nop

    :sswitch_data_de
    .sparse-switch
        0x0 -> :sswitch_2f
        0x3e8 -> :sswitch_3c
        0x3e9 -> :sswitch_82
    .end sparse-switch
.end method
