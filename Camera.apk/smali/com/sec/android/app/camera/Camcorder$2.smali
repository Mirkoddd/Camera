.class Lcom/sec/android/app/camera/Camcorder$2;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, action:Ljava/lang/String;
    const-string v4, "Camcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1100(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 273
    const-string v4, "Camcorder"

    const-string v5, "onReceive - camcorder is destroying"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_34
    :goto_34
    return-void

    .line 276
    :cond_35
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 287
    :cond_4d
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, mIsSettingsMMC:Z
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 304
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    if-ne v4, v7, :cond_73

    .line 305
    const/4 v2, 0x1

    .line 313
    :cond_66
    :goto_66
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4, v8, v7}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 314
    if-eqz v2, :cond_34

    .line 315
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_34

    .line 307
    :cond_73
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 308
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    .line 309
    :cond_84
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v4

    if-eqz v4, :cond_66

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v4, :cond_66

    .line 310
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto :goto_66

    .line 316
    .end local v2           #mIsSettingsMMC:Z
    :cond_9c
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 317
    const v4, 0x7f0a00e9

    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f0a00e1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, str:Ljava/lang/String;
    invoke-static {p1, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 320
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_34

    .line 322
    .end local v3           #str:Ljava/lang/String;
    :cond_c4
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 323
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    goto/16 :goto_34

    .line 324
    :cond_d7
    const-string v4, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 325
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    goto/16 :goto_34

    .line 326
    :cond_e6
    const-string v4, "com.android.music.musicservicecommand"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 327
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handleMusicServiceCommand(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/sec/android/app/camera/Camcorder;->access$1600(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_34

    .line 328
    :cond_f5
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 329
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/sec/android/app/camera/Camcorder;->access$1700(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_34

    .line 330
    :cond_104
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_134

    .line 332
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1800(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v4

    sget v5, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v4, v5, :cond_122

    .line 333
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 334
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery()V

    goto/16 :goto_34

    .line 336
    :cond_122
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-boolean v4, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v4, :cond_34

    .line 338
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 339
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v4, v8}, Lcom/sec/android/app/camera/Camcorder;->access$1900(Lcom/sec/android/app/camera/Camcorder;Z)V

    goto/16 :goto_34

    .line 342
    :cond_134
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b9

    .line 343
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1800(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget v5, v5, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_19c

    .line 345
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1800(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v4

    sget v5, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v4, v5, :cond_175

    .line 346
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 347
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_16e

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 348
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 350
    :cond_16e
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery()V

    goto/16 :goto_34

    .line 352
    :cond_175
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_191

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_191

    .line 354
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 356
    :cond_191
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-object v9, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 358
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v4, v8}, Lcom/sec/android/app/camera/Camcorder;->access$1900(Lcom/sec/android/app/camera/Camcorder;Z)V

    goto/16 :goto_34

    .line 361
    :cond_19c
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1b3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 362
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 364
    :cond_1b3
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-object v9, v4, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_34

    .line 366
    :cond_1b9
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    .line 367
    const-string v4, "Camcorder"

    const-string v5, "INTENT_MSG_SECURITY"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 370
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 371
    const-string v4, "Camcorder"

    const-string v5, "Camcorder exit by INTENT_MSG_SECURITY"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const v5, 0x7f0a00f3

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 374
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_34

    .line 376
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_1f6
    const-string v4, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 377
    const-string v4, "Camcorder"

    const-string v5, "onReceive shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    if-eqz v4, :cond_222

    .line 380
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v4

    if-eqz v4, :cond_222

    .line 381
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 386
    :cond_222
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 387
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_34

    .line 388
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v4

    if-ge v4, v7, :cond_252

    .line 389
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    goto/16 :goto_34

    .line 391
    :cond_252
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/camera/Camcorder;->access$2002(Lcom/sec/android/app/camera/Camcorder;Z)Z

    .line 392
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto/16 :goto_34
.end method
