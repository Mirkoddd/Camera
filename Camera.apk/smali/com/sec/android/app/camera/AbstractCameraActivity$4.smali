.class Lcom/sec/android/app/camera/AbstractCameraActivity$4;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;
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
    .line 434
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-nez v0, :cond_b

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->inflateWaitingView()V

    .line 439
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_18

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 442
    :cond_18
    return-void
.end method
