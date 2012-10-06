.class Lcom/sec/android/app/camera/gallery/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private final mContainer:Lcom/sec/android/app/camera/gallery/IImageList;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/gallery/IImageList;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .parameter "container"
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContainer:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 41
    iput-object p2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    iput-object p3, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    .line 43
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 56
    :try_start_0
    const-string v1, "file"

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 57
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 62
    :goto_19
    return-object v1

    .line 59
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_21} :catch_23

    move-result-object v1

    goto :goto_19

    .line 61
    :catch_23
    move-exception v0

    .line 62
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private getPFD()Landroid/os/ParcelFileDescriptor;
    .registers 6

    .prologue
    .line 69
    :try_start_0
    const-string v2, "file"

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 77
    .end local v1           #path:Ljava/lang/String;
    :goto_1f
    return-object v2

    .line 74
    :cond_20
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v2

    goto :goto_1f

    .line 76
    :catch_2b
    move-exception v0

    .line 77
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 5

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 132
    .local v0, input:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_8

    .line 133
    const/4 v1, 0x0

    .line 141
    :goto_7
    return-object v1

    .line 135
    :cond_8
    :try_start_8
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 136
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 137
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1f

    .line 141
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_7

    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1f
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method


# virtual methods
.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"

    .prologue
    .line 82
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/camera/gallery/UriImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZ)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"
    .parameter "rotateAsNeeded"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/gallery/UriImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"
    .parameter "rotateAsNeeded"
    .parameter "useNative"

    .prologue
    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 96
    .local v2, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-static {p1, p2, v2, p4}, Lcom/sec/android/app/camera/Util;->makeBitmap(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 101
    .end local v2           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_8
    return-object v0

    .line 99
    :catch_9
    move-exception v1

    .line 100
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "UriImage"

    const-string v4, "got exception decoding bitmap "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageId()J
    .registers 3

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContainer()Lcom/sec/android/app/camera/gallery/IImageList;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContainer:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTaken()J
    .registers 3

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 154
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_9

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 147
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_c
    return-object v1

    :cond_d
    const-string v1, ""

    goto :goto_c
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 159
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_9

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isDrm()Z
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/gallery/UriImage;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public rotateImageBy(I)Z
    .registers 3
    .parameter "degrees"

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "rotateAsNeeded"

    .prologue
    .line 126
    const/16 v0, 0x140

    const/high16 v1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/camera/gallery/UriImage;->fullSizeBitmap(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
