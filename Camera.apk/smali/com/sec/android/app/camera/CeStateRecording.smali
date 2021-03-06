.class public Lcom/sec/android/app/camera/CeStateRecording;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateRecording.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateRecording"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .registers 4
    .parameter "cameraEngine"
    .parameter "requestQueue"
    .parameter "id"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AbstractCeState;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 34
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_20

    .line 46
    :goto_5
    return-void

    .line 39
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_5

    .line 42
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->handleVideoRecordingStarted()V

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_5

    .line 37
    nop

    :sswitch_data_20
    .sparse-switch
        0x8 -> :sswitch_6
        0x66 -> :sswitch_e
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .registers 5
    .parameter "request"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_92

    .line 80
    const-string v0, "CeStateRecording"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 83
    const/4 v0, 0x0

    :goto_18
    return v0

    .line 52
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraEngine;->doWaitAsync(I)V

    move v0, v1

    .line 53
    goto :goto_18

    .line 55
    :sswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doProcessBackSync()V

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 57
    goto :goto_18

    .line 61
    :sswitch_3c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doPauseVideoRecordingSync()V

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 63
    goto :goto_18

    .line 65
    :sswitch_4e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doResumeVideoRecordingSync()V

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 67
    goto :goto_18

    .line 69
    :sswitch_60
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 72
    goto :goto_18

    .line 74
    :sswitch_79
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 77
    goto :goto_18

    .line 49
    :sswitch_data_92
    .sparse-switch
        0xd -> :sswitch_19
        0x17 -> :sswitch_2c
        0x67 -> :sswitch_3c
        0x68 -> :sswitch_4e
        0x69 -> :sswitch_60
        0x6a -> :sswitch_79
    .end sparse-switch
.end method
