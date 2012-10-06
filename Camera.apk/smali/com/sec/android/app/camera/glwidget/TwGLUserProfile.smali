.class public Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLUserProfile.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field private static final CANCEL_BTN_HEIGHT:I = 0x48

.field private static final CANCEL_BTN_POS_X:I = 0xd7

.field private static final CANCEL_BTN_POS_Y:I = 0xd5

.field private static final CANCEL_BTN_WIDTH:I = 0xc9

.field private static final IMAGE_HEIGHT:I = 0x50

.field private static final IMAGE_POS_X:I = 0x16

.field private static final IMAGE_POS_Y:I = 0x68

.field private static final IMAGE_WIDTH:I = 0x50

.field private static final MENU_HEIGHT:I = 0x122

.field private static final MENU_POS_X:I = 0xb9

.field private static final MENU_POS_Y:I = 0x60

.field private static final MENU_WIDTH:I = 0x1ab

.field private static final NAME_FONT_SIZE:F = 30.0f

#the value of this static final field might be set in the static constructor
.field private static final NAME_TEXT_COLOR:I = 0x0

.field private static final NAME_TEXT_HEIGHT:I = 0x48

.field private static final NAME_TEXT_POS_X:I = 0x71

.field private static final NAME_TEXT_POS_Y:I = 0x72

.field private static final NAME_TEXT_WIDTH:I = 0x129

.field private static final OK_BTN_HEIGHT:I = 0x48

.field private static final OK_BTN_POS_X:I = 0xb

.field private static final OK_BTN_POS_Y:I = 0xd5

.field private static final OK_BTN_WIDTH:I = 0xc9

.field private static final SCREEN_HEIGHT:I = 0x320

.field private static final SCREEN_WIDTH:I = 0x1e0

.field private static final TITLE_FONT_SIZE:F = 35.0f

.field private static final TITLE_HEIGHT:I = 0x58

.field private static final TITLE_ICON_POS_X:I = 0x16

.field private static final TITLE_ICON_POS_Y:I = 0x17

.field private static final TITLE_LEFT_PADDING:I = 0x55

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mTitleIcon:Lcom/sec/android/glview/TwGLImage;

.field private mTmpImage:Lcom/sec/android/glview/TwGLImage;

.field private mZOrder:I

.field private userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 90
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->TITLE_TEXT_COLOR:I

    .line 100
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->NAME_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .registers 20
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 138
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 135
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    .line 140
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 141
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 142
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 143
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mZOrder:I

    .line 144
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    .line 145
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mResolver:Landroid/content/ContentResolver;

    .line 148
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x42c0

    const v5, 0x43d58000

    const/high16 v6, 0x4391

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 149
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x42aa

    const/4 v4, 0x0

    const/high16 v5, 0x43ab

    const/high16 v6, 0x42b0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0101

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x420c

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 152
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 160
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x42e2

    const/high16 v5, 0x42e4

    const v6, 0x43948000

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    .line 162
    new-instance v2, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x40a0

    const/4 v5, 0x0

    const v6, 0x438f8000

    const/high16 v7, 0x4290

    const-string v8, ""

    const/high16 v9, 0x41f0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->NAME_TEXT_COLOR:I

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 165
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setLock(Z)V

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 171
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x4130

    const/high16 v5, 0x4355

    const/high16 v6, 0x4349

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    .line 173
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x4357

    const/high16 v5, 0x4355

    const/high16 v6, 0x4349

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    .line 176
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0110

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v3, 0x43d58000

    const/high16 v4, 0x4391

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 189
    const-string v2, "TwGLUserProfile()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------------xywh= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    const/high16 v4, 0x4339

    const/high16 v5, 0x42c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    const/high16 v4, 0x4448

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x43f0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    const/high16 v4, 0x4339

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x42c0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    const/high16 v4, 0x4448

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/high16 v5, 0x43f0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 197
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 202
    const-string v2, "TwGLUserProfile()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------------xywh = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 208
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 212
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 214
    return-void
.end method

.method private getUserName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-nez v1, :cond_10

    .line 355
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_1b

    .line 361
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-eqz v1, :cond_20

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 365
    :goto_1a
    return-object v1

    .line 356
    :catch_1b
    move-exception v0

    .line 358
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    .line 365
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_30

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-eqz v0, :cond_2b

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setUserName(Ljava/lang/String;)V

    .line 446
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 448
    :cond_30
    return v2
.end method

.method public onAnimationEnd()Z
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart()Z
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_b

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .registers 16
    .parameter "view"

    .prologue
    const/16 v6, 0x35

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v2, 0x3b

    .line 257
    const/4 v9, 0x0

    .line 258
    .local v9, fOut:Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_4c

    .line 259
    new-instance v12, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-class v2, Lcom/sec/android/app/camera/EditUserName;

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v12, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_39

    .line 261
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    :goto_23
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x7d5

    invoke-virtual {v1, v12, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    .end local v12           #intent:Landroid/content/Intent;
    :cond_30
    :goto_30
    if-eqz v9, :cond_38

    .line 343
    :try_start_32
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 344
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_38} :catch_17b

    .line 350
    :cond_38
    :goto_38
    return-void

    .line 263
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_39
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    .line 267
    .end local v12           #intent:Landroid/content/Intent;
    :cond_4c
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_c8

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 269
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 270
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-static {v1, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 271
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v11, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v11, file:Ljava/io/File;
    :try_start_70
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_75} :catch_ab

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .local v10, fOut:Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 278
    .end local v10           #fOut:Ljava/io/FileOutputStream;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    :goto_76
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v7, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 280
    :try_start_7d
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_bc
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_b0

    .line 285
    if-eqz v9, :cond_85

    .line 287
    :try_start_82
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_181

    .line 295
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_85
    :goto_85
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 300
    :try_start_8d
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->produceGSPersonalSettingInfoValue()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_9d} :catch_c3

    .line 307
    :goto_9d
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v6, v1, v2, v3, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_30

    .line 274
    .restart local v7       #b:Landroid/graphics/Bitmap;
    .restart local v11       #file:Ljava/io/File;
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_ab
    move-exception v8

    .line 276
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_76

    .line 281
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_b0
    move-exception v8

    .line 283
    .local v8, e:Ljava/io/IOException;
    :try_start_b1
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_bc

    .line 285
    if-eqz v9, :cond_85

    .line 287
    :try_start_b6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_85

    .line 288
    :catch_ba
    move-exception v1

    goto :goto_85

    .line 285
    .end local v8           #e:Ljava/io/IOException;
    :catchall_bc
    move-exception v1

    if-eqz v9, :cond_c2

    .line 287
    :try_start_bf
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_184

    .line 290
    :cond_c2
    :goto_c2
    throw v1

    .line 302
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_c3
    move-exception v8

    .line 304
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9d

    .line 308
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_c8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_ee

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v6, v1, v2, v3, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_30

    .line 314
    :cond_ee
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    if-ne p1, v1, :cond_138

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 317
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_11f

    .line 318
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 319
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_11f
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_12a

    .line 323
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_30

    .line 325
    :cond_12a
    const-string v1, "sns--execute"

    const-string v2, "not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_30

    .line 328
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_138
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    if-ne p1, v1, :cond_30

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 331
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_169

    .line 332
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 333
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_169
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_174

    .line 336
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_30

    .line 338
    :cond_174
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_30

    .line 345
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    :catch_17b
    move-exception v8

    .line 347
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_38

    .line 288
    .end local v8           #e:Ljava/io/IOException;
    .restart local v7       #b:Landroid/graphics/Bitmap;
    .restart local v11       #file:Ljava/io/File;
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_181
    move-exception v1

    goto/16 :goto_85

    :catch_184
    move-exception v2

    goto/16 :goto_c2
.end method

.method public onDrag(FFFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 421
    return-void
.end method

.method public onDragEnd(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 425
    return-void
.end method

.method public onDragStart(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 417
    return-void
.end method

.method protected onHide()V
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_a

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 411
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 412
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 413
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 475
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 472
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 458
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 459
    const-string v0, "wenfeng"

    const-string v1, " show TwGLUserProfile on Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v0, :cond_2f

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 464
    :goto_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onReset()V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->onLayoutUpdate()V

    .line 467
    return-void

    .line 463
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method protected onShow()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/high16 v3, 0x42d0

    const/high16 v2, 0x41b0

    const/high16 v4, 0x42a0

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setListBackgrouond(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 374
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const-string v6, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setSampleSize(I)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 392
    :goto_44
    const-string v0, "wenfeng"

    const-string v1, " user profile onshow "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v0, :cond_bd

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 397
    :goto_5e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x43d58000

    const/high16 v2, 0x4391

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_72

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 403
    :cond_72
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 404
    return-void

    .line 380
    :cond_76
    new-instance v7, Ljava/io/File;

    const-string v0, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 382
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const-string v6, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    .line 385
    :goto_93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setSampleSize(I)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_44

    .line 384
    :cond_ac
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f020182

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    goto :goto_93

    .line 396
    .end local v7           #f:Ljava/io/File;
    :cond_bd
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_5e
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 453
    return-void
.end method

.method protected produceGSPersonalSettingInfoValue()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 218
    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 219
    .local v2, personalInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 221
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 226
    :cond_2c
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 231
    :goto_30
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_4a

    .line 241
    :goto_37
    return-object v2

    .line 228
    :cond_38
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_30

    .line 233
    :pswitch_3c
    const v3, 0x7f020182

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_37

    .line 236
    :pswitch_43
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_37

    .line 231
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_43
    .end packed-switch
.end method

.method public setListBackgrouond(I)V
    .registers 4
    .parameter "zOrder"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 253
    return-void
.end method
