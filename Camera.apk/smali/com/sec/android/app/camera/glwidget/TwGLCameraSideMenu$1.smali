.class Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu$1;
.super Ljava/lang/Object;
.source "TwGLCameraSideMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .registers 4
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 144
    if-ne p1, v1, :cond_15

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->lockButton(Z)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    .line 148
    :cond_15
    return-void
.end method
