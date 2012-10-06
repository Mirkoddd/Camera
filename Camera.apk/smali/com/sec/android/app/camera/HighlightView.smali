.class Lcom/sec/android/app/camera/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field mActivityContext:Landroid/view/View;

.field private mCircle:Z

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    sget-object v0, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    .line 413
    iput-boolean v1, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    .line 415
    iput-boolean v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 422
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 423
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 53
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 366
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 368
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 369
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .registers 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 59
    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 61
    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .registers 30
    .parameter "canvas"

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/HighlightView;->mHidden:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 179
    :cond_8
    :goto_8
    return-void

    .line 84
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 85
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 86
    .local v11, path:Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/HighlightView;->hasFocus()Z

    move-result v22

    if-nez v22, :cond_39

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const v23, -0x10fb2a

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 90
    :cond_39
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .local v14, viewDrawingRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 92
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_18f

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v15, v0

    .line 94
    .local v15, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v7, v0

    .line 95
    .local v7, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v15, v23

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v24, v7, v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v24, v15, v24

    sget-object v25, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const v23, -0x10fb2a

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    .end local v7           #height:F
    .end local v15           #width:F
    :goto_b6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->Grow:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 119
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b0

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 121
    .local v15, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 123
    .local v7, height:I
    const-wide v22, 0x3fe921fb54442d18L

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v6, v0

    .line 125
    .local v6, d:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    add-int v22, v22, v6

    div-int/lit8 v23, v15, 0x2

    sub-int v18, v22, v23

    .line 127
    .local v18, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    sub-int v22, v22, v6

    div-int/lit8 v23, v7, 0x2

    sub-int v20, v22, v23

    .line 129
    .local v20, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    add-int v23, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v24

    add-int v24, v24, v20

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 101
    .end local v6           #d:I
    .end local v7           #height:I
    .end local v15           #width:I
    .end local v18           #x:I
    .end local v20           #y:I
    :cond_18f
    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, -0x7600

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b6

    .line 134
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int/lit8 v10, v22, 0x1

    .line 135
    .local v10, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int/lit8 v12, v22, 0x1

    .line 136
    .local v12, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int/lit8 v13, v22, 0x4

    .line 137
    .local v13, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int/lit8 v5, v22, 0x3

    .line 139
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    div-int/lit8 v17, v22, 0x2

    .line 141
    .local v17, widthWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    div-int/lit8 v16, v22, 0x2

    .line 143
    .local v16, widthHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    div-int/lit8 v8, v22, 0x2

    .line 145
    .local v8, heightHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    div-int/lit8 v9, v22, 0x2

    .line 148
    .local v9, heightWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v19, v22, v23

    .line 150
    .local v19, xMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v21, v22, v23

    .line 153
    .local v21, yMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v10, v17

    sub-int v24, v21, v16

    add-int v25, v10, v17

    add-int v26, v21, v16

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v12, v17

    sub-int v24, v21, v16

    add-int v25, v12, v17

    add-int v26, v21, v16

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v19, v9

    sub-int v24, v13, v8

    add-int v25, v19, v9

    add-int v26, v13, v8

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v19, v9

    sub-int v24, v5, v8

    add-int v25, v19, v9

    add-int v26, v5, v8

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 360
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .registers 15
    .parameter "x"
    .parameter "y"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    .line 191
    .local v6, r:Landroid/graphics/Rect;
    const/high16 v5, 0x41a0

    .line 192
    .local v5, hysteresis:F
    const/4 v8, 0x1

    .line 194
    .local v8, retval:I
    iget-boolean v10, p0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    if-eqz v10, :cond_60

    .line 195
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 196
    .local v1, distX:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    .line 197
    .local v2, distY:F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 199
    .local v3, distanceFromCenter:I
    iget-object v10, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 200
    .local v7, radius:I
    sub-int v0, v3, v7

    .line 201
    .local v0, delta:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_59

    .line 202
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_50

    .line 203
    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_4d

    .line 204
    const/16 v8, 0x8

    .line 247
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_4c
    :goto_4c
    return v8

    .line 206
    .restart local v0       #delta:I
    .restart local v1       #distX:F
    .restart local v2       #distY:F
    .restart local v3       #distanceFromCenter:I
    .restart local v7       #radius:I
    :cond_4d
    const/16 v8, 0x10

    goto :goto_4c

    .line 209
    :cond_50
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_57

    .line 210
    const/4 v8, 0x2

    goto :goto_4c

    .line 212
    :cond_57
    const/4 v8, 0x4

    goto :goto_4c

    .line 215
    :cond_59
    if-ge v3, v7, :cond_5e

    .line 216
    const/16 v8, 0x20

    goto :goto_4c

    .line 218
    :cond_5e
    const/4 v8, 0x1

    goto :goto_4c

    .line 223
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_60
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_e1

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p2, v10

    if-gez v10, :cond_e1

    const/4 v9, 0x1

    .line 225
    .local v9, verticalCheck:Z
    :goto_75
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_e3

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p1, v10

    if-gez v10, :cond_e3

    const/4 v4, 0x1

    .line 229
    .local v4, horizCheck:Z
    :goto_8a
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9c

    if-eqz v9, :cond_9c

    .line 230
    or-int/lit8 v8, v8, 0x2

    .line 232
    :cond_9c
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_ae

    if-eqz v9, :cond_ae

    .line 233
    or-int/lit8 v8, v8, 0x4

    .line 235
    :cond_ae
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c0

    if-eqz v4, :cond_c0

    .line 236
    or-int/lit8 v8, v8, 0x8

    .line 238
    :cond_c0
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d2

    if-eqz v4, :cond_d2

    .line 239
    or-int/lit8 v8, v8, 0x10

    .line 243
    :cond_d2
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4c

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 244
    const/16 v8, 0x20

    goto/16 :goto_4c

    .line 223
    .end local v4           #horizCheck:Z
    .end local v9           #verticalCheck:Z
    :cond_e1
    const/4 v9, 0x0

    goto :goto_75

    .line 225
    .restart local v9       #verticalCheck:Z
    :cond_e3
    const/4 v4, 0x0

    goto :goto_8a
.end method

.method growBy(FF)V
    .registers 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v1, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 300
    iget-boolean v4, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_11

    .line 301
    cmpl-float v4, p1, v6

    if-eqz v4, :cond_db

    .line 302
    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 311
    :cond_11
    :goto_11
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 312
    .local v2, r:Landroid/graphics/RectF;
    cmpl-float v4, p1, v6

    if-lez v4, :cond_43

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_43

    .line 313
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 314
    .local v0, adjustment:F
    move p1, v0

    .line 315
    iget-boolean v4, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_43

    .line 316
    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 319
    .end local v0           #adjustment:F
    :cond_43
    cmpl-float v4, p2, v6

    if-lez v4, :cond_6e

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6e

    .line 320
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 321
    .restart local v0       #adjustment:F
    move p2, v0

    .line 322
    iget-boolean v4, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_6e

    .line 323
    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    .line 327
    .end local v0           #adjustment:F
    :cond_6e
    neg-float v4, p1

    neg-float v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 330
    const/high16 v3, 0x41c8

    .line 331
    .local v3, widthCap:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_88

    .line 332
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 334
    :cond_88
    iget-boolean v4, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_8f

    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v1, v4

    .line 337
    .local v1, heightCap:F
    :cond_8f
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_a2

    .line 338
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 342
    :cond_a2
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e5

    .line 343
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 347
    :cond_b6
    :goto_b6
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_fb

    .line 348
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 353
    :cond_ca
    :goto_ca
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 355
    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 356
    return-void

    .line 303
    .end local v1           #heightCap:F
    .end local v2           #r:Landroid/graphics/RectF;
    .end local v3           #widthCap:F
    :cond_db
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_11

    .line 304
    iget v4, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    goto/16 :goto_11

    .line 344
    .restart local v1       #heightCap:F
    .restart local v2       #r:Landroid/graphics/RectF;
    .restart local v3       #widthCap:F
    :cond_e5
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b6

    .line 345
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_b6

    .line 349
    :cond_fb
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ca

    .line 350
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_ca
.end method

.method handleMotion(IFF)V
    .registers 11
    .parameter "edge"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 254
    .local v0, r:Landroid/graphics/Rect;
    if-ne p1, v4, :cond_9

    .line 275
    :goto_8
    return-void

    .line 256
    :cond_9
    const/16 v5, 0x20

    if-ne p1, v5, :cond_2b

    .line 258
    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/HighlightView;->moveBy(FF)V

    goto :goto_8

    .line 261
    :cond_2b
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_30

    .line 262
    const/4 p2, 0x0

    .line 265
    :cond_30
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_35

    .line 266
    const/4 p3, 0x0

    .line 270
    :cond_35
    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 271
    .local v1, xDelta:F
    iget-object v5, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 272
    .local v2, yDelta:F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_62

    move v5, v3

    :goto_56
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_64

    :goto_5c
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/camera/HighlightView;->growBy(FF)V

    goto :goto_8

    :cond_62
    move v5, v4

    goto :goto_56

    :cond_64
    move v3, v4

    goto :goto_5c
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/app/camera/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 375
    return-void
.end method

.method moveBy(FF)V
    .registers 10
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 279
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 281
    .local v0, invalRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 292
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 294
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 296
    return-void
.end method

.method public setFocus(Z)V
    .registers 2
    .parameter "f"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/app/camera/HighlightView;->mIsFocused:Z

    .line 74
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .parameter "hidden"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/camera/HighlightView;->mHidden:Z

    .line 78
    return-void
.end method

.method public setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_b

    .line 183
    iput-object p1, p0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mActivityContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 186
    :cond_b
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .registers 10
    .parameter "m"
    .parameter "imageRect"
    .parameter "cropRect"
    .parameter "circle"
    .parameter "maintainAspectRatio"

    .prologue
    const/16 v3, 0x7d

    const/16 v2, 0x32

    .line 379
    if-eqz p4, :cond_7

    .line 380
    const/4 p5, 0x1

    .line 382
    :cond_7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 384
    iput-object p3, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 385
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 386
    iput-boolean p5, p0, Lcom/sec/android/app/camera/HighlightView;->mMaintainAspectRatio:Z

    .line 387
    iput-boolean p4, p0, Lcom/sec/android/app/camera/HighlightView;->mCircle:Z

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/HighlightView;->mInitialAspectRatio:F

    .line 390
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 398
    sget-object v0, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/sec/android/app/camera/HighlightView;->mMode:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    .line 399
    invoke-direct {p0}, Lcom/sec/android/app/camera/HighlightView;->init()V

    .line 400
    return-void
.end method
