.class Lcom/sec/android/app/camera/CropImageView;
.super Lcom/sec/android/app/camera/ImageViewTouchBase;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CropImageView$1;,
        Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;
    }
.end annotation


# instance fields
.field private mButtonHandler:Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;

.field private mButtonsAni:[Landroid/view/animation/Animation;

.field private mButtonsLayout:Landroid/view/View;

.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

.field private mTouchPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 874
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 847
    iput-object v1, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CropImageView;->mTouchPressed:Z

    .line 1121
    new-instance v0, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;-><init>(Lcom/sec/android/app/camera/CropImageView;Lcom/sec/android/app/camera/CropImageView$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mButtonHandler:Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;

    .line 875
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CropImageView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mButtonsLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CropImageView;)[Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mButtonsAni:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/CropImageView;[Landroid/view/animation/Animation;)[Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 845
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImageView;->mButtonsAni:[Landroid/view/animation/Animation;

    return-object p1
.end method

.method private centerBasedOnHighlightView(Lcom/sec/android/app/camera/HighlightView;)V
    .registers 15
    .parameter "hv"

    .prologue
    .line 1079
    iget-object v1, p1, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1081
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 1082
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 1084
    .local v2, height:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 1085
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 1087
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 1088
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 1090
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1091
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 1092
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1094
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6f

    .line 1095
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 1097
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1098
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/sec/android/app/camera/CropImageView;->zoomTo(FFFF)V

    .line 1101
    .end local v0           #coordinates:[F
    :cond_6f
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImageView;->ensureVisible(Lcom/sec/android/app/camera/HighlightView;)V

    .line 1102
    return-void
.end method

.method private ensureVisible(Lcom/sec/android/app/camera/HighlightView;)V
    .registers 12
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 1051
    iget-object v6, p1, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1053
    .local v6, r:Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/app/camera/CropImageView;->mLeft:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1054
    .local v1, panDeltaX1:I
    iget v7, p0, Lcom/sec/android/app/camera/CropImageView;->mRight:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1056
    .local v2, panDeltaX2:I
    iget v7, p0, Lcom/sec/android/app/camera/CropImageView;->mTop:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1057
    .local v4, panDeltaY1:I
    iget v7, p0, Lcom/sec/android/app/camera/CropImageView;->mBottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1059
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_4d

    move v0, v1

    .line 1060
    .local v0, panDeltaX:I
    :goto_2a
    if-eqz v4, :cond_4f

    move v3, v4

    .line 1065
    .local v3, panDeltaY:I
    :goto_2d
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_38

    .line 1066
    const/4 v0, 0x0

    .line 1068
    :cond_38
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_43

    .line 1069
    const/4 v3, 0x0

    .line 1071
    :cond_43
    if-nez v0, :cond_47

    if-eqz v3, :cond_4c

    .line 1072
    :cond_47
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/camera/CropImageView;->panBy(FF)V

    .line 1074
    :cond_4c
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_4d
    move v0, v2

    .line 1059
    goto :goto_2a

    .restart local v0       #panDeltaX:I
    :cond_4f
    move v3, v5

    .line 1060
    goto :goto_2d
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 917
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 918
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/HighlightView;

    .line 919
    .local v1, hv:Lcom/sec/android/app/camera/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/HighlightView;->setFocus(Z)V

    .line 920
    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 923
    .end local v1           #hv:Lcom/sec/android/app/camera/HighlightView;
    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 924
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/HighlightView;

    .line 925
    .restart local v1       #hv:Lcom/sec/android/app/camera/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/HighlightView;->getHit(FF)I

    move-result v0

    .line 926
    .local v0, edge:I
    if-eq v0, v5, :cond_4b

    .line 927
    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_47

    .line 928
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/HighlightView;->setFocus(Z)V

    .line 929
    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 934
    .end local v0           #edge:I
    .end local v1           #hv:Lcom/sec/android/app/camera/HighlightView;
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->invalidate()V

    .line 935
    return-void

    .line 923
    .restart local v0       #edge:I
    .restart local v1       #hv:Lcom/sec/android/app/camera/HighlightView;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public add(Lcom/sec/android/app/camera/HighlightView;)V
    .registers 4
    .parameter "hv"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/camera/CropImage;

    .line 1115
    .local v0, cropImage:Lcom/sec/android/app/camera/CropImage;
    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    .line 1116
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->invalidate()V

    .line 1119
    :cond_18
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 1106
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 1107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1108
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 1107
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1110
    :cond_1a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 857
    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/camera/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 858
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 859
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 860
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 861
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 862
    iget-boolean v2, v0, Lcom/sec/android/app/camera/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_11

    .line 863
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CropImageView;->centerBasedOnHighlightView(Lcom/sec/android/app/camera/HighlightView;)V

    goto :goto_11

    .line 867
    .end local v0           #hv:Lcom/sec/android/app/camera/HighlightView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_31
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/camera/CropImage;

    .line 940
    .local v0, cropImage:Lcom/sec/android/app/camera/CropImage;
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    if-eqz v4, :cond_c

    move v4, v5

    .line 1046
    :goto_b
    return v4

    .line 948
    :cond_c
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-nez v4, :cond_16

    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    if-nez v4, :cond_16

    move v4, v5

    .line 949
    goto :goto_b

    .line 952
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_11e

    .line 1031
    :cond_1d
    :goto_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_128

    :cond_24
    :goto_24
    move v4, v6

    .line 1046
    goto :goto_b

    .line 954
    :pswitch_26
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CropImageView;->mTouchPressed:Z

    if-nez v4, :cond_31

    .line 955
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CropImageView;->mTouchPressed:Z

    .line 956
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mButtonHandler:Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->hide()V

    .line 959
    :cond_31
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_39

    .line 960
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1d

    .line 963
    :cond_39
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImage;->getBlinkRectCnt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/HighlightView;

    .line 964
    .local v2, hv:Lcom/sec/android/app/camera/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/HighlightView;->getHit(FF)I

    move-result v1

    .line 965
    .local v1, edge:I
    if-eq v1, v6, :cond_1d

    .line 966
    iput v1, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionEdge:I

    .line 967
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    .line 968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CropImageView;->mLastX:F

    .line 969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CropImageView;->mLastY:F

    .line 970
    iget-object v5, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    const/16 v4, 0x20

    if-ne v1, v4, :cond_6f

    sget-object v4, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->Move:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    :goto_6b
    invoke-virtual {v5, v4}, Lcom/sec/android/app/camera/HighlightView;->setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V

    goto :goto_1d

    :cond_6f
    sget-object v4, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->Grow:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    goto :goto_6b

    .line 980
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/sec/android/app/camera/HighlightView;
    :pswitch_72
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_b4

    .line 982
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImage;->getBlinkRectCnt()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/HighlightView;

    .line 983
    .restart local v2       #hv:Lcom/sec/android/app/camera/HighlightView;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/HighlightView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 984
    iput-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    .line 985
    const/4 v3, 0x0

    .local v3, j:I
    :goto_8b
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a8

    .line 986
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImage;->getBlinkRectCnt()I

    move-result v4

    if-ne v3, v4, :cond_9c

    .line 985
    :goto_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 989
    :cond_9c
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/HighlightView;->setHidden(Z)V

    goto :goto_99

    .line 991
    :cond_a8
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CropImageView;->centerBasedOnHighlightView(Lcom/sec/android/app/camera/HighlightView;)V

    .line 992
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/camera/CropImage;

    iput-boolean v5, v4, Lcom/sec/android/app/camera/CropImage;->mWaitingToPick:Z

    move v4, v6

    .line 993
    goto/16 :goto_b

    .line 996
    .end local v2           #hv:Lcom/sec/android/app/camera/HighlightView;
    .end local v3           #j:I
    :cond_b4
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    if-eqz v4, :cond_c4

    .line 997
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CropImageView;->centerBasedOnHighlightView(Lcom/sec/android/app/camera/HighlightView;)V

    .line 998
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    sget-object v7, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/HighlightView;->setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V

    .line 1001
    :cond_c4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    .line 1003
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CropImageView;->mTouchPressed:Z

    if-eqz v4, :cond_1d

    .line 1004
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mButtonHandler:Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CropImageView$ButtonMoveHandler;->show()V

    .line 1005
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CropImageView;->mTouchPressed:Z

    goto/16 :goto_1d

    .line 1010
    :pswitch_d4
    iget-boolean v4, v0, Lcom/sec/android/app/camera/CropImage;->mWaitingToPick:Z

    if-eqz v4, :cond_dd

    .line 1011
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1d

    .line 1012
    :cond_dd
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    if-eqz v4, :cond_1d

    .line 1013
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    iget v5, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/sec/android/app/camera/CropImageView;->mLastX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/sec/android/app/camera/CropImageView;->mLastY:F

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v7, v8}, Lcom/sec/android/app/camera/HighlightView;->handleMotion(IFF)V

    .line 1016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CropImageView;->mLastX:F

    .line 1017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CropImageView;->mLastY:F

    .line 1025
    iget-object v4, p0, Lcom/sec/android/app/camera/CropImageView;->mMotionHighlightView:Lcom/sec/android/app/camera/HighlightView;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CropImageView;->ensureVisible(Lcom/sec/android/app/camera/HighlightView;)V

    goto/16 :goto_1d

    .line 1033
    :pswitch_109
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/CropImageView;->center(ZZ)V

    goto/16 :goto_24

    .line 1040
    :pswitch_10e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getScale()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-nez v4, :cond_24

    .line 1041
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/CropImageView;->center(ZZ)V

    goto/16 :goto_24

    .line 952
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_72
        :pswitch_d4
    .end packed-switch

    .line 1031
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_109
        :pswitch_10e
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .registers 6
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 906
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 907
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 908
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 909
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 910
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 912
    .end local v0           #hv:Lcom/sec/android/app/camera/HighlightView;
    :cond_1f
    return-void
.end method

.method public setButtonsLayout(Landroid/view/View;)V
    .registers 2
    .parameter "buttonsLayout"

    .prologue
    .line 870
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImageView;->mButtonsLayout:Landroid/view/View;

    .line 871
    return-void
.end method

.method protected zoomIn()V
    .registers 5

    .prologue
    .line 888
    invoke-super {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomIn()V

    .line 889
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 890
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 891
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    goto :goto_9

    .line 893
    .end local v0           #hv:Lcom/sec/android/app/camera/HighlightView;
    :cond_22
    return-void
.end method

.method protected zoomOut()V
    .registers 5

    .prologue
    .line 897
    invoke-super {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomOut()V

    .line 898
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 899
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 900
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    goto :goto_9

    .line 902
    .end local v0           #hv:Lcom/sec/android/app/camera/HighlightView;
    :cond_22
    return-void
.end method

.method protected zoomTo(FFF)V
    .registers 8
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 879
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 880
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HighlightView;

    .line 881
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v2, v0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 882
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    goto :goto_9

    .line 884
    .end local v0           #hv:Lcom/sec/android/app/camera/HighlightView;
    :cond_22
    return-void
.end method
