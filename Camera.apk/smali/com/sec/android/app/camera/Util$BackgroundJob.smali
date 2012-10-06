.class Lcom/sec/android/app/camera/Util$BackgroundJob;
.super Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/sec/android/app/camera/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .registers 6
    .parameter "activity"
    .parameter "job"
    .parameter "dialog"
    .parameter "handler"

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 397
    new-instance v0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Util$BackgroundJob$1;-><init>(Lcom/sec/android/app/camera/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 407
    iput-object p1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mActivity:Lcom/sec/android/app/camera/MonitoredActivity;

    .line 408
    iput-object p3, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 409
    iput-object p2, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mActivity:Lcom/sec/android/app/camera/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MonitoredActivity;->addLifeCycleListener(Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;)V

    .line 411
    iput-object p4, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Util$BackgroundJob;)Lcom/sec/android/app/camera/MonitoredActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mActivity:Lcom/sec/android/app/camera/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public onActivityStarted(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 438
    return-void
.end method

.method public onActivityStopped(Lcom/sec/android/app/camera/MonitoredActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 433
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void

    .line 418
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
