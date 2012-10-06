.class Lcom/sec/android/app/camera/Camera$9;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
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
    .line 4454
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .registers 6
    .parameter "step"

    .prologue
    .line 4457
    sparse-switch p1, :sswitch_data_98

    .line 4491
    :cond_3
    :goto_3
    return-void

    .line 4459
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4460
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4461
    .local v0, orientation:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4463
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4464
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4466
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_3

    .line 4476
    .end local v0           #orientation:I
    :sswitch_65
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4477
    const-string v1, "Camera"

    const-string v2, "TYS startPostCaptureAnimation ANI_FINISH ===> mPostCaptureImage != null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_87

    .line 4480
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4486
    :cond_87
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4487
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$9;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$3402(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;

    goto/16 :goto_3

    .line 4457
    :sswitch_data_98
    .sparse-switch
        0x2 -> :sswitch_4
        0xffff -> :sswitch_65
    .end sparse-switch
.end method
