.class public Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLListTypeMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final INT_2:I = 0x2

.field private static final INT_20:I = 0x14

.field private static final INT_42:I = 0x2a

.field private static final INT_6:I = 0x6

.field private static final INT_80:I = 0x50

.field private static final LIST_ITEM_HEIGHT:I = 0x1d3

.field private static final LIST_ITEM_WIDTH:I = 0x147

.field private static final LIST_MENU_AREA_HEIGHT:I = 0x1e0

.field private static final LIST_MENU_AREA_WIDTH:I = 0x280

.field private static final LIST_POS_X:I = 0x0

.field private static final LIST_POS_Y:I = 0x24

.field private static final MENU_HEIGHT:I = 0x1d3

.field private static final MENU_POS_X:I = 0x58

.field private static final MENU_POS_Y:I = 0x6

.field private static final MENU_WIDTH:I = 0x147

.field private static final TITLE_FONT_SIZE:F = 20.0f

.field private static final TITLE_HEIGHT:I = 0x24

.field private static final TITLE_LEFT_PADDING:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final TITLE_TEXT_COLOR:I = 0x0

.field private static final TITLE_TOP_PADDING:I = 0x1


# instance fields
.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0xff

    .line 55
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .registers 18
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 74
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 76
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 78
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x42b0

    const/high16 v4, 0x40c0

    const v5, 0x43a38000

    const v6, 0x43e98000

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 79
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x4140

    const/high16 v4, 0x3f80

    const v5, 0x439d8000

    const/high16 v6, 0x420c

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 82
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 83
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 84
    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4210

    const v6, 0x43a38000

    const v7, 0x43d78000

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 85
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f02017c

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    const/high16 v4, 0x42b0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    const/high16 v4, 0x42b0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40c0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    const/high16 v4, 0x42b0

    const/high16 v5, 0x40c0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 122
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 123
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 202
    :cond_c
    return v1
.end method

.method public onAnimationEnd()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1e

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 194
    :cond_1e
    return v2
.end method

.method public onAnimationStart()Z
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDrag(FFFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 172
    return-void
.end method

.method public onDragEnd(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 176
    return-void
.end method

.method public onDragStart(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 168
    return-void
.end method

.method protected onHide()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_a

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 163
    :cond_a
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 164
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    .line 219
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 209
    .local v0, depth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->getZorder()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1c

    .line 210
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 212
    .end local v0           #depth:I
    .local v1, depth:I
    :goto_10
    add-int/lit8 v0, v1, -0x1

    .end local v1           #depth:I
    .restart local v0       #depth:I
    if-lez v1, :cond_1b

    .line 213
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v1, v0

    .end local v0           #depth:I
    .restart local v1       #depth:I
    goto :goto_10

    .line 215
    .end local v1           #depth:I
    .restart local v0       #depth:I
    :cond_1b
    return-void

    :cond_1c
    move v1, v0

    .end local v0           #depth:I
    .restart local v1       #depth:I
    goto :goto_10
.end method

.method protected onShow()V
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->setListBackgrouond(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    .line 155
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 156
    return-void
.end method

.method public refreshMenuPosition()V
    .registers 14

    .prologue
    const/high16 v12, 0x4228

    const/high16 v11, 0x41a0

    const/4 v10, 0x0

    const/high16 v9, 0x4420

    const/high16 v8, 0x4000

    .line 223
    const/4 v3, 0x6

    .line 225
    .local v3, padding:I
    const/high16 v4, 0x40c0

    .line 227
    .local v4, top:F
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v6, :cond_78

    .line 228
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_14e

    .line 237
    :pswitch_19
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    .line 238
    .local v5, width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 241
    .local v1, height:F
    :goto_25
    add-float v0, v4, v1

    .line 243
    .local v0, bottom:F
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 244
    .local v2, move:F
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_57

    .line 245
    neg-float v6, v4

    int-to-float v7, v3

    add-float v2, v6, v7

    .line 249
    :cond_44
    :goto_44
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6, v10, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    .line 311
    :goto_49
    return-void

    .line 231
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #move:F
    .end local v5           #width:F
    :pswitch_4a
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    .line 232
    .restart local v5       #width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 233
    .restart local v1       #height:F
    goto :goto_25

    .line 246
    .restart local v0       #bottom:F
    .restart local v2       #move:F
    :cond_57
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_44

    .line 247
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    int-to-float v7, v3

    sub-float v2, v6, v7

    goto :goto_44

    .line 251
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #move:F
    .end local v5           #width:F
    :cond_78
    const/4 v3, 0x6

    .line 252
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    .line 253
    .restart local v5       #width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 254
    .restart local v1       #height:F
    add-float v0, v4, v1

    .line 256
    .restart local v0       #bottom:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_158

    .line 297
    iget v6, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 299
    .restart local v2       #move:F
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_a0

    .line 300
    neg-float v6, v4

    add-float v2, v6, v12

    .line 303
    :cond_a0
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_bf

    .line 304
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    sub-float v2, v6, v8

    .line 307
    :cond_bf
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sub-float v7, v9, v5

    sub-float/2addr v7, v11

    invoke-virtual {v6, v7, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto :goto_49

    .line 258
    .end local v2           #move:F
    :pswitch_c8
    iget v6, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    sub-float v6, v9, v6

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 260
    .restart local v2       #move:F
    add-float v6, v0, v2

    cmpl-float v6, v6, v9

    if-lez v6, :cond_db

    .line 261
    sub-float v6, v9, v0

    sub-float v2, v6, v12

    .line 263
    :cond_db
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_e4

    .line 264
    neg-float v6, v4

    add-float v2, v6, v11

    .line 267
    :cond_e4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6, v2, v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto/16 :goto_49

    .line 270
    .end local v2           #move:F
    :pswitch_eb
    iget v6, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    const/high16 v7, 0x42a0

    sub-float/2addr v6, v7

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 272
    .restart local v2       #move:F
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_fe

    .line 273
    neg-float v6, v4

    add-float v2, v6, v12

    .line 276
    :cond_fe
    add-float v6, v0, v2

    cmpl-float v6, v6, v9

    if-lez v6, :cond_108

    .line 277
    sub-float v6, v9, v0

    sub-float v2, v6, v11

    .line 280
    :cond_108
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/high16 v7, 0x40c0

    invoke-virtual {v6, v2, v7}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto/16 :goto_49

    .line 283
    .end local v2           #move:F
    :pswitch_111
    const/high16 v6, 0x43f0

    iget v7, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    sub-float/2addr v6, v7

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 285
    .restart local v2       #move:F
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_13a

    .line 286
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    sub-float v2, v6, v12

    .line 289
    :cond_13a
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_143

    .line 290
    neg-float v6, v4

    add-float v2, v6, v8

    .line 293
    :cond_143
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sub-float v7, v9, v5

    sub-float/2addr v7, v11

    invoke-virtual {v6, v7, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto/16 :goto_49

    .line 228
    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_19
        :pswitch_4a
    .end packed-switch

    .line 256
    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_111
        :pswitch_eb
    .end packed-switch
.end method

.method public setListBackgrouond(I)V
    .registers 4
    .parameter "zOrder"

    .prologue
    .line 110
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f02017a

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 116
    :goto_b
    return-void

    .line 114
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    goto :goto_b
.end method
