.class Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;
.super Ljava/lang/Object;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .registers 3
    .parameter "step"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v0, :cond_12

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    .line 230
    :cond_12
    return-void
.end method
