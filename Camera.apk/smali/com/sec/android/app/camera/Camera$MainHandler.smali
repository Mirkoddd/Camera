.class Lcom/sec/android/app/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 329
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage :: msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$000()I

    move-result v4

    if-ne v3, v4, :cond_2b

    .line 331
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 422
    :cond_2a
    :goto_2a
    return-void

    .line 333
    :cond_2b
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$100()I

    move-result v4

    if-ne v3, v4, :cond_3e

    .line 334
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->cancelTouchAutoFocus()V

    .line 335
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->restartTouchAutoFocus()V

    goto :goto_2a

    .line 337
    :cond_3e
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$200()I

    move-result v4

    if-ne v3, v4, :cond_85

    .line 339
    :try_start_46
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 340
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraBaseIndicators;->resumeOrientationListener()V

    .line 341
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraIndicators;->resumeOrientationListener()V

    .line 342
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 343
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$400()I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$500()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_7b
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_7b} :catch_7c

    goto :goto_2a

    .line 344
    :catch_7c
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "Camera"

    const-string v4, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 347
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_85
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$400()I

    move-result v4

    if-ne v3, v4, :cond_c9

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$704(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$800()I

    move-result v4

    if-ge v3, v4, :cond_c1

    .line 350
    :try_start_99
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 351
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$400()I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$500()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_b5
    .catch Ljava/lang/NullPointerException; {:try_start_99 .. :try_end_b5} :catch_b7

    goto/16 :goto_2a

    .line 352
    :catch_b7
    move-exception v0

    .line 353
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v3, "Camera"

    const-string v4, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 356
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_c1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$702(Lcom/sec/android/app/camera/Camera;I)I

    goto/16 :goto_2a

    .line 358
    :cond_c9
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_ed

    .line 360
    :try_start_cf
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 362
    .local v2, user:Lcom/samsung/shareshot/User;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/shareshot/IShareShotService;->ackActivateUser(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_e5} :catch_e7

    goto/16 :goto_2a

    .line 364
    .end local v2           #user:Lcom/samsung/shareshot/User;
    :catch_e7
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2a

    .line 367
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_ed
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_111

    .line 369
    :try_start_f3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 370
    .restart local v2       #user:Lcom/samsung/shareshot/User;
    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 372
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/shareshot/IShareShotService;->rejectActivateUser(Ljava/lang/String;)V
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_109} :catch_10b

    goto/16 :goto_2a

    .line 373
    .end local v2           #user:Lcom/samsung/shareshot/User;
    :catch_10b
    move-exception v0

    .line 374
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2a

    .line 376
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_111
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$900()I

    move-result v4

    if-ne v3, v4, :cond_12b

    .line 377
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 378
    .restart local v2       #user:Lcom/samsung/shareshot/User;
    const-string v3, "Camera"

    const-string v4, " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->runDialog(Lcom/samsung/shareshot/User;)V

    goto/16 :goto_2a

    .line 380
    .end local v2           #user:Lcom/samsung/shareshot/User;
    :cond_12b
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_167

    .line 381
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-eq v3, v7, :cond_156

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    #setter for: Lcom/sec/android/app/camera/Camera;->mPreMode:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$1002(Lcom/sec/android/app/camera/Camera;I)I

    .line 383
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 384
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/Camera;->access$1102(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 386
    :cond_156
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/sec/android/app/camera/Camera$MainHandler$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/Camera$MainHandler$1;-><init>(Lcom/sec/android/app/camera/Camera$MainHandler;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_2a

    .line 396
    :cond_167
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$1300()I

    move-result v4

    if-ne v3, v4, :cond_176

    .line 397
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto/16 :goto_2a

    .line 399
    :cond_176
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$1400()I

    move-result v4

    if-ne v3, v4, :cond_189

    .line 400
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 401
    .restart local v2       #user:Lcom/samsung/shareshot/User;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->runComfirmedDialog(Lcom/samsung/shareshot/User;)V

    goto/16 :goto_2a

    .line 402
    .end local v2           #user:Lcom/samsung/shareshot/User;
    :cond_189
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$1500()I

    move-result v4

    if-ne v3, v4, :cond_2a

    .line 403
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mRetryAudioFocusCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2a

    .line 404
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY_AUDIO_FOCUS_GAIN mRetryAudioFocusCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mRetryAudioFocusCount:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1608(Lcom/sec/android/app/camera/Camera;)I

    .line 406
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, focusResult:I
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    #setter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4, v3}, Lcom/sec/android/app/camera/Camera;->access$1702(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 411
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 415
    if-nez v1, :cond_1fc

    .line 416
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$1500()I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$1800()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2a

    .line 417
    :cond_1fc
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$1500()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 418
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$1500()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    goto/16 :goto_2a
.end method
