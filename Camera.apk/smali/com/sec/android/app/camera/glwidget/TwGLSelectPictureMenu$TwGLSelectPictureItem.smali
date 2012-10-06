.class Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLSelectPictureMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TwGLSelectPictureItem"
.end annotation


# static fields
.field public static final CHECKBOX_TYPE:I = 0x4

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

.field public static final LIST_TYPE:I = 0x0

.field private static final LIST_TYPE_BUTTON_HEIGHT:I = 0x60

.field private static final POS_CANCEL:I = 0x2

.field private static final ROTATE_ANIMATION_DURATION:I = 0x1f4

.field private static final SEPARATOR_HEIGHT:I = 0x2

.field private static final SEPARATOR_POS_X:I = 0x0

.field public static final SETTINGS_TYPE:I = 0x3

.field private static final SETTING_TYPE_BUTTON_HEIGHT:I = 0x60

.field private static final SETTING_TYPE_BUTTON_WIDTH:I = 0x2ee

.field private static final SETTING_TYPE_TEXT_POS_X:I = 0x55

.field private static final SETTING_TYPE_TEXT_POS_Y:I = 0x0

.field private static final SETTING_TYPE_TEXT_WIDTH:I = 0x260

.field public static final SIDEBUTTON_TYPE:I = 0x2

.field private static final TEXT_FONT_SIZE:I = 0x23

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDim:Z

.field private mLock:Z

.field private mPosition:I

.field private mPreviousType:I

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mZOrder:I

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;Lcom/sec/android/app/camera/AbstractCameraActivity;III)V
    .registers 18
    .parameter
    .parameter "activityContext"
    .parameter "width"
    .parameter "height"
    .parameter "position"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    .line 281
    invoke-virtual {p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 261
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mZOrder:I

    .line 272
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mCurrentType:I

    .line 273
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPreviousType:I

    .line 275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mDim:Z

    .line 276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mLock:Z

    .line 282
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    .line 283
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 284
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_4e

    .line 285
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p3

    move/from16 v0, p4

    int-to-float v6, v0

    const v7, 0x7f020190

    const v8, 0x7f020190

    const v9, 0x7f020190

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$600()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 291
    :goto_47
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->initContents()V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setContentType()V

    .line 293
    return-void

    .line 288
    :cond_4e
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p3

    move/from16 v0, p4

    int-to-float v6, v0

    const v7, 0x7f020194

    const v8, 0x7f020194

    const v9, 0x7f020194

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$600()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_47
.end method

.method private clearContent()V
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_11

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 315
    :cond_11
    return-void
.end method

.method private initContents()V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    .line 319
    .local v4, width:F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    .line 320
    .local v5, height:F
    const-string v0, "initContents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " width , height ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_66

    .line 322
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    if-nez v0, :cond_7c

    .line 323
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0115

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 329
    :goto_53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 333
    :cond_66
    new-instance v6, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/high16 v11, 0x4000

    const v12, 0x7f02017b

    move v8, v2

    move v9, v2

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 334
    return-void

    .line 324
    :cond_7c
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    if-ne v0, v7, :cond_9c

    .line 325
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0116

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    goto :goto_53

    .line 327
    :cond_9c
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const-string v6, ""

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    goto :goto_53
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->clearContent()V

    .line 306
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 307
    return-void
.end method

.method public getContentType()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mCurrentType:I

    return v0
.end method

.method public getScrollHint()Z
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .registers 8
    .parameter "view"

    .prologue
    const/16 v5, 0x7d4

    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 403
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    if-nez v1, :cond_41

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 430
    .end local v0           #intent:Landroid/content/Intent;
    :goto_40
    return-void

    .line 415
    :cond_41
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mPosition:I

    if-ne v1, v3, :cond_7e

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_40

    .line 428
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7e
    const/16 v1, 0x38

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_40
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 6
    .parameter "gl"

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->getRotatable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 375
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 376
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_c

    .line 379
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_24
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 381
    :cond_27
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .registers 2
    .parameter "anchor"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 297
    return-void
.end method

.method public setBGImageVisibility(Z)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 366
    return-void
.end method

.method public setContentType()V
    .registers 7

    .prologue
    const/high16 v5, 0x42c0

    const/high16 v4, 0x42aa

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setRotatable(Z)V

    .line 340
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setCenterPivot(Z)V

    .line 341
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setRotateAnimation(Z)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x4418

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x443b8000

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const v1, 0x443b8000

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/high16 v1, 0x42bc

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 363
    return-void
.end method

.method public setZOrder(I)V
    .registers 2
    .parameter "zOrder"

    .prologue
    .line 300
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->mZOrder:I

    .line 301
    return-void
.end method
