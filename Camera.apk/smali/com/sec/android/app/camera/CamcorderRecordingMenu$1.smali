.class Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;
.super Landroid/os/Handler;
.source "CamcorderRecordingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderRecordingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stepSecond()V

    .line 105
    :cond_a
    return-void
.end method
