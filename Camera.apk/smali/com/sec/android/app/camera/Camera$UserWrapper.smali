.class public Lcom/sec/android/app/camera/Camera$UserWrapper;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserWrapper"
.end annotation


# instance fields
.field private mInit:Z

.field public mTimeout:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .registers 3
    .parameter

    .prologue
    .line 5192
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    .line 5191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mInit:Z

    .line 5193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 5194
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    if-nez v0, :cond_21

    .line 5195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    .line 5196
    :cond_21
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5197
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    .line 5191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mInit:Z

    .line 5198
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 5199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mInit:Z

    .line 5200
    return-void
.end method

.method private compareListComponent(Ljava/util/List;Ljava/util/List;)Z
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, one:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    .local p2, two:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 5299
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 5309
    :cond_5
    :goto_5
    return v3

    .line 5301
    :cond_6
    const/4 v0, 0x1

    .line 5302
    .local v0, b:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 5303
    .local v2, u2:Lcom/samsung/shareshot/User;
    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/camera/Camera$UserWrapper;->contain(Lcom/samsung/shareshot/User;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_b

    .line 5309
    .end local v2           #u2:Lcom/samsung/shareshot/User;
    :cond_1e
    const/4 v3, 0x1

    goto :goto_5
.end method

.method private contain(Lcom/samsung/shareshot/User;Ljava/util/List;)Z
    .registers 7
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/shareshot/User;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5313
    .local p2, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    if-eqz p2, :cond_3e

    .line 5314
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 5315
    .local v1, u:Lcom/samsung/shareshot/User;
    invoke-virtual {v1, p1}, Lcom/samsung/shareshot/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5316
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v3

    if-ne v2, v3, :cond_6

    .line 5317
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5318
    const/4 v2, 0x1

    .line 5323
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #u:Lcom/samsung/shareshot/User;
    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3d
.end method


# virtual methods
.method public changeUser(Lcom/samsung/shareshot/User;)V
    .registers 7
    .parameter "user"

    .prologue
    .line 5269
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v2, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v3

    .line 5270
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    .line 5271
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 5272
    .local v1, u:Lcom/samsung/shareshot/User;
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5273
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5274
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5275
    const-string v2, "@"

    const-string v4, " user changed so refresh view"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5276
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    sget v4, Lcom/sec/android/app/camera/Camera;->REFESH_VIEW_COMMAND:I

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5277
    monitor-exit v3

    .line 5282
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #u:Lcom/samsung/shareshot/User;
    :goto_54
    return-void

    .line 5281
    :cond_55
    monitor-exit v3

    goto :goto_54

    :catchall_57
    move-exception v2

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_57

    throw v2
.end method

.method public destory()V
    .registers 4

    .prologue
    .line 5203
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v1, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v2

    .line 5204
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 5206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mInit:Z

    .line 5207
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v1, :cond_18

    .line 5208
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_29

    .line 5218
    :goto_17
    return-void

    .line 5210
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v1

    if-nez v1, :cond_27

    .line 5211
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2c

    .line 5217
    :cond_27
    :goto_27
    :try_start_27
    monitor-exit v2

    goto :goto_17

    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v1

    .line 5213
    :catch_2c
    move-exception v0

    .line 5215
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_29

    goto :goto_27
.end method

.method public getUserCount()I
    .registers 3

    .prologue
    .line 5221
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v1

    .line 5222
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 5223
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    .line 5226
    :goto_10
    return v0

    .line 5225
    :cond_11
    monitor-exit v1

    .line 5226
    const/4 v0, -0x1

    goto :goto_10

    .line 5225
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getUserFromList(I)Lcom/samsung/shareshot/User;
    .registers 7
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 5230
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v3

    .line 5231
    :try_start_6
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1d

    if-eqz v4, :cond_1a

    .line 5233
    :try_start_a
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_12} :catch_16

    .line 5234
    .local v1, user:Lcom/samsung/shareshot/User;
    if-eqz v1, :cond_1a

    .line 5235
    :try_start_14
    monitor-exit v3

    .line 5241
    .end local v1           #user:Lcom/samsung/shareshot/User;
    :goto_15
    return-object v1

    .line 5236
    :catch_16
    move-exception v0

    .line 5237
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    monitor-exit v3

    move-object v1, v2

    goto :goto_15

    .line 5240
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1a
    monitor-exit v3

    move-object v1, v2

    .line 5241
    goto :goto_15

    .line 5240
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .registers 8
    .parameter "mac"

    .prologue
    .line 5327
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v4, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v5

    .line 5328
    const/4 v3, 0x0

    .line 5329
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 5330
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_7
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 5331
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 5332
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 5334
    if-eqz v2, :cond_d

    .line 5335
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5336
    monitor-exit v5

    move-object v4, v3

    .line 5340
    :goto_2d
    return-object v4

    .line 5339
    :cond_2e
    monitor-exit v5

    .line 5340
    const/4 v4, 0x0

    goto :goto_2d

    .line 5339
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v4
.end method

.method public selectUser(Lcom/samsung/shareshot/User;Z)V
    .registers 6
    .parameter "user"
    .parameter "act"

    .prologue
    .line 5285
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v1, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v2

    .line 5286
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v1, :cond_24

    .line 5287
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 5288
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 5289
    .local v0, i:I
    if-eqz p2, :cond_26

    .line 5290
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onSelected()V

    .line 5295
    .end local v0           #i:I
    :cond_24
    :goto_24
    monitor-exit v2

    .line 5296
    return-void

    .line 5292
    .restart local v0       #i:I
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onUnSelected()V

    goto :goto_24

    .line 5295
    .end local v0           #i:I
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public setUserList(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5246
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mInit:Z

    if-nez v2, :cond_7

    .line 5247
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mInit:Z

    .line 5248
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-nez v2, :cond_12

    .line 5249
    const-string v2, "@"

    const-string v3, " mUserList is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5250
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 5251
    .local v1, user:Lcom/samsung/shareshot/User;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 5253
    .end local v1           #user:Lcom/samsung/shareshot/User;
    :cond_38
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v2, :cond_71

    .line 5254
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v2, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v3

    .line 5255
    :try_start_41
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_55

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/camera/Camera$UserWrapper;->compareListComponent(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 5256
    :cond_55
    const-string v2, "@"

    const-string v4, " mUserlsit != list so refresh view"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5258
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 5259
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    sget v4, Lcom/sec/android/app/camera/Camera;->REFESH_VIEW_COMMAND:I

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5261
    :cond_6c
    monitor-exit v3

    .line 5266
    :goto_6d
    return-void

    .line 5261
    :catchall_6e
    move-exception v2

    monitor-exit v3
    :try_end_70
    .catchall {:try_start_41 .. :try_end_70} :catchall_6e

    throw v2

    .line 5263
    :cond_71
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 5264
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$UserWrapper;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    sget v3, Lcom/sec/android/app/camera/Camera;->REFESH_VIEW_COMMAND:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6d
.end method
