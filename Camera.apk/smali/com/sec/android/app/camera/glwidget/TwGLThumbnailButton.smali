.class public Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLThumbnailButton"

.field private static final THUMBNAIL_BUTTON_HEIGHT:I = 0x4b

.field private static final THUMBNAIL_BUTTON_WIDTH:I = 0x50

.field private static final THUMBNAIL_HEIGHT:I = 0x40

.field private static final THUMBNAIL_POS_X:I = 0x8

.field private static final THUMBNAIL_POS_Y:I = 0x5

.field private static final THUMBNAIL_WIDTH:I = 0x42


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mFrameButton:Lcom/sec/android/glview/TwGLButton;

.field private mIdxNewThumbnail:I

.field private mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

.field private mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

.field private mUpdateCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZZ)V
    .registers 12
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "camera"
    .parameter "attachMode"

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v4, 0x42a0

    const/high16 v5, 0x4296

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 63
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 73
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmpty()V

    .line 76
    if-nez p5, :cond_37

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :cond_37
    return-void
.end method

.method private update(Landroid/graphics/Bitmap;IZZ)V
    .registers 18
    .parameter "data"
    .parameter "orientation"
    .parameter "bSetOrientation"
    .parameter "bAnimation"

    .prologue
    .line 220
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_45

    .line 221
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v8, v1, 0x2

    .line 223
    .local v8, IdxCurrThumbnail:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v8

    if-eqz v1, :cond_45

    .line 224
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x4284

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 225
    .local v9, transCurrAnimation:Landroid/view/animation/TranslateAnimation;
    const/16 v1, 0x42

    const/16 v2, 0x40

    const/16 v3, 0x42

    const/16 v4, 0x40

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 226
    const-wide/16 v1, 0x96

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 227
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v8

    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 234
    .end local v8           #IdxCurrThumbnail:I
    .end local v9           #transCurrAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_45
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_6c

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_5c

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 237
    :cond_5c
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 240
    :cond_6c
    const/16 v1, 0x42

    const/16 v2, 0x40

    invoke-static {p1, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 241
    .local v7, croppedBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_8f

    .line 242
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x4284

    const/high16 v6, 0x4280

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v1, v11, v12

    .line 244
    :cond_8f
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    if-nez v1, :cond_98

    .line 272
    :goto_97
    return-void

    .line 247
    :cond_98
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_a6

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 250
    :cond_a6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 254
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_101

    .line 255
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3d7c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v10, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 256
    .local v10, transNewAnimation:Landroid/view/animation/TranslateAnimation;
    const/16 v1, 0x42

    const/16 v2, 0x40

    const/16 v3, 0x42

    const/16 v4, 0x40

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 257
    const-wide/16 v1, 0x96

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 258
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 264
    .end local v10           #transNewAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_101
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_110

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 267
    :cond_110
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f02015b

    const v3, 0x7f02015d

    const v4, 0x7f02015b

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto/16 :goto_97
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_c

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 84
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 86
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_1d

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 90
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_28

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 92
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 95
    :cond_28
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 96
    return-void
.end method

.method public holdLockButton(Z)V
    .registers 5
    .parameter "lock"

    .prologue
    .line 277
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v0, v1, 0x2

    .line 279
    .local v0, IdxCurrThumbnail:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    if-nez v1, :cond_d

    .line 287
    :goto_c
    return-void

    .line 282
    :cond_d
    if-eqz p1, :cond_17

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAlpha(F)V

    goto :goto_c

    .line 285
    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAlpha(F)V

    goto :goto_c
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v0, :cond_9

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)V

    .line 293
    :cond_9
    return-void
.end method

.method public removeUptateMessage()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_f

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    :cond_f
    return-void
.end method

.method public update()V
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    .line 116
    return-void
.end method

.method public update(Landroid/graphics/Bitmap;IZ)V
    .registers 8
    .parameter "data"
    .parameter "orientation"
    .parameter "bAnimation"

    .prologue
    const/4 v3, 0x1

    .line 197
    div-int/lit8 v1, p2, 0xa

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v1, 0x5a

    .line 198
    .local v0, defaultOrientation:I
    const-string v1, "GT-I9103"

    const-string v2, "GT-I9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "SGH-I927"

    const-string v2, "GT-I9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 200
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    if-nez p2, :cond_3e

    :cond_28
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0xa

    if-ne v1, v2, :cond_36

    if-nez p2, :cond_3e

    :cond_36
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-ne v1, v3, :cond_42

    .line 204
    :cond_3e
    invoke-direct {p0, p1, v0, v3, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 212
    :goto_41
    return-void

    .line 206
    :cond_42
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    goto :goto_41

    .line 210
    :cond_47
    invoke-direct {p0, p1, v0, v3, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    goto :goto_41
.end method

.method public update(Ljava/lang/String;Z)V
    .registers 8
    .parameter "filename"
    .parameter "bAnimation"

    .prologue
    const/4 v4, 0x0

    .line 215
    const/16 v1, 0x42

    const/16 v2, 0x40

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, data:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v4, v4, p2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 217
    return-void
.end method

.method public declared-synchronized update(Z)V
    .registers 15
    .parameter "bIsSNS"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17c

    if-nez v0, :cond_7

    .line 194
    :goto_5
    monitor-exit p0

    return-void

    .line 122
    :cond_7
    const/4 v10, 0x1

    .line 124
    .local v10, noThumbnail:Z
    :try_start_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_27

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 130
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_46

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 136
    :cond_46
    new-instance v0, Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_17f

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 144
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const/16 v0, 0x42

    const/16 v1, 0x40

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 150
    .local v6, croppedBitmap:Landroid/graphics/Bitmap;
    :goto_85
    if-eqz p1, :cond_aa

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    if-eqz v0, :cond_aa

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mReceiveImagePath:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    .line 154
    const/16 v0, 0x42

    const/16 v1, 0x40

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 158
    :cond_aa
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4284

    const/high16 v5, 0x4280

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v11, v12

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_e0

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v9, v0, 0x5a

    .line 161
    .local v9, defaultOrientation:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 165
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #defaultOrientation:I
    :cond_e0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_15c

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 170
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e99999a

    const/high16 v1, 0x3f80

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 171
    .local v7, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    .line 172
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 180
    const/4 v10, 0x0

    .line 182
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 185
    .end local v7           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_15c
    if-nez v10, :cond_194

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02015b

    const v2, 0x7f02015d

    const v3, 0x7f02015b

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 190
    :goto_16d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;
    :try_end_17a
    .catchall {:try_start_8 .. :try_end_17a} :catchall_17c

    goto/16 :goto_5

    .line 119
    .end local v10           #noThumbnail:Z
    :catchall_17c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    .restart local v10       #noThumbnail:Z
    :cond_17f
    :try_start_17f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    const/16 v2, 0x3a

    const/16 v3, 0x3b

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 148
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    const/16 v0, 0x42

    const/16 v1, 0x40

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6       #croppedBitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_85

    .line 188
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02015c

    const v2, 0x7f02015d

    const v3, 0x7f02015c

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V
    :try_end_1a3
    .catchall {:try_start_17f .. :try_end_1a3} :catchall_17c

    goto :goto_16d
.end method

.method public updateEmpty()V
    .registers 10

    .prologue
    const v8, 0x7f02015c

    const/4 v6, 0x0

    .line 99
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x4100

    const/high16 v3, 0x40a0

    const/high16 v4, 0x4284

    const/high16 v5, 0x4280

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const v4, 0x7f020194

    invoke-direct {v2, v3, v6, v6, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v5, 0x7f02015d

    const/4 v7, 0x0

    move v2, v6

    move v3, v6

    move v4, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 112
    return-void
.end method
