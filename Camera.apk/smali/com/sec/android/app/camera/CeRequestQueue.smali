.class public Lcom/sec/android/app/camera/CeRequestQueue;
.super Ljava/lang/Object;
.source "CeRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CeRequestQueue$1;,
        Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
    }
.end annotation


# static fields
.field private static final ORIENTATION_CHANGE_DURATION:I = 0xc8

.field private static final START_FIRST_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CeRequestQueue"


# instance fields
.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sec/android/app/camera/CeRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .registers 4
    .parameter "cameraEngine"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;-><init>(Lcom/sec/android/app/camera/CeRequestQueue;Lcom/sec/android/app/camera/CeRequestQueue$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CameraEngine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CeRequestQueue;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->startFirstRequest()V

    return-void
.end method

.method private startFirstRequest()V
    .registers 3

    .prologue
    .line 121
    const-string v0, "CeRequestQueue"

    const-string v1, "startFirstRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->removeMessages(I)V

    .line 124
    :try_start_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-nez v0, :cond_16

    .line 132
    :goto_15
    return-void

    .line 128
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CeRequest;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCeState;->handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    :try_end_27
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_27} :catch_28

    goto :goto_15

    .line 129
    :catch_28
    move-exception v0

    goto :goto_15
.end method


# virtual methods
.method public addRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .registers 5
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    .line 102
    const-string v0, "CeRequestQueue"

    const-string v1, "addRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "CeRequestQueue"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->dumpQueue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v2, :cond_2f

    .line 109
    const-string v0, "CeRequestQueue"

    const-string v1, "sending START_FIRST_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_30

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->startFirstRequest()V

    .line 118
    :cond_2f
    :goto_2f
    return-void

    .line 115
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_2f
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    goto :goto_6

    .line 204
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 205
    return-void
.end method

.method public completeRequest()V
    .registers 7

    .prologue
    .line 135
    const-string v2, "CeRequestQueue"

    const-string v3, "completeRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :try_start_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CeRequest;

    .line 142
    .local v0, firstItem:Lcom/sec/android/app/camera/CeRequest;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_21
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_21} :catch_47

    .line 150
    .end local v0           #firstItem:Lcom/sec/android/app/camera/CeRequest;
    :cond_21
    :goto_21
    const-string v2, "CeRequestQueue"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->dumpQueue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLandscapeActive()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    :cond_3a
    :goto_3a
    return-void

    .line 157
    :cond_3b
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_3a

    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->startFirstRequest()V

    goto :goto_3a

    .line 146
    :catch_47
    move-exception v2

    goto :goto_21
.end method

.method public dumpQueue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 97
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public firstElement()Lcom/sec/android/app/camera/CeRequest;
    .registers 3

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_8} :catch_9

    .line 82
    :goto_8
    return-object v1

    .line 81
    :catch_9
    move-exception v0

    .line 82
    .local v0, e:Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isFirstRequest(I)Z
    .registers 6
    .parameter "requestId"

    .prologue
    const/4 v2, 0x0

    .line 266
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;

    .line 267
    .local v1, firstItem:Lcom/sec/android/app/camera/CeRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_c} :catch_11

    move-result v3

    if-ne v3, p1, :cond_10

    .line 268
    const/4 v2, 0x1

    .line 272
    .end local v1           #firstItem:Lcom/sec/android/app/camera/CeRequest;
    :cond_10
    :goto_10
    return v2

    .line 271
    :catch_11
    move-exception v0

    .line 272
    .local v0, e:Ljava/util/NoSuchElementException;
    goto :goto_10
.end method

.method public removeRequest(I)V
    .registers 3
    .parameter "request"

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 209
    return-void
.end method

.method public removeRequest(IZ)V
    .registers 13
    .parameter "request"
    .parameter "deleteFirst"

    .prologue
    const/4 v9, 0x1

    .line 212
    const-string v6, "CeRequestQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeRequest - deleteFirst:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deleteFirst:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v6, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    if-ge v6, v9, :cond_33

    .line 215
    const-string v6, "CeRequestQueue"

    const-string v7, "removeRequest queue empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_32
    :goto_32
    return-void

    .line 219
    :cond_33
    const/4 v1, 0x0

    .line 220
    .local v1, firstItemRemoved:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v3, itemsToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/CeRequest;>;"
    :try_start_39
    iget-object v6, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 224
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    const/4 v0, 0x0

    .line 226
    .local v0, firstItem:Lcom/sec/android/app/camera/CeRequest;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 227
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #firstItem:Lcom/sec/android/app/camera/CeRequest;
    check-cast v0, Lcom/sec/android/app/camera/CeRequest;

    .line 228
    .restart local v0       #firstItem:Lcom/sec/android/app/camera/CeRequest;
    if-eqz p2, :cond_5b

    .line 229
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v6

    if-ne v6, p1, :cond_5b

    .line 230
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 231
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v1, 0x1

    .line 237
    :cond_5b
    const/4 v2, 0x0

    .line 238
    .local v2, item:Lcom/sec/android/app/camera/CeRequest;
    :cond_5c
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 239
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/sec/android/app/camera/CeRequest;
    check-cast v2, Lcom/sec/android/app/camera/CeRequest;

    .line 240
    .restart local v2       #item:Lcom/sec/android/app/camera/CeRequest;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v6

    if-eqz v6, :cond_5c

    .line 245
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v6

    if-ne v6, p1, :cond_5c

    .line 246
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 247
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/util/NoSuchElementException; {:try_start_39 .. :try_end_7a} :catch_7b

    goto :goto_5c

    .line 255
    .end local v0           #firstItem:Lcom/sec/android/app/camera/CeRequest;
    .end local v2           #item:Lcom/sec/android/app/camera/CeRequest;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :catch_7b
    move-exception v6

    .line 259
    :cond_7c
    if-eqz v1, :cond_32

    .line 260
    iget-object v6, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_32

    .line 251
    .restart local v0       #firstItem:Lcom/sec/android/app/camera/CeRequest;
    .restart local v2       #item:Lcom/sec/android/app/camera/CeRequest;
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :cond_84
    :try_start_84
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 252
    .local v5, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :goto_88
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 253
    iget-object v6, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/util/NoSuchElementException; {:try_start_84 .. :try_end_97} :catch_7b

    goto :goto_88
.end method

.method public searchDuplicateRequest(I)Z
    .registers 7
    .parameter "requestId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 180
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    const/4 v1, 0x0

    .line 183
    .local v1, mCount:I
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-gt v2, v4, :cond_13

    move v2, v3

    .line 194
    :goto_12
    return v2

    .line 187
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/CeRequest;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v2

    if-ne v2, p1, :cond_13

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    const/4 v2, 0x2

    if-lt v1, v2, :cond_13

    move v2, v4

    .line 191
    goto :goto_12

    :cond_2c
    move v2, v3

    .line 194
    goto :goto_12
.end method

.method public searchRequest(I)Z
    .registers 6
    .parameter "requestId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ge v1, v3, :cond_12

    move v1, v2

    .line 174
    :goto_11
    return v1

    .line 169
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v1

    if-ne v1, p1, :cond_12

    move v1, v3

    .line 171
    goto :goto_11

    :cond_26
    move v1, v2

    .line 174
    goto :goto_11
.end method
