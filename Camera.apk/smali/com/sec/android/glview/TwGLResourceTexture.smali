.class public Lcom/sec/android/glview/TwGLResourceTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLResourceTexture.java"


# instance fields
.field private mResId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .registers 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 60
    iput p6, p0, Lcom/sec/android/glview/TwGLResourceTexture;->mResId:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .registers 5
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "resId"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    iput p4, p0, Lcom/sec/android/glview/TwGLResourceTexture;->mResId:I

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 68
    return-void
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLResourceTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/glview/TwGLResourceTexture;->mResId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
