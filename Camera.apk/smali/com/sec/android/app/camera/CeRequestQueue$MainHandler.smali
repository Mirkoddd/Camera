.class Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
.super Landroid/os/Handler;
.source "CeRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CeRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CeRequestQueue;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CeRequestQueue;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CeRequestQueue;Lcom/sec/android/app/camera/CeRequestQueue$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;-><init>(Lcom/sec/android/app/camera/CeRequestQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_35

    .line 51
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->removeMessages(I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #getter for: Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$000(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLandscapeActive()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "SGH-I757M"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #getter for: Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$000(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getKeyLockState()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 55
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #getter for: Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$100(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    :cond_35
    :goto_35
    return-void

    .line 65
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->this$0:Lcom/sec/android/app/camera/CeRequestQueue;

    #calls: Lcom/sec/android/app/camera/CeRequestQueue;->startFirstRequest()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->access$200(Lcom/sec/android/app/camera/CeRequestQueue;)V

    goto :goto_35
.end method
