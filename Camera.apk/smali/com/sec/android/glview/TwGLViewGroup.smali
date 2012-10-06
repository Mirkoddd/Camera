.class public Lcom/sec/android/glview/TwGLViewGroup;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLViewGroup.java"


# instance fields
.field protected mGLViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/glview/TwGLView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .registers 3
    .parameter "glContext"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .registers 5
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .registers 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    .line 78
    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 339
    if-nez p1, :cond_8

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 343
    :cond_8
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 344
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 345
    :try_start_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 347
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdate()V

    .line 348
    return-void

    .line 346
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 111
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 112
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 113
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_9

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .line 115
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 116
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    .line 117
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 118
    return-void
.end method

.method public contains(FF)Z
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-nez v3, :cond_6

    .line 136
    :goto_5
    return v2

    .line 130
    :cond_6
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 131
    :try_start_9
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 132
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 133
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_5

    .line 135
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    goto :goto_5
.end method

.method public dumpViewHierarchy(I)V
    .registers 9
    .parameter "level"

    .prologue
    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, p1, :cond_10

    .line 435
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 437
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_e4

    .line 438
    const-string v4, "DUMP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Clip(Manual:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_c6
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 443
    :try_start_c9
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_145

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 444
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->dumpViewHierarchy(I)V

    goto :goto_cf

    .line 446
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_e1
    move-exception v4

    monitor-exit v5
    :try_end_e3
    .catchall {:try_start_c9 .. :try_end_e3} :catchall_e1

    throw v4

    .line 440
    :cond_e4
    const-string v4, "DUMP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 446
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_145
    :try_start_145
    monitor-exit v5
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_e1

    .line 447
    return-void
.end method

.method public findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, resultView:Lcom/sec/android/glview/TwGLView;
    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-nez v5, :cond_8

    move-object p0, v4

    .line 400
    .end local p0
    :cond_7
    :goto_7
    return-object p0

    .line 380
    .restart local p0
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_10

    move-object p0, v4

    .line 381
    goto :goto_7

    .line 383
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getBypassTouch()Z

    move-result v5

    if-eqz v5, :cond_18

    move-object p0, v4

    .line 384
    goto :goto_7

    .line 386
    :cond_18
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 387
    :try_start_1b
    iget-object v6, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 388
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3, p1, p2}, Lcom/sec/android/glview/TwGLView;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 389
    .local v2, v:Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_21

    .line 390
    move-object v1, v2

    goto :goto_21

    .line 392
    .end local v2           #v:Lcom/sec/android/glview/TwGLView;
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_35
    monitor-exit v5

    .line 394
    if-eqz v1, :cond_3d

    move-object p0, v1

    .line 395
    goto :goto_7

    .line 392
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_3a

    throw v4

    .line 397
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_7

    move-object p0, v4

    .line 400
    goto :goto_7
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .registers 7
    .parameter "id"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTag()I

    move-result v3

    if-ne v3, p1, :cond_7

    .line 160
    .end local p0
    :goto_6
    return-object p0

    .line 149
    .restart local p0
    :cond_7
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 150
    :try_start_a
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 151
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    if-ne v3, p1, :cond_10

    .line 152
    monitor-exit v4

    move-object p0, v2

    goto :goto_6

    .line 154
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_25
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 155
    .restart local v2       #view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 156
    .local v1, v:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_2b

    .line 157
    monitor-exit v4

    move-object p0, v1

    goto :goto_6

    .line 159
    .end local v1           #v:Lcom/sec/android/glview/TwGLView;
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_40
    monitor-exit v4

    .line 160
    const/4 p0, 0x0

    goto :goto_6

    .line 159
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_43

    throw v3
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 7
    .parameter "gl"

    .prologue
    .line 257
    const/4 v1, 0x1

    .line 258
    .local v1, ret:Z
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 259
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 260
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 261
    const/4 v1, 0x0

    goto :goto_a

    .line 264
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_29

    .line 265
    if-eqz v1, :cond_28

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v3, :cond_28

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initSize()V

    .line 269
    :cond_28
    return v1

    .line 264
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v3
.end method

.method public getSize()I
    .registers 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 87
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 88
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getView(I)Lcom/sec/android/glview/TwGLView;
    .registers 4
    .parameter "index"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 100
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public initSize()V
    .registers 8

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v2

    .line 171
    .local v2, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v0

    .line 173
    .local v0, bottom:F
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 174
    :try_start_b
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 175
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, v2

    if-lez v4, :cond_34

    .line 176
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v4, v6

    .line 177
    :cond_34
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, v0

    if-lez v4, :cond_11

    .line 178
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v4, v6

    goto :goto_11

    .line 180
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_63

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getSizeSpecified()Z

    move-result v4

    if-nez v4, :cond_62

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 183
    :cond_62
    return-void

    .line 180
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_63
    move-exception v4

    :try_start_64
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v4
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 7
    .parameter "gl"

    .prologue
    .line 279
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 280
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 281
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 282
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_31

    .line 283
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 284
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 285
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v4}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 286
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 287
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 280
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 290
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_34
    monitor-exit v3

    .line 291
    return-void

    .line 290
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v2
.end method

.method protected onLayoutUpdate()V
    .registers 5

    .prologue
    .line 310
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 311
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 312
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdate()V

    goto :goto_9

    .line 314
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 315
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 7
    .parameter "gl"

    .prologue
    .line 235
    const/4 v1, 0x1

    .line 236
    .local v1, ret:Z
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 237
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 238
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 239
    const/4 v1, 0x0

    goto :goto_a

    .line 242
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_29

    .line 243
    if-eqz v1, :cond_28

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v3, :cond_28

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initSize()V

    .line 247
    :cond_28
    return v1

    .line 242
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v3
.end method

.method protected onOrientationChanged(I)V
    .registers 6
    .parameter "orientation"

    .prologue
    .line 324
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 325
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 326
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    goto :goto_9

    .line 328
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 329
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    .line 330
    return-void
.end method

.method protected onOutOfScreen()V
    .registers 4

    .prologue
    .line 295
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v2

    .line 296
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 297
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 299
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 300
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    .line 301
    return-void

    .line 299
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public onReset()V
    .registers 5

    .prologue
    .line 425
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 426
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 427
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_9

    .line 429
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 430
    return-void
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 357
    if-nez p1, :cond_3

    .line 366
    :goto_2
    return-void

    .line 360
    :cond_3
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 361
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 362
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 363
    .local v1, v:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_14

    .line 365
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #v:Lcom/sec/android/glview/TwGLView;
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v2

    :cond_27
    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    goto :goto_2
.end method

.method public resetSize()V
    .registers 8

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v2

    .line 190
    .local v2, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v0

    .line 191
    .local v0, bottom:F
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 192
    :try_start_b
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 193
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, v2

    if-lez v4, :cond_34

    .line 194
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v4, v6

    .line 195
    :cond_34
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, v0

    if-lez v4, :cond_11

    .line 196
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v4, v6

    goto :goto_11

    .line 198
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_60

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->refreshClipRect()V

    .line 201
    return-void

    .line 198
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_60
    move-exception v4

    :try_start_61
    monitor-exit v5
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v4
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .registers 6
    .parameter "l"

    .prologue
    .line 410
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 411
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 412
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    goto :goto_9

    .line 414
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 415
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 416
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .registers 10
    .parameter "paddings"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 211
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 212
    :try_start_6
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 213
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    .local v0, childPaddings:Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4d

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_4d

    .line 215
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 216
    :cond_4d
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_79

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_79

    .line 217
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getRight()F

    move-result v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 218
    :cond_79
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_a5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_a5

    .line 219
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 220
    :cond_a5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_d1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_d1

    .line 221
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getBottom()F

    move-result v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 223
    :cond_d1
    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_c

    .line 225
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_d6
    move-exception v3

    monitor-exit v4
    :try_end_d8
    .catchall {:try_start_6 .. :try_end_d8} :catchall_d6

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_d9
    :try_start_d9
    monitor-exit v4
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d6

    .line 226
    return-void
.end method
