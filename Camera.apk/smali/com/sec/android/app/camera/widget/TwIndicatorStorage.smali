.class public Lcom/sec/android/app/camera/widget/TwIndicatorStorage;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorStorage.java"


# static fields
.field public static final STORAGE_MMC:I = 0x1

.field public static final STORAGE_PHONE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->init(Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->init(Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorStorage:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, attr:Landroid/content/res/TypedArray;
    const v1, 0x7f02005b

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->addImageId(II)V

    .line 49
    const v1, 0x7f02005c

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->addImageId(II)V

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method public setStorage(I)V
    .registers 3
    .parameter "storage"

    .prologue
    .line 57
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    .line 62
    :cond_5
    :goto_5
    return-void

    .line 61
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->replaceBackground(I)V

    goto :goto_5
.end method
