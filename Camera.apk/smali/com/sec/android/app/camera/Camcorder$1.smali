.class Lcom/sec/android/app/camera/Camcorder$1;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1100(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 223
    :goto_8
    return-void

    .line 216
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    goto :goto_8

    .line 218
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1200(Lcom/sec/android/app/camera/Camcorder;)V

    goto :goto_8

    .line 216
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
