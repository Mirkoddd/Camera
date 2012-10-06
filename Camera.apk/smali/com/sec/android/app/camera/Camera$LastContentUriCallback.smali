.class Lcom/sec/android/app/camera/Camera$LastContentUriCallback;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastContentUriCallback"
.end annotation


# instance fields
.field private mKeyValue:Ljava/lang/String;

.field private mRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3758
    .local p3, rectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3759
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    .line 3760
    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    .line 3761
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 18

    .prologue
    .line 3764
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    if-nez v1, :cond_12

    .line 3765
    const-string v1, "Camera"

    const-string v2, "onCompleted: mCameraEnine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    :cond_11
    :goto_11
    return-void

    .line 3768
    :cond_12
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera getLastContentUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 3772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 3774
    const-string v1, "quickview"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "reviewon"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "blinkdetection"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 3775
    :cond_7c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    if-eqz v1, :cond_ba

    .line 3776
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 3777
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3779
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3780
    const-string v1, "blink-rect"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3782
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v12, v2}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_11

    .line 3802
    .end local v12           #intent:Landroid/content/Intent;
    :cond_ba
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 3806
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_16d

    .line 3808
    const-string v1, "com.arcsoft.quickview"

    const-string v2, "com.arcsoft.quickview.QuickViewActivity"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3809
    const-string v1, "isSNS"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%ShareShot/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3813
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "_id DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3816
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_11

    .line 3817
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_11

    .line 3819
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3820
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3821
    .local v11, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3822
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3835
    .end local v4           #where:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #id:Ljava/lang/String;
    :goto_149
    const-string v1, "android.intent.extra.fullScreen"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3836
    const-string v1, "android.intent.extra.showActionIcons"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3837
    const-string v1, "com.sec.android.app.camera.ReviewMode"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3840
    :try_start_15b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v12}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_162
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15b .. :try_end_162} :catch_198

    .line 3849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_11

    .line 3828
    :cond_16d
    const-string v1, "com.arcsoft.quickview"

    const-string v2, "com.arcsoft.quickview.QuickViewActivity"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3829
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_192

    .line 3830
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_149

    .line 3832
    :cond_192
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_149

    .line 3841
    :catch_198
    move-exception v9

    .line 3842
    .local v9, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "Camera"

    const-string v2, "Activity not found or not started properly"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 3844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_11

    .line 3851
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    .end local v12           #intent:Landroid/content/Intent;
    :cond_1ad
    const-string v1, "from_app"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    if-eqz v1, :cond_1ce

    .line 3853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3855
    :cond_1ce
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 3856
    .local v15, newExtras:Landroid/os/Bundle;
    const-string v1, "fromApp"

    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1fa

    .line 3859
    const-string v1, "circle"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e0

    .line 3860
    const-string v1, "circleCrop"

    const-string v2, "true"

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    :cond_1fa
    :goto_1fa
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    if-eqz v1, :cond_209

    .line 3874
    const-string v1, "blink-rect"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3877
    :cond_209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2900(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_33c

    .line 3878
    const-string v1, "output"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2900(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3879
    const/16 v16, 0x0

    .line 3881
    .local v16, outputStream:Ljava/io/OutputStream;
    :try_start_222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2900(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v16

    .line 3883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v13

    .line 3884
    .local v13, lastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    if-eqz v13, :cond_251

    .line 3885
    invoke-virtual {v13}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v14

    .line 3887
    .local v14, lastCaptureRawData:[B
    if-eqz v14, :cond_251

    .line 3888
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v1, v14}, Lcom/sec/android/app/camera/Camera;->access$3002(Lcom/sec/android/app/camera/Camera;[B)[B

    .line 3891
    .end local v14           #lastCaptureRawData:[B
    :cond_251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3000(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v1

    if-eqz v1, :cond_268

    .line 3892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3000(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3895
    :cond_268
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_26b
    .catchall {:try_start_222 .. :try_end_26b} :catchall_337
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_26b} :catch_331

    .line 3899
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3907
    .end local v13           #lastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    .end local v16           #outputStream:Ljava/io/OutputStream;
    :goto_26e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2a6

    .line 3908
    const-string v1, "latitude"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v15, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3909
    const-string v1, "longitude"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v15, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3911
    :cond_2a6
    const-string v1, "takenTime"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastDateTaken()J

    move-result-wide v2

    invoke-virtual {v15, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3913
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 3914
    .local v7, cropIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3917
    invoke-virtual {v7, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_11

    .line 3861
    .end local v7           #cropIntent:Landroid/content/Intent;
    :cond_2e0
    const-string v1, "true"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 3862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 3863
    .restart local v12       #intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 3865
    .local v10, extras:Landroid/os/Bundle;
    const-string v1, "rectCrop"

    const-string v2, "true"

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3866
    const-string v1, "aspectX"

    const-string v2, "aspectX"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3867
    const-string v1, "aspectY"

    const-string v2, "aspectY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3868
    const-string v1, "outputX"

    const-string v2, "outputX"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3869
    const-string v1, "outputY"

    const-string v2, "outputY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1fa

    .line 3896
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    :catch_331
    move-exception v1

    .line 3899
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_26e

    :catchall_337
    move-exception v1

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 3901
    .end local v16           #outputStream:Ljava/io/OutputStream;
    :cond_33c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mReturnUri:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_34e

    .line 3902
    const-string v1, "return-uri"

    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_26e

    .line 3904
    :cond_34e
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_26e
.end method
