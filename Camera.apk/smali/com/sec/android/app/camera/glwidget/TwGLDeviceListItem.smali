.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDeviceListItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/Camera$OnUserSelected;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;
    }
.end annotation


# static fields
.field private static final CHECKBOX_POS_Y:I = 0x15

.field public static final CHECKBOX_TYPE:I = 0x4

.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I = 0x3f

.field private static final DURATION:I = 0xbb8

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

.field private static final ICON_IMAGE_HEIGHT:I = 0x50

.field private static final ICON_IMAGE_POS_X:I = 0x3

.field private static final ICON_IMAGE_POS_Y:I = 0x3

.field private static final ICON_IMAGE_WIDTH:I = 0x50

.field public static final LIST_TYPE:I = 0x0

.field private static final LIST_TYPE_BUTTON_HEIGHT:I = 0x57

.field private static final LIST_TYPE_BUTTON_WIDTH:I = 0x228

.field private static final LIST_TYPE_TEXT_HEIGHT:I = 0x57

.field private static final LIST_TYPE_TEXT_POS_X:I = 0x5f

.field private static final LIST_TYPE_TEXT_POS_Y:I = 0x0

.field private static final LIST_TYPE_TEXT_WIDTH:I = 0xe0

.field private static final MENU_POS_X:I = 0x58

.field private static final MENU_POS_Y:I = 0x6

.field private static final REPEAT:I = 0x32

.field private static final SEPARATOR_HEIGHT:I = 0x2

.field private static final SEPARATOR_POS_X:I = 0x0

.field public static final SETTINGS_TYPE:I = 0x3

.field public static final SIDEBUTTON_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwGLDeviceListItem"

.field public static final TITLE_HEIGHT:I = 0x24

.field public static final UNKNOWN_TYPE:I = -0x1

.field private static final WAITING_ICON_IMAGE_HEIGHT:I = 0x18

.field private static final WAITING_ICON_IMAGE_POS_X:I = 0x33

.field private static final WAITING_ICON_IMAGE_POS_Y:I = 0x35

.field private static final WAITING_ICON_IMAGE_WIDTH:I = 0x18


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCurrentType:I

.field private mData:Lcom/samsung/shareshot/User;

.field private mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

.field private mDataMac:Ljava/lang/String;

.field private mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

.field private mDim:Z

.field private mIcon:Lcom/sec/android/glview/TwGLImage;

.field private mLock:Z

.field private mPosition:I

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mTimer:Ljava/util/Timer;

.field private mWaiting:Z

.field private mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

.field private mZOrder:I

.field public m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/samsung/shareshot/User;IFF)V
    .registers 14
    .parameter "activityContext"
    .parameter "data"
    .parameter "position"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 118
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mZOrder:I

    .line 99
    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mTimer:Ljava/util/Timer;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mCurrentType:I

    .line 111
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    .line 112
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mLock:Z

    .line 113
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaiting:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    .line 443
    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 119
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    .line 120
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 121
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mPosition:I

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->initContents()V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->setContentType()V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p0, p3}, Lcom/sec/android/app/camera/Camera;->setOnUserSelected(Lcom/sec/android/app/camera/Camera$OnUserSelected;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .registers 10
    .parameter "glContext"

    .prologue
    const/4 v1, 0x0

    const v4, 0x7f020194

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mZOrder:I

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mTimer:Ljava/util/Timer;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mCurrentType:I

    .line 111
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    .line 112
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mLock:Z

    .line 113
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaiting:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    .line 443
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 133
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/glview/TwGLImage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/samsung/shareshot/User;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    return-object v0
.end method

.method private clearContent()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_11

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->clear()V

    .line 230
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .line 232
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_21

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 235
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 238
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_31

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->clear()V

    .line 241
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 243
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_41

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->clear()V

    .line 246
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    .line 248
    :cond_41
    return-void
.end method

.method private initContents()V
    .registers 19

    .prologue
    .line 255
    const/16 v17, 0x0

    .line 256
    .local v17, width:F
    const/16 v16, 0x0

    .line 257
    .local v16, height:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_176

    .line 258
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSizeSpecified:Z

    if-eqz v1, :cond_136

    .line 259
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getHeight()F

    move-result v6

    const v7, 0x7f020194

    const v8, 0x7f020194

    const v9, 0x7f020194

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 265
    :goto_35
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    if-nez v1, :cond_44

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 269
    :cond_44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_176

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    .line 271
    .end local v17           #width:F
    .local v5, width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    .line 275
    .end local v16           #height:F
    .local v6, height:F
    :goto_5a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_a5

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, username:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "[Unknown]"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    if-nez v7, :cond_89

    .line 278
    :cond_7a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 279
    :cond_89
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 283
    .end local v7           #username:Ljava/lang/String;
    :cond_a5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-nez v1, :cond_ce

    .line 284
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v3, 0x427c

    sub-float v3, v5, v3

    const/high16 v4, 0x41a8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v8}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setBypassTouch(Z)V

    .line 288
    :cond_ce
    new-instance v8, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x4000

    const v14, 0x7f02017b

    move v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 289
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x424c

    const/high16 v4, 0x4254

    const v8, 0x7f0201ba

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v14

    .line 293
    .local v14, iconPath:Ljava/lang/String;
    if-eqz v14, :cond_15d

    .line 294
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v15, f:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 296
    new-instance v8, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v10, 0x4040

    const/high16 v11, 0x4040

    const/high16 v12, 0x42a0

    const/high16 v13, 0x42a0

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    .line 303
    .end local v15           #f:Ljava/io/File;
    :goto_135
    return-void

    .line 262
    .end local v5           #width:F
    .end local v6           #height:F
    .end local v14           #iconPath:Ljava/lang/String;
    .restart local v16       #height:F
    .restart local v17       #width:F
    :cond_136
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getHeight()F

    move-result v6

    const v7, 0x7f020194

    const v8, 0x7f020194

    const v9, 0x7f020194

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_35

    .line 301
    .end local v16           #height:F
    .end local v17           #width:F
    .restart local v5       #width:F
    .restart local v6       #height:F
    .restart local v14       #iconPath:Ljava/lang/String;
    :cond_15d
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x4040

    const/high16 v4, 0x4040

    const v8, 0x7f020182

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    goto :goto_135

    .end local v5           #width:F
    .end local v6           #height:F
    .end local v14           #iconPath:Ljava/lang/String;
    .restart local v16       #height:F
    .restart local v17       #width:F
    :cond_176
    move/from16 v6, v16

    .end local v16           #height:F
    .restart local v6       #height:F
    move/from16 v5, v17

    .end local v17           #width:F
    .restart local v5       #width:F
    goto/16 :goto_5a
.end method


# virtual methods
.method public OnRefresh()V
    .registers 1

    .prologue
    .line 432
    return-void
.end method

.method public animationAfterClick()V
    .registers 9

    .prologue
    const/16 v7, 0x18

    const/4 v3, 0x0

    .line 450
    const-string v1, "#"

    const-string v2, " animationAfterClick "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaiting:Z

    .line 453
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 454
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43b4

    const/4 v2, 0x0

    const/high16 v4, 0x4317

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mPosition:I

    mul-int/lit8 v5, v5, 0x57

    add-int/lit8 v5, v5, 0x6b

    int-to-float v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 456
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    const/16 v1, 0x228

    const/16 v2, 0x57

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 457
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 458
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 459
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 462
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaiting:Z

    if-eqz v1, :cond_6e

    .line 492
    :goto_6d
    return-void

    .line 465
    :cond_6e
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v1

    if-nez v1, :cond_90

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_90
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_6d
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->clearContent()V

    .line 223
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 224
    return-void
.end method

.method public getData()Lcom/samsung/shareshot/User;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    return-object v0
.end method

.method public getScrollHint()Z
    .registers 2

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v1

    if-nez v1, :cond_13

    .line 422
    :cond_12
    :goto_12
    return-void

    .line 397
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-nez v1, :cond_63

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v1, :cond_12

    .line 399
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 400
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/sec/android/app/camera/Camera;->ACTIVE_USER:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    const v2, 0x3e4ccccd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setAlpha(F)V

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 408
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->animationAfterClick()V

    goto :goto_12

    .line 410
    .end local v0           #msg:Landroid/os/Message;
    :cond_63
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-eqz v1, :cond_12

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v1, :cond_12

    .line 412
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 413
    .restart local v0       #msg:Landroid/os/Message;
    sget v1, Lcom/sec/android/app/camera/Camera;->CANCEL_ACTIVE_USER:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    .line 417
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-nez v1, :cond_b1

    move v1, v2

    :goto_a3
    iput-boolean v1, v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    .line 419
    const/high16 v1, 0x3f00

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->setAlpha(F)V

    goto/16 :goto_12

    :cond_b1
    move v1, v3

    .line 417
    goto :goto_a3
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 6
    .parameter "gl"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getRotatable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 350
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 351
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_c

    .line 354
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_24
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 356
    :cond_27
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .registers 2
    .parameter "anchor"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 138
    return-void
.end method

.method public setBGImageVisibility(Z)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_4

    .line 345
    :cond_4
    return-void
.end method

.method public setContentType()V
    .registers 8

    .prologue
    const/high16 v6, 0x440a

    const/high16 v5, 0x42ae

    const/high16 v4, 0x42a0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6, v5}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x42be

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x4360

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/high16 v1, 0x42aa

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->animationAfterClick()V

    .line 340
    :goto_a2
    return-void

    .line 336
    :cond_a3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2
.end method

.method public setEnable(ZZ)V
    .registers 3
    .parameter "enable"
    .parameter "check"

    .prologue
    .line 437
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .registers 4
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 496
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_38

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_10

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 500
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_19

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 502
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_22

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 504
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2b

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 506
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_34

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 520
    :cond_34
    :goto_34
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 521
    return-void

    .line 509
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_41

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 511
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4a

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 513
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_53

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 515
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_5c

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 517
    :cond_5c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_34

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_34
.end method

.method public setUserSelectionChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 441
    return-void
.end method

.method public setZOrder(I)V
    .registers 2
    .parameter "zOrder"

    .prologue
    .line 141
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mZOrder:I

    .line 142
    return-void
.end method
