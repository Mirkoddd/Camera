.class Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->initItems()V

    .line 117
    return-void
.end method

.method private initItems()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    .line 120
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v7, v1, :cond_80

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 122
    .local v4, itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 123
    .local v5, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    const/high16 v2, 0x43c8

    const/high16 v3, 0x428c

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 124
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 125
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 127
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_5d

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0xbc1

    if-ne v1, v2, :cond_61

    .line 128
    :cond_5d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 129
    :cond_61
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 130
    :try_start_68
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v2

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 131
    :catchall_7d
    move-exception v1

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_7d

    throw v1

    .line 133
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v4           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_80
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .registers 7
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 140
    if-nez p2, :cond_2c

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    .line 142
    .local v0, itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 143
    :try_start_13
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    monitor-exit v2

    .line 146
    .end local v0           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :goto_28
    return-object v1

    .line 144
    .restart local v0       #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_29

    throw v1

    .end local v0           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_2c
    move-object v1, p2

    .line 146
    goto :goto_28
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 151
    return-void
.end method
