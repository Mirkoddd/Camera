.class Lcom/sec/android/app/camera/Camera$22;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5386
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$22;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$22;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5391
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$22;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v8, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    if-ne v7, v8, :cond_30

    .line 5392
    const/4 v2, 0x0

    .line 5393
    .local v2, fOut:Ljava/io/FileOutputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5394
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-static {v7, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5395
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/File;

    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5397
    .local v4, file:Ljava/io/File;
    :try_start_1b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_70

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 5402
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :goto_21
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5404
    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_81
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_75

    .line 5409
    if-eqz v2, :cond_30

    .line 5411
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_8d

    .line 5419
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_30
    :goto_30
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$22;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v8, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v8, v7, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 5421
    :try_start_36
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$22;->val$et:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5422
    .local v6, str_name:Ljava/lang/String;
    if-eqz v6, :cond_48

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4a

    :cond_48
    if-nez v6, :cond_57

    .line 5423
    :cond_4a
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$22;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0130

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5426
    :cond_57
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$22;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$22;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v6}, Lcom/sec/android/app/camera/Camera;->produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_64} :catch_88

    .line 5432
    .end local v6           #str_name:Ljava/lang/String;
    :goto_64
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$22;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 5433
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$22;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 5434
    return-void

    .line 5398
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_70
    move-exception v1

    .line 5400
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_21

    .line 5405
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_75
    move-exception v1

    .line 5407
    .local v1, e:Ljava/io/IOException;
    :try_start_76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_81

    .line 5409
    if-eqz v2, :cond_30

    .line 5411
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_30

    .line 5412
    :catch_7f
    move-exception v7

    goto :goto_30

    .line 5409
    .end local v1           #e:Ljava/io/IOException;
    :catchall_81
    move-exception v7

    if-eqz v2, :cond_87

    .line 5411
    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_8f

    .line 5414
    :cond_87
    :goto_87
    throw v7

    .line 5427
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_88
    move-exception v1

    .line 5429
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_64

    .line 5412
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_8d
    move-exception v7

    goto :goto_30

    :catch_8f
    move-exception v8

    goto :goto_87
.end method
