.class Lcom/sec/android/glview/TwGLView$1;
.super Ljava/lang/Object;
.source "TwGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLView;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLView;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 307
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 308
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 309
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F
    invoke-static {v2}, Lcom/sec/android/glview/TwGLView;->access$100(Lcom/sec/android/glview/TwGLView;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F
    invoke-static {v3}, Lcom/sec/android/glview/TwGLView;->access$200(Lcom/sec/android/glview/TwGLView;)F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragStart(FF)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mDragVibration:Z
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$300(Lcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 312
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$1;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 313
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 316
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_45
    return-void
.end method
