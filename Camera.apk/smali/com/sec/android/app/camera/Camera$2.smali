.class Lcom/sec/android/app/camera/Camera$2;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, action:Ljava/lang/String;
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 502
    const-string v6, "Camera"

    const-string v7, "onReceive - camera is destroying"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_34
    :goto_34
    return-void

    .line 505
    :cond_35
    const-string v6, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    const-string v6, "android.net.wifidirect.CREATE_LINK_FAIL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 506
    :cond_45
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setWifiDirectStatus()V

    .line 509
    :cond_4c
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 519
    :cond_64
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 534
    const/4 v3, 0x0

    .line 535
    .local v3, mIsSettingsMMC:Z
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    if-eqz v6, :cond_7d

    .line 536
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    if-ne v6, v10, :cond_8a

    .line 537
    const/4 v3, 0x1

    .line 545
    :cond_7d
    :goto_7d
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 546
    if-eqz v3, :cond_34

    .line 547
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_34

    .line 539
    :cond_8a
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v6

    if-eqz v6, :cond_9b

    .line 540
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    .line 541
    :cond_9b
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v6, :cond_7d

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v6

    if-eqz v6, :cond_7d

    .line 542
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    goto :goto_7d

    .line 548
    .end local v3           #mIsSettingsMMC:Z
    :cond_b3
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 549
    const v6, 0x7f0a00e9

    new-array v7, v10, [Ljava/lang/Object;

    const v8, 0x7f0a00e1

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, str:Ljava/lang/String;
    invoke-static {p1, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 552
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_34

    .line 554
    .end local v4           #str:Ljava/lang/String;
    :cond_db
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_105

    .line 555
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    .line 556
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v6, :cond_34

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v6

    if-eqz v6, :cond_34

    .line 557
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    goto/16 :goto_34

    .line 558
    :cond_105
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 559
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    goto/16 :goto_34

    .line 560
    :cond_114
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_123

    .line 561
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V

    goto/16 :goto_34

    .line 562
    :cond_123
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_153

    .line 564
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_141

    .line 565
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 566
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->handleLowBattery()V

    goto/16 :goto_34

    .line 568
    :cond_141
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v6, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v6, :cond_34

    .line 569
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 570
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v6, v9}, Lcom/sec/android/app/camera/Camera;->access$2500(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_34

    .line 573
    :cond_153
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d8

    .line 574
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget v7, v7, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-gt v6, v7, :cond_1bb

    .line 576
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_194

    .line 577
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 578
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_18d

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_18d

    .line 579
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 581
    :cond_18d
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->handleLowBattery()V

    goto/16 :goto_34

    .line 583
    :cond_194
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 584
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1b0

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1b0

    .line 585
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 587
    :cond_1b0
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object v11, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 589
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v6, v9}, Lcom/sec/android/app/camera/Camera;->access$2500(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_34

    .line 592
    :cond_1bb
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1d2

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1d2

    .line 593
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 595
    :cond_1d2
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object v11, v6, Lcom/sec/android/app/camera/Camera;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_34

    .line 597
    :cond_1d8
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_215

    .line 598
    const-string v6, "Camera"

    const-string v7, "INTENT_MSG_SECURITY"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 601
    .local v2, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 603
    const-string v6, "Camera"

    const-string v7, "Camera exit by INTENT_MSG_SECURITY"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a00f3

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 606
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_34

    .line 608
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_215
    const-string v6, "com.android.shoot.userchanged"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_224

    .line 609
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    goto/16 :goto_34

    .line 610
    :cond_224
    const-string v6, "com.android.shootshare.recvfile"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25d

    .line 611
    const-string v6, "filepath"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, filePath:Ljava/lang/String;
    const-string v6, "---------------------"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file path is -------------"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-eqz v1, :cond_34

    .line 614
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 615
    .local v5, timer:Ljava/util/Timer;
    new-instance v6, Lcom/sec/android/app/camera/Camera$2$1;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/camera/Camera$2$1;-><init>(Lcom/sec/android/app/camera/Camera$2;Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_34

    .line 626
    .end local v1           #filePath:Ljava/lang/String;
    .end local v5           #timer:Ljava/util/Timer;
    :cond_25d
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 627
    const-string v6, "Camera"

    const-string v7, "onReceive shutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v6

    if-eqz v6, :cond_34

    .line 630
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 631
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    goto/16 :goto_34
.end method
