.class public Lcom/sec/android/app/camera/imageviewer/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "coalesce(date_modified , datetaken) DESC"

.field private static final IMAGE_ORIENTATION:I = 0x5

.field private static final MEDIA_DATA_TAKEN:I = 0x4

.field private static final MEDIA_ID_INDEX:I = 0x0

.field private static final MEDIA_MIME_TYPE_INDEX:I = 0x3

.field private static final MEDIA_PATH_INDEX:I = 0x1

.field private static final MEDIA_TITLE_INDEX:I = 0x2

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field private static final PROJECTION_IMAGES:[Ljava/lang/String; = null

.field private static final PROJECTION_VIDEOS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaList"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "contentResolver"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    return-void
.end method

.method public static getVideoThumbnail(Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "fd"
    .parameter "width"
    .parameter "height"
    .parameter "autoRotation"

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "autoRotation"

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "filename"
    .parameter "fd"
    .parameter "width"
    .parameter "height"
    .parameter "autoRotation"

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 302
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_32

    .line 303
    :try_start_8
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 307
    :goto_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p2, p3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 308
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 311
    .local v3, rotation:I
    packed-switch v3, :pswitch_data_68

    .line 323
    const/4 v3, 0x0

    .line 326
    :goto_1e
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    if-nez p4, :cond_2e

    if-eqz v3, :cond_2e

    .line 328
    rsub-int v4, v3, 0x168

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_2d} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_2d} :catch_51

    move-result-object v0

    .line 336
    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_4c

    .line 341
    .end local v3           #rotation:I
    :goto_31
    return-object v0

    .line 305
    :cond_32
    :try_start_32
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_35} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_51

    goto :goto_b

    .line 330
    :catch_36
    move-exception v1

    .line 331
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_5e

    .line 336
    :try_start_3a
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_31

    .line 337
    :catch_3e
    move-exception v1

    .line 338
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_31

    .line 313
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #rotation:I
    :pswitch_43
    const/16 v3, 0x5a

    .line 314
    goto :goto_1e

    .line 316
    :pswitch_46
    const/16 v3, 0xb4

    .line 317
    goto :goto_1e

    .line 319
    :pswitch_49
    const/16 v3, 0x10e

    .line 320
    goto :goto_1e

    .line 337
    :catch_4c
    move-exception v1

    .line 338
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_31

    .line 332
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .end local v3           #rotation:I
    :catch_51
    move-exception v1

    .line 333
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_52
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5e

    .line 336
    :try_start_55
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_31

    .line 337
    :catch_59
    move-exception v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_31

    .line 335
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_5e
    move-exception v4

    .line 336
    :try_start_5f
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_62} :catch_63

    .line 339
    :goto_62
    throw v4

    .line 337
    :catch_63
    move-exception v1

    .line 338
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_62

    .line 311
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_43
        :pswitch_46
        :pswitch_49
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    .line 202
    :cond_c
    return-void
.end method

.method public deleteFile(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 266
    :cond_11
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    #getter for: Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J
    invoke-static {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J

    move-result-wide v0

    .line 230
    :goto_18
    return-wide v0

    :cond_19
    const-wide/16 v0, -0x1

    goto :goto_18
.end method

.method public getImagePath(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 209
    const-string v0, "MediaList"

    const-string v1, "getImagePath"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->path:Ljava/lang/String;

    .line 214
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize()V

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 218
    const-string v0, "MediaList"

    const-string v1, "getMimeType"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    .line 223
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getOrientation(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->orientation:I

    .line 258
    :goto_16
    return v0

    :cond_17
    const/4 v0, -0x1

    goto :goto_16
.end method

.method public getTitle(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->title:Ljava/lang/String;

    .line 244
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getType(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 237
    :goto_1f
    return v0

    .line 235
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f

    .line 237
    :cond_22
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method public getUri(I)Landroid/net/Uri;
    .registers 5
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v2

    if-ne v2, v1, :cond_20

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->getUri(Z)Landroid/net/Uri;

    move-result-object v0

    .line 251
    :goto_1f
    return-object v0

    .line 249
    :cond_20
    const/4 v1, 0x0

    goto :goto_1b

    .line 251
    :cond_22
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getVideoThumbnail(III)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 277
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 279
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_a
    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 280
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 281
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_17} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_17} :catch_2e

    move-result-object v0

    .line 288
    :try_start_18
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 293
    :goto_1b
    return-object v0

    .line 289
    :catch_1c
    move-exception v1

    .line 290
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1b

    .line 282
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_21
    move-exception v1

    .line 283
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_3b

    .line 288
    :try_start_25
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_1b

    .line 289
    :catch_29
    move-exception v1

    .line 290
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1b

    .line 284
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_2e
    move-exception v1

    .line 285
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3b

    .line 288
    :try_start_32
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_1b

    .line 289
    :catch_36
    move-exception v1

    .line 290
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1b

    .line 287
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_3b
    move-exception v4

    .line 288
    :try_start_3c
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 291
    :goto_3f
    throw v4

    .line 289
    :catch_40
    move-exception v1

    .line 290
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3f
.end method

.method public initialize()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    .line 76
    return-void
.end method

.method public initialize(Z)V
    .registers 19
    .parameter "bIsSNS"

    .prologue
    .line 78
    const/4 v4, 0x0

    .line 80
    .local v4, where:Ljava/lang/String;
    const/4 v12, 0x0

    .line 82
    .local v12, cursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .local v16, listAdded:I
    :goto_4
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ge v0, v1, :cond_101

    .line 83
    if-nez v16, :cond_73

    .line 84
    if-eqz p1, :cond_10

    .line 82
    :cond_d
    :goto_d
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 87
    :cond_10
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%DCIM/Camera/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (mime_type in (?, ?))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video/mp4"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "video/3gpp"

    aput-object v2, v5, v1

    .line 97
    .local v5, acceptableVidFormat:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string v6, "coalesce(date_modified , datetaken) DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_5a} :catch_139
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_5a} :catch_67

    move-result-object v12

    .line 139
    .end local v5           #acceptableVidFormat:[Ljava/lang/String;
    :cond_5b
    :goto_5b
    if-eqz v12, :cond_d

    .line 141
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_e0

    .line 142
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_d

    .line 104
    :catch_67
    move-exception v13

    .line 105
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "MediaList"

    const-string v2, "Error in executing query"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_5b

    .line 108
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    :cond_73
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_5b

    .line 109
    if-eqz p1, :cond_c2

    .line 111
    :try_start_7a
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
    :try_end_96
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_96} :catch_136

    move-result-object v4

    .line 131
    :goto_97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (mime_type=\'image/jpeg\' OR mime_type=\'image/jpg\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string v1, "MediaList"

    const-string v2, "cursor query for sns"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "coalesce(date_modified , datetaken) DESC"

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_5b

    .line 121
    :cond_c2
    :try_start_c2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%DCIM/Camera/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_de
    .catch Ljava/lang/NullPointerException; {:try_start_c2 .. :try_end_de} :catch_133

    move-result-object v4

    goto :goto_97

    .line 146
    :cond_e0
    const/4 v1, -0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->move(I)Z

    .line 148
    const/4 v14, 0x0

    .local v14, i:I
    :goto_e5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 149
    new-instance v15, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;Landroid/database/Cursor;)V

    .line 150
    .local v15, item:Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v14, v14, 0x1

    goto :goto_e5

    .line 153
    .end local v15           #item:Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    :cond_fc
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 156
    .end local v14           #i:I
    :cond_101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 157
    const-string v1, "MediaList"

    const-string v2, "mList is Empty"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_112
    return-void

    .line 160
    :cond_113
    if-eqz p1, :cond_124

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/imageviewer/MediaList$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList$1;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_112

    .line 176
    :cond_124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/imageviewer/MediaList$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList$2;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_112

    .line 126
    :catch_133
    move-exception v1

    goto/16 :goto_97

    .line 116
    :catch_136
    move-exception v1

    goto/16 :goto_97

    .line 102
    :catch_139
    move-exception v1

    goto/16 :goto_5b
.end method
