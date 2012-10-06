.class public Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SnSSettingMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnsMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mRes:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I

.field private mSns:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V
    .registers 7
    .parameter "context"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"
    .parameter "commandid"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 47
    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSlideDirection:I

    .line 56
    iput-object p2, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 57
    iput-object p3, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 58
    iput-object p4, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mRes:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 59
    iput-object p1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 61
    sparse-switch p5, :sswitch_data_28

    .line 80
    :goto_11
    return-void

    .line 63
    :sswitch_12
    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_11

    .line 66
    :sswitch_15
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_11

    .line 69
    :sswitch_19
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_11

    .line 72
    :sswitch_1e
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_11

    .line 75
    :sswitch_23
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_11

    .line 61
    :sswitch_data_28
    .sparse-switch
        0x38 -> :sswitch_19
        0x3a -> :sswitch_1e
        0x3b -> :sswitch_23
        0xfa0 -> :sswitch_12
        0xfa1 -> :sswitch_15
    .end sparse-switch
.end method


# virtual methods
.method public execute()V
    .registers 4

    .prologue
    .line 84
    const-string v0, "SnsMenuSelectCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - enter - mSns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_24

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 88
    :cond_24
    iget v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_30

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 106
    :cond_30
    iget v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3c

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 121
    :cond_3c
    const-string v0, "SnsMenuSelectCommand--execute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZOrder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
