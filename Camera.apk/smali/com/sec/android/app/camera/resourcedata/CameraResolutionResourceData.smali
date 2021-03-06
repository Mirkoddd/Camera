.class public Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "CameraResolutionResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraResolutionResourceData"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mCommandIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 10
    .parameter "activityContext"

    .prologue
    const/4 v7, 0x4

    .line 87
    const v4, 0x7f0a0099

    invoke-direct {p0, v7, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->initCommandIdList()V

    .line 93
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    .local v1, commandId:I
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 95
    .local v3, resIDs:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v3, :cond_3f

    .line 96
    const-string v4, "CameraResolutionResourceData"

    const-string v5, "Cannot find resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 100
    :cond_3f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v4, v5

    const/4 v5, 0x3

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v4, v5

    aput v1, v4, v7

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 102
    .local v0, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 104
    .end local v0           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v1           #commandId:I
    .end local v3           #resIDs:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_63
    return-void
.end method

.method private initCommandIdList()V
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x8fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x8fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x902

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x903

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x908

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x907

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/CameraResolutionResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    return-void
.end method
