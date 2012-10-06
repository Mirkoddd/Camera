.class public Lcom/sec/android/app/camera/CropImage;
.super Lcom/sec/android/app/camera/MonitoredActivity;
.source "CropImage.java"


# static fields
.field private static final LAND_BUTTON_HEIGHT:I = 0x52

.field private static final PORT_BUTTON_HEIGHT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field private mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field private mAspectX:I

.field private mAspectY:I

.field public mAttachVideo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field mBlinkRect:Lcom/sec/android/app/camera/HighlightView;

.field public mBlinkRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/sec/android/app/camera/HighlightView;

.field private mDateTaken:J

.field private mDiscard:Landroid/widget/LinearLayout;

.field public mFromApp:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Lcom/sec/android/app/camera/gallery/IImage;

.field private mImageView:Lcom/sec/android/app/camera/CropImageView;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLatitude:D

.field private mLongitude:D

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field public mRectCrop:Z

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSave:Landroid/widget/LinearLayout;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field private mSetWallpaper:Z

.field mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/MonitoredActivity;-><init>()V

    .line 78
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 80
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    .line 88
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    .line 110
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 601
    new-instance v0, Lcom/sec/android/app/camera/CropImage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CropImage$7;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CropImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CropImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CropImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    return v0
.end method

.method private onSaveClicked()V
    .registers 22

    .prologue
    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 339
    .local v16, myExtras:Landroid/os/Bundle;
    if-eqz v16, :cond_36

    const-string v1, "attach-video"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 340
    const-string v1, "CropImage"

    const-string v3, "Attach = Video"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 374
    :cond_2f
    :goto_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_12b

    .line 469
    :cond_35
    :goto_35
    return-void

    .line 344
    :cond_36
    if-eqz v16, :cond_7e

    const-string v1, "return-uri"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_7e

    .line 345
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v13, extras:Landroid/os/Bundle;
    const-string v1, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_2f

    .line 351
    .end local v13           #extras:Landroid/os/Bundle;
    :cond_7e
    if-eqz v16, :cond_c8

    const-string v1, "return-data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_c8

    .line 352
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = data"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 354
    .restart local v13       #extras:Landroid/os/Bundle;
    const-string v1, "bitmap-data"

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_2f

    .line 358
    .end local v13           #extras:Landroid/os/Bundle;
    :cond_c8
    if-eqz v16, :cond_113

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_113

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_113

    .line 359
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = specified uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 361
    .restart local v13       #extras:Landroid/os/Bundle;
    const-string v1, "specify-data"

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    const-string v1, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_2f

    .line 366
    .end local v13           #extras:Landroid/os/Bundle;
    :cond_113
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_2f

    .line 367
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_2f

    .line 378
    :cond_12b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    if-nez v1, :cond_35

    .line 380
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    .line 386
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    if-eqz v1, :cond_1f1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    if-eqz v1, :cond_1f1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    if-nez v1, :cond_1f1

    .line 389
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 391
    .local v2, croppedImage:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 393
    .local v9, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 394
    .local v19, srcRect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    invoke-direct {v10, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 396
    .local v10, dstRect:Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v11, v1, 0x2

    .line 397
    .local v11, dx:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v12, v1, 0x2

    .line 400
    .local v12, dy:I
    const/4 v1, 0x0

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 403
    const/4 v1, 0x0

    neg-int v3, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    neg-int v4, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 448
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v19           #srcRect:Landroid/graphics/Rect;
    :cond_1b0
    :goto_1b0
    if-eqz v16, :cond_290

    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_1c6

    const-string v1, "return-data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_290

    .line 449
    :cond_1c6
    const-string v1, "CropImage"

    const-string v3, "Crop = yes, Return = data"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 451
    .restart local v13       #extras:Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 452
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_35

    .line 408
    .end local v2           #croppedImage:Landroid/graphics/Bitmap;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v10           #dstRect:Landroid/graphics/Rect;
    .end local v13           #extras:Landroid/os/Bundle;
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v18

    .line 410
    .local v18, r:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 411
    .local v20, width:I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 415
    .local v14, height:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_28c

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_209
    move/from16 v0, v20

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 420
    .restart local v2       #croppedImage:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 421
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-direct {v10, v1, v3, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 422
    .restart local v10       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 424
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_262

    .line 430
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v8, c:Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 432
    .local v17, p:Landroid/graphics/Path;
    move/from16 v0, v20

    int-to-float v1, v0

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 434
    const-string v1, "CropImage"

    const-string v3, "clippath"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 437
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 441
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v17           #p:Landroid/graphics/Path;
    :cond_262
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    if-eqz v1, :cond_1b0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    if-eqz v1, :cond_1b0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    if-eqz v1, :cond_1b0

    .line 442
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/camera/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1b0

    .line 415
    .end local v2           #croppedImage:Landroid/graphics/Bitmap;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v10           #dstRect:Landroid/graphics/Rect;
    :cond_28c
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_209

    .line 456
    .end local v14           #height:I
    .end local v18           #r:Landroid/graphics/Rect;
    .end local v20           #width:I
    .restart local v2       #croppedImage:Landroid/graphics/Bitmap;
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    .restart local v10       #dstRect:Landroid/graphics/Rect;
    :cond_290
    const-string v1, "CropImage"

    const-string v3, "Crop = yes, Return = specified uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object v7, v2

    .line 458
    .local v7, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    if-eqz v1, :cond_2bc

    const v15, 0x7f0a00ef

    .line 461
    .local v15, msdId:I
    :goto_2a1
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/CropImage$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/sec/android/app/camera/CropImage$5;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_35

    .line 458
    .end local v15           #msdId:I
    :cond_2bc
    const v15, 0x7f0a000c

    goto :goto_2a1
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .registers 26
    .parameter "croppedImage"

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_b6

    .line 473
    const/16 v22, 0x0

    .line 475
    .local v22, outputStream:Ljava/io/OutputStream;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v22

    .line 476
    if-eqz v22, :cond_23

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_23} :catch_8d

    .line 483
    :cond_23
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 485
    :goto_26
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v18, extras:Landroid/os/Bundle;
    const-string v2, "takenTime"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mDateTaken:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 487
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_60

    .line 488
    :cond_4a
    const-string v2, "latitude"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 489
    const-string v2, "longitude"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 491
    :cond_60
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 553
    .end local v18           #extras:Landroid/os/Bundle;
    .end local v22           #outputStream:Ljava/io/OutputStream;
    :cond_79
    :goto_79
    move-object/from16 v12, p1

    .line 554
    .local v12, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/camera/CropImage$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/sec/android/app/camera/CropImage$6;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 562
    return-void

    .line 479
    .end local v12           #b:Landroid/graphics/Bitmap;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    :catch_8d
    move-exception v16

    .line 481
    .local v16, ex:Ljava/io/IOException;
    :try_start_8e
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_8e .. :try_end_ac} :catchall_b1

    .line 483
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_26

    .end local v16           #ex:Ljava/io/IOException;
    :catchall_b1
    move-exception v2

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 493
    .end local v22           #outputStream:Ljava/io/OutputStream;
    :cond_b6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    if-eqz v2, :cond_db

    .line 495
    :try_start_bc
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 496
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_cb} :catch_cc

    goto :goto_79

    .line 497
    :catch_cc
    move-exception v15

    .line 498
    .local v15, e:Ljava/io/IOException;
    const-string v2, "CropImage"

    const-string v3, "Failed to set wallpaper."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    goto :goto_79

    .line 502
    .end local v15           #e:Ljava/io/IOException;
    :cond_db
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 503
    .restart local v18       #extras:Landroid/os/Bundle;
    const-string v2, "rect"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v21, oldPath:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v14, directory:Ljava/io/File;
    const/16 v23, 0x0

    .line 509
    .local v23, x:I
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    .line 510
    .local v19, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2e

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 512
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v13, candidate:Ljava/lang/StringBuilder;
    :cond_125
    add-int/lit8 v23, v23, 0x1

    .line 517
    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v2, "/"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v2, "-"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    const-string v2, ".jpg"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    new-instance v2, Ljava/io/File;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    .line 524
    .local v17, exists:Z
    if-nez v17, :cond_125

    .line 530
    const/4 v2, 0x1

    :try_start_157
    new-array v11, v2, [I

    .line 531
    .local v11, degree:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v11}, Lcom/sec/android/app/camera/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v20

    .line 541
    .local v20, newUri:Landroid/net/Uri;
    if-eqz v20, :cond_79

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 542
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_1bb} :catch_1bd

    goto/16 :goto_79

    .line 546
    .end local v11           #degree:[I
    .end local v20           #newUri:Landroid/net/Uri;
    :catch_1bd
    move-exception v16

    .line 549
    .local v16, ex:Ljava/lang/Exception;
    const-string v2, "CropImage"

    const-string v3, "store image fail, continue anyway"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_79
.end method

.method private setButtonLayout(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 268
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    .local v0, lparms:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 274
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 275
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 280
    :goto_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    return-void

    .line 277
    :cond_1f
    const/16 v1, 0x52

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_14
.end method

.method private startFaceDetection()V
    .registers 5

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    :goto_6
    return-void

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CropImage$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CropImage$4;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_6
.end method


# virtual methods
.method public getBlinkRectCnt()I
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 293
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "icicle"

    .prologue
    const v13, 0x7f080030

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 121
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 124
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CropImage;->requestWindowFeature(I)Z

    .line 125
    const v8, 0x7f030008

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->setContentView(I)V

    .line 127
    const v8, 0x7f08002f

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/CropImageView;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    .line 128
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/sec/android/app/camera/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 130
    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->showStorageToast(Landroid/app/Activity;)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 133
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 135
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_c9

    .line 136
    const-string v8, "circleCrop"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11c

    .line 137
    iput-boolean v10, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    .line 138
    iput v10, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    .line 139
    iput v10, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    .line 144
    :cond_43
    :goto_43
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 145
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v8, :cond_128

    .line 146
    const-string v8, "outputFormat"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, outputFormatString:Ljava/lang/String;
    if-eqz v5, :cond_5f

    .line 148
    invoke-static {v5}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 154
    .end local v5           #outputFormatString:Ljava/lang/String;
    :cond_5f
    :goto_5f
    const-string v8, "data"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    const-string v8, "aspectX"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    .line 156
    const-string v8, "aspectY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    .line 157
    const-string v8, "outputX"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    .line 158
    const-string v8, "outputY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    .line 159
    const-string v8, "scale"

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    .line 160
    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    .line 165
    const-string v8, "attach-video"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    .line 166
    const-string v8, "fromApp"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    .line 167
    const-string v8, "blink-rect"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    .line 169
    const-string v8, "latitude"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    .line 170
    const-string v8, "longitude"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    .line 171
    const-string v8, "takenTime"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mDateTaken:J

    .line 174
    :cond_c9
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_f0

    .line 175
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 176
    .local v6, target:Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v6, v10}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 177
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v8, v6}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    .line 178
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-eqz v8, :cond_f0

    .line 185
    :try_start_e5
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    const/4 v9, -0x1

    const/high16 v10, 0x10

    invoke-interface {v8, v9, v10}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f0} :catch_132

    .line 193
    .end local v6           #target:Landroid/net/Uri;
    :cond_f0
    :goto_f0
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_114

    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v8, :cond_114

    .line 196
    :try_start_f8
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 197
    .local v7, videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/16 v9, 0x500

    const/16 v10, 0x3c0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 198
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_114
    .catch Ljava/io/FileNotFoundException; {:try_start_f8 .. :try_end_114} :catch_14f
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_114} :catch_15a

    .line 207
    .end local v7           #videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_114
    :goto_114
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_163

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 265
    :goto_11b
    return-void

    .line 140
    :cond_11c
    const-string v8, "rectCrop"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_43

    .line 141
    iput-boolean v10, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    goto/16 :goto_43

    .line 152
    :cond_128
    const-string v8, "setWallpaper"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    goto/16 :goto_5f

    .line 186
    .restart local v6       #target:Landroid/net/Uri;
    :catch_132
    move-exception v2

    .line 187
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "CropImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open Thumbnail : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_f0

    .line 199
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v6           #target:Landroid/net/Uri;
    :catch_14f
    move-exception v2

    .line 201
    .local v2, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CropImage"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    .line 202
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_15a
    move-exception v1

    .line 203
    .local v1, e:Ljava/io/IOException;
    const-string v8, "CropImage"

    const-string v9, "Fail to close fd"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_114

    .line 213
    .end local v1           #e:Ljava/io/IOException;
    :cond_163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 215
    const v8, 0x7f080033

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/LinearLayout;

    .line 216
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/sec/android/app/camera/CropImage$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CropImage$1;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v8, 0x7f080032

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/LinearLayout;

    .line 226
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/sec/android/app/camera/CropImage$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CropImage$2;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    const v9, 0x7f080031

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CropImageView;->setButtonsLayout(Landroid/view/View;)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/CropImage;->setButtonLayout(Landroid/content/res/Configuration;)V

    .line 235
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->startFaceDetection()V

    .line 237
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    if-eqz v8, :cond_1c7

    .line 238
    invoke-virtual {p0, v13}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 239
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    new-instance v8, Lcom/sec/android/app/camera/CropImage$3;

    invoke-direct {v8, p0, v4}, Lcom/sec/android/app/camera/CropImage$3;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/content/Intent;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_11b

    .line 253
    .end local v0           #button:Landroid/widget/Button;
    :cond_1c7
    invoke-virtual {p0, v13}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 254
    .restart local v0       #button:Landroid/widget/Button;
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_11b
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 584
    const-string v0, "CropImage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_10

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 591
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    if-eqz v0, :cond_19

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImageView;->clear()V

    .line 594
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 598
    :cond_22
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onDestroy()V

    .line 599
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 577
    const-string v0, "CropImage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onPause()V

    .line 580
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 566
    const-string v0, "CropImage"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_10

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 572
    :cond_10
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onResume()V

    .line 573
    return-void
.end method
