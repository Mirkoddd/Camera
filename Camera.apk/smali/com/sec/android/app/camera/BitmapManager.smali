.class public Lcom/sec/android/app/camera/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/BitmapManager$1;,
        Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;,
        Lcom/sec/android/app/camera/BitmapManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/sec/android/app/camera/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/BitmapManager;->sManager:Lcom/sec/android/app/camera/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 67
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    .registers 4
    .parameter "t"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    .line 74
    .local v0, status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    if-nez v0, :cond_16

    .line 75
    new-instance v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    .end local v0           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;-><init>(Lcom/sec/android/app/camera/BitmapManager$1;)V

    .line 76
    .restart local v0       #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 78
    :cond_16
    monitor-exit p0

    return-object v0

    .line 73
    .end local v0           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/sec/android/app/camera/BitmapManager;
    .registers 2

    .prologue
    .line 126
    const-class v1, Lcom/sec/android/app/camera/BitmapManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/camera/BitmapManager;->sManager:Lcom/sec/android/app/camera/BitmapManager;

    if-nez v0, :cond_e

    .line 127
    new-instance v0, Lcom/sec/android/app/camera/BitmapManager;

    invoke-direct {v0}, Lcom/sec/android/app/camera/BitmapManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/BitmapManager;->sManager:Lcom/sec/android/app/camera/BitmapManager;

    .line 129
    :cond_e
    sget-object v0, Lcom/sec/android/app/camera/BitmapManager;->sManager:Lcom/sec/android/app/camera/BitmapManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .registers 4
    .parameter "t"
    .parameter "options"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/BitmapManager$State;->ALLOW:Lcom/sec/android/app/camera/BitmapManager$State;

    iput-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .registers 6
    .parameter "t"

    .prologue
    const/4 v0, 0x1

    .line 100
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    .line 101
    .local v1, status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    if-nez v1, :cond_e

    .line 107
    :goto_c
    monitor-exit p0

    return v0

    .line 106
    :cond_e
    :try_start_e
    iget-object v2, v1, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;

    sget-object v3, Lcom/sec/android/app/camera/BitmapManager$State;->CANCEL:Lcom/sec/android/app/camera/BitmapManager$State;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    if-eq v2, v3, :cond_15

    .line 107
    .local v0, result:Z
    :goto_14
    goto :goto_c

    .line 106
    .end local v0           #result:Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_14

    .line 100
    .end local v1           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 116
    .local v0, status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    sget-object v1, Lcom/sec/android/app/camera/BitmapManager$State;->CANCEL:Lcom/sec/android/app/camera/BitmapManager$State;

    iput-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;

    .line 117
    iget-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_12

    .line 118
    iget-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 122
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 123
    monitor-exit p0

    return-void

    .line 115
    .end local v0           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "fd"
    .parameter "options"

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_6

    .line 151
    :goto_5
    return-object v0

    .line 141
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 142
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 143
    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 147
    :cond_2f
    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/camera/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 148
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    goto :goto_5
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    .line 92
    .local v0, status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 93
    monitor-exit p0

    return-void

    .line 91
    .end local v0           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
