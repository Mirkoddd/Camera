.class Lcom/sec/android/app/camera/AbstractCameraActivity$24;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$24;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1597
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x4

    if-eq p2, v0, :cond_11

    const/16 v0, 0x52

    if-eq p2, v0, :cond_11

    const/16 v0, 0x17

    if-ne p2, v0, :cond_18

    .line 1599
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$24;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 1600
    const/4 v0, 0x1

    .line 1605
    :goto_17
    return v0

    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$24;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17
.end method
