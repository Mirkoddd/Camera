.class Lcom/sec/android/app/camera/AbstractCameraActivity$12;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1289
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1291
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1304
    :goto_a
    return-void

    .line 1293
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1294
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v0

    if-nez v0, :cond_34

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_a

    .line 1298
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v2, :cond_52

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v0

    if-nez v0, :cond_52

    .line 1300
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_a

    .line 1302
    :cond_52
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_a
.end method
