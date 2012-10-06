.class Lcom/sec/android/app/camera/Camcorder$8;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
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
    .line 2922
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$8;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2924
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x4

    if-eq p2, v1, :cond_12

    const/16 v1, 0x52

    if-eq p2, v1, :cond_12

    const/16 v1, 0x17

    if-ne p2, v1, :cond_17

    .line 2926
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$8;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-boolean v0, v1, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 2933
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$8;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method
