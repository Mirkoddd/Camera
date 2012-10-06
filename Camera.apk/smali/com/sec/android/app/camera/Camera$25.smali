.class Lcom/sec/android/app/camera/Camera$25;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 5484
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$25;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5489
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$25;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->dismissDialog(I)V

    .line 5490
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$25;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 5491
    return-void
.end method
