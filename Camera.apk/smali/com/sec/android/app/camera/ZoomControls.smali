.class public Lcom/sec/android/app/camera/ZoomControls;
.super Landroid/widget/LinearLayout;
.source "ZoomControls.java"


# instance fields
.field private final mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

.field private final mZoomOut:Lcom/sec/android/app/camera/ZoomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/ZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ZoomControls;->setFocusable(Z)V

    .line 46
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030018

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    const v1, 0x7f080065

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ZoomButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    .line 52
    const v1, 0x7f080066

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ZoomButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    .line 53
    return-void
.end method

.method private fade(IFF)V
    .registers 4
    .parameter "visibility"
    .parameter "startAlpha"
    .parameter "endAlpha"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ZoomControls;->setVisibility(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public getIsZoomInEnabled()Z
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getIsZoomOutEnabled()Z
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hide()V
    .registers 4

    .prologue
    .line 86
    const/16 v0, 0x8

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ZoomControls;->fade(IFF)V

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public setIsZoomInEnabled(Z)V
    .registers 3
    .parameter "isEnabled"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomButton;->setEnabled(Z)V

    .line 98
    return-void
.end method

.method public setIsZoomOutEnabled(Z)V
    .registers 3
    .parameter "isEnabled"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomButton;->setEnabled(Z)V

    .line 102
    return-void
.end method

.method public setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public setZoomSpeed(J)V
    .registers 4
    .parameter "speed"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/ZoomButton;->setZoomSpeed(J)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/ZoomButton;->setZoomSpeed(J)V

    .line 70
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ZoomControls;->fade(IFF)V

    .line 83
    return-void
.end method
