.class Lcom/sec/android/app/camera/ImageManager$EmptyImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyImageList"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 418
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/ImageManager$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 420
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    .registers 3
    .parameter "i"

    .prologue
    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;
    .registers 3
    .parameter "uri"

    .prologue
    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I
    .registers 3
    .parameter "image"

    .prologue
    .line 451
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .registers 3
    .parameter "image"

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)Z
    .registers 3
    .parameter "i"

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method
