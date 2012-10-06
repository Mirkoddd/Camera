.class public Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwGLList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwGLListGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLList;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLList;)V
    .registers 2
    .parameter

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v2, 0x42c8

    .line 1296
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    #getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 1297
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    div-float v1, p4, v2

    #setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$202(Lcom/sec/android/glview/TwGLList;F)F

    .line 1299
    :cond_14
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    #getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 1300
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    div-float v1, p3, v2

    #setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$302(Lcom/sec/android/glview/TwGLList;F)F

    .line 1303
    :cond_26
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x4120

    .line 1274
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    .line 1275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    .line 1288
    :goto_13
    return v0

    .line 1279
    :cond_14
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    #getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v1}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_35

    .line 1280
    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    .line 1281
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    mul-float v1, p4, v6

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    #setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$202(Lcom/sec/android/glview/TwGLList;F)F

    .line 1283
    :cond_35
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    #getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    .line 1284
    if-eqz p1, :cond_57

    if-eqz p2, :cond_57

    .line 1285
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    mul-float v1, p3, v6

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    #setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$302(Lcom/sec/android/glview/TwGLList;F)F

    .line 1287
    :cond_57
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_13
.end method
