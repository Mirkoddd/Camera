.class Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/imageviewer/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItem"
.end annotation


# instance fields
.field public dataTaken:J

.field private id:J

.field public mimeType:Ljava/lang/String;

.field public orientation:I

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/imageviewer/MediaList;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/imageviewer/MediaList;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 362
    iput-object p1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->this$0:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J

    .line 364
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->path:Ljava/lang/String;

    .line 365
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->title:Ljava/lang/String;

    .line 366
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    .line 367
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->dataTaken:J

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_3a

    .line 369
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->orientation:I

    .line 372
    :goto_39
    return-void

    .line 371
    :cond_3a
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->orientation:I

    goto :goto_39
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J

    return-wide v0
.end method


# virtual methods
.method public getUri(Z)Landroid/net/Uri;
    .registers 5
    .parameter "isVideo"

    .prologue
    .line 375
    if-eqz p1, :cond_b

    .line 376
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 379
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a
.end method
