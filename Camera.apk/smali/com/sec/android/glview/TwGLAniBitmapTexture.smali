.class public Lcom/sec/android/glview/TwGLAniBitmapTexture;
.super Lcom/sec/android/glview/TwGLAniTexture;
.source "TwGLAniBitmapTexture.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V
    .registers 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "bitmap"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLAniTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 55
    iput-object p6, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V
    .registers 5
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "bitmap"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLAniTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 39
    iput-object p4, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method


# virtual methods
.method protected loadBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
