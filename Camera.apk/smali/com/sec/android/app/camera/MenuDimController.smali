.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ADJUST:I = 0xd

.field public static final ANTI_SHAKING:I = 0x2

.field public static final AUTOCONTRAST:I = 0x4

.field public static final BLINK_DETECTION:I = 0x13

.field public static final BRIGHTNESS:I = 0x3

.field public static final CAMCORDER_ADJUST:I = 0x20

.field public static final CAMCORDER_AUTOCONTRAST:I = 0x25

.field public static final CAMCORDER_EFEECT:I = 0x1e

.field public static final CAMCORDER_EXPOSURE_VALUE:I = 0x1c

.field public static final CAMCORDER_FLASH_MODE:I = 0x24

.field public static final CAMCORDER_MODE_SWITCH:I = 0x19

.field public static final CAMCORDER_RESOLUTION:I = 0x1d

.field public static final CAMCORDER_REVIEW:I = 0x21

.field public static final CAMCORDER_SCENE_MODE:I = 0x1b

.field public static final CAMCORDER_STORAGE:I = 0x22

.field public static final CAMCORDER_WHITEBALANCE:I = 0x1f

.field public static final CAMCORDER_ZOOM:I = 0x26

.field public static final CAMERA_MODE_SWITCH:I = 0x0

.field public static final CAMERA_SELF_SWITCH:I = 0x1

.field public static final DEVICELIST:I = 0x29

.field public static final EFFECT:I = 0x8

.field public static final EXPOSURE_VALUE:I = 0x10

.field public static final FLASH_MODE:I = 0xb

.field public static final FLIP:I = 0x27

.field public static final FOCUS_MODE:I = 0xc

.field public static final GUIDELINE:I = 0x17

.field public static final IMAGE_VIEWER:I = 0x18

.field public static final ISO:I = 0x7

.field public static final METERING:I = 0xe

.field public static final NUM_OF_DIM_BUTTONS:I = 0x2b

.field public static final OBJECT_TRACKING:I = 0xf

.field public static final RECORDING_MODE:I = 0x1a

.field public static final REFRESH:I = 0x2a

.field public static final RESOLUTION:I = 0x11

.field public static final REVIEW:I = 0x15

.field public static final SCENE_MODE:I = 0x5

.field public static final SHOOTANDSHARE:I = 0x28

.field public static final SHOOTING_MODE:I = 0x6

.field public static final SHUTTER_SOUND:I = 0x23

.field public static final SMILE_SHOT:I = 0xa

.field public static final STORAGE:I = 0x16

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final TIMER:I = 0x14

.field public static final WHITEBALANCE:I = 0x12

.field public static final ZOOM:I = 0x9


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSceneModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFlashDimmed:Z

.field private mLowBattery:Z

.field private mPreviousFlashValue:I

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 4
    .parameter "activityContext"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x2b

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 92
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    return v0
.end method

.method private getkeyFromCommandId(I)I
    .registers 3
    .parameter "commandId"

    .prologue
    .line 548
    const/4 v0, -0x1

    .line 550
    .local v0, key:I
    sparse-switch p1, :sswitch_data_6a

    .line 663
    :goto_4
    return v0

    .line 552
    :sswitch_5
    const/4 v0, 0x0

    .line 553
    goto :goto_4

    .line 555
    :sswitch_7
    const/4 v0, 0x6

    .line 556
    goto :goto_4

    .line 558
    :sswitch_9
    const/4 v0, 0x5

    .line 559
    goto :goto_4

    .line 561
    :sswitch_b
    const/16 v0, 0xb

    .line 562
    goto :goto_4

    .line 564
    :sswitch_e
    const/16 v0, 0x11

    .line 565
    goto :goto_4

    .line 567
    :sswitch_11
    const/16 v0, 0xc

    .line 568
    goto :goto_4

    .line 570
    :sswitch_14
    const/16 v0, 0x14

    .line 571
    goto :goto_4

    .line 573
    :sswitch_17
    const/16 v0, 0x10

    .line 574
    goto :goto_4

    .line 576
    :sswitch_1a
    const/16 v0, 0x8

    .line 577
    goto :goto_4

    .line 579
    :sswitch_1d
    const/16 v0, 0x12

    .line 580
    goto :goto_4

    .line 582
    :sswitch_20
    const/4 v0, 0x7

    .line 583
    goto :goto_4

    .line 585
    :sswitch_22
    const/16 v0, 0xe

    .line 586
    goto :goto_4

    .line 588
    :sswitch_25
    const/16 v0, 0xf

    .line 589
    goto :goto_4

    .line 591
    :sswitch_28
    const/4 v0, 0x2

    .line 592
    goto :goto_4

    .line 594
    :sswitch_2a
    const/4 v0, 0x4

    .line 595
    goto :goto_4

    .line 597
    :sswitch_2c
    const/16 v0, 0x13

    .line 598
    goto :goto_4

    .line 600
    :sswitch_2f
    const/16 v0, 0x15

    .line 601
    goto :goto_4

    .line 603
    :sswitch_32
    const/16 v0, 0x9

    .line 604
    goto :goto_4

    .line 606
    :sswitch_35
    const/16 v0, 0x17

    .line 607
    goto :goto_4

    .line 609
    :sswitch_38
    const/16 v0, 0x16

    .line 610
    goto :goto_4

    .line 612
    :sswitch_3b
    const/16 v0, 0x18

    .line 613
    goto :goto_4

    .line 615
    :sswitch_3e
    const/4 v0, 0x1

    .line 616
    goto :goto_4

    .line 618
    :sswitch_40
    const/16 v0, 0x19

    .line 619
    goto :goto_4

    .line 621
    :sswitch_43
    const/16 v0, 0x1a

    .line 622
    goto :goto_4

    .line 624
    :sswitch_46
    const/16 v0, 0x1d

    .line 625
    goto :goto_4

    .line 627
    :sswitch_49
    const/16 v0, 0x1f

    .line 628
    goto :goto_4

    .line 630
    :sswitch_4c
    const/16 v0, 0x1e

    .line 631
    goto :goto_4

    .line 633
    :sswitch_4f
    const/16 v0, 0x1c

    .line 634
    goto :goto_4

    .line 636
    :sswitch_52
    const/16 v0, 0x21

    .line 637
    goto :goto_4

    .line 639
    :sswitch_55
    const/16 v0, 0x22

    .line 640
    goto :goto_4

    .line 642
    :sswitch_58
    const/16 v0, 0x24

    .line 643
    goto :goto_4

    .line 645
    :sswitch_5b
    const/16 v0, 0x25

    .line 646
    goto :goto_4

    .line 648
    :sswitch_5e
    const/16 v0, 0x29

    .line 649
    goto :goto_4

    .line 651
    :sswitch_61
    const/16 v0, 0x2a

    .line 652
    goto :goto_4

    .line 654
    :sswitch_64
    const/16 v0, 0x28

    .line 655
    goto :goto_4

    .line 657
    :sswitch_67
    const/16 v0, 0x27

    .line 658
    goto :goto_4

    .line 550
    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_7
        0x2 -> :sswitch_9
        0x3 -> :sswitch_b
        0x4 -> :sswitch_e
        0x5 -> :sswitch_11
        0x6 -> :sswitch_14
        0x7 -> :sswitch_17
        0x8 -> :sswitch_1a
        0x9 -> :sswitch_1d
        0xa -> :sswitch_20
        0xb -> :sswitch_22
        0xc -> :sswitch_25
        0xd -> :sswitch_28
        0xe -> :sswitch_2a
        0xf -> :sswitch_2c
        0x11 -> :sswitch_2f
        0x12 -> :sswitch_32
        0x13 -> :sswitch_35
        0x16 -> :sswitch_38
        0x1d -> :sswitch_3b
        0x24 -> :sswitch_3e
        0x33 -> :sswitch_67
        0x35 -> :sswitch_64
        0x36 -> :sswitch_5e
        0x37 -> :sswitch_61
        0xbb8 -> :sswitch_40
        0xbb9 -> :sswitch_43
        0xbbb -> :sswitch_58
        0xbbc -> :sswitch_46
        0xbbf -> :sswitch_49
        0xbc0 -> :sswitch_4c
        0xbc1 -> :sswitch_4f
        0xbc2 -> :sswitch_5b
        0xbc9 -> :sswitch_55
        0xbcd -> :sswitch_52
    .end sparse-switch
.end method

.method private merge([Z)V
    .registers 6
    .parameter "array"

    .prologue
    .line 1101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x2b

    if-ge v0, v1, :cond_13

    .line 1102
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1104
    :cond_13
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 540
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 541
    monitor-exit p0

    return-void

    .line 540
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelFlashDimmed(I)V
    .registers 7
    .parameter "menuid"

    .prologue
    const/4 v4, 0x0

    .line 1076
    const-string v1, "MenuDimController"

    const-string v2, "unset flash dim by external"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v0, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 1078
    .local v0, dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    const-string v1, "MenuDimController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dimArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 1080
    const/16 v1, 0x24

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 1082
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    return-void
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 529
    monitor-exit p0

    return-void

    .line 527
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDimArray([Z)V
    .registers 5
    .parameter "dimArray"

    .prologue
    const/4 v2, 0x0

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x2b

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    return-void
.end method

.method public getIsFlashDimmed()Z
    .registers 2

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    return v0
.end method

.method public getLowBatteryStatus()Z
    .registers 2

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    return v0
.end method

.method public processDim()V
    .registers 5

    .prologue
    .line 1086
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x2b

    if-ge v0, v2, :cond_c

    .line 1087
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1090
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    monitor-enter v3

    .line 1091
    :try_start_f
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1092
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1093
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_19

    .line 1095
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_2d

    throw v2

    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :cond_30
    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2d

    .line 1097
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1098
    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)Z
    .registers 11
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 703
    monitor-enter p0

    :try_start_3
    const-string v3, "MenuDimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshButtonDim: menuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modeid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v2, 0x0

    .line 706
    .local v2, resolutionChanged:Z
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 707
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 709
    .local v1, dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_68

    .line 710
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)Z

    move-result v2

    .line 711
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v4, "MenuDimController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoring user setting values. resolutionChanged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_ad

    const-string v3, "true"

    :goto_5d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_68
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 716
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_506

    .line 1038
    :cond_70
    :goto_70
    :sswitch_70
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    if-eqz v3, :cond_88

    .line 1039
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 1040
    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 1041
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1042
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1045
    :cond_88
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    if-eqz v3, :cond_9f

    .line 1046
    const-string v3, "MenuDimController"

    const-string v4, "set flash dim by external"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 1048
    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 1051
    :cond_9f
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V
    :try_end_ab
    .catchall {:try_start_3 .. :try_end_ab} :catchall_c4

    .line 1055
    monitor-exit p0

    return v2

    .line 712
    :cond_ad
    :try_start_ad
    const-string v3, "false"

    goto :goto_5d

    .line 718
    :sswitch_b0
    packed-switch p2, :pswitch_data_538

    :pswitch_b3
    goto :goto_70

    .line 822
    :pswitch_b4
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x27

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 823
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V
    :try_end_c3
    .catchall {:try_start_ad .. :try_end_c3} :catchall_c4

    goto :goto_70

    .line 703
    .end local v0           #cs:Lcom/sec/android/app/camera/CameraSettings;
    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    .end local v2           #resolutionChanged:Z
    :catchall_c4
    move-exception v3

    monitor-exit p0

    throw v3

    .line 720
    .restart local v0       #cs:Lcom/sec/android/app/camera/CameraSettings;
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    .restart local v2       #resolutionChanged:Z
    :pswitch_c7
    const/16 v3, 0x8

    :try_start_c9
    new-array v3, v3, [I

    fill-array-data v3, :array_55a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 722
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_56e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 725
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_70

    .line 726
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_70

    .line 730
    :pswitch_e6
    const/16 v3, 0xf

    new-array v3, v3, [I

    fill-array-data v3, :array_580

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 732
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_5a2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 734
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 735
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto/16 :goto_70

    .line 738
    :pswitch_104
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_5be

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 740
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_5da

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 745
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 746
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    goto/16 :goto_70

    .line 749
    :pswitch_122
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_5f2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 751
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_606

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 755
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_70

    .line 758
    :pswitch_13b
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_618

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 760
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_62a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_70

    .line 763
    :pswitch_14f
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_63c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 765
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_65c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 770
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_70

    .line 773
    :pswitch_169
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_678

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 775
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_692

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 780
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_70

    .line 783
    :pswitch_183
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_6aa

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 785
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_6c8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 787
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_70

    .line 791
    :pswitch_19d
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_6e2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 793
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_6f6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 797
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_70

    .line 800
    :pswitch_1b6
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_706

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 803
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_726

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 805
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 806
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_70

    .line 810
    :pswitch_1d4
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_740

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 812
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_75e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 817
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_70

    .line 829
    :sswitch_1ee
    if-eqz p2, :cond_373

    .line 831
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v3, :cond_1fd

    .line 832
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 833
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 836
    :cond_1fd
    packed-switch p2, :pswitch_data_774

    .line 927
    :goto_200
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 928
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    goto/16 :goto_70

    .line 839
    :pswitch_20a
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_792

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 840
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_7aa

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 842
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 848
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_200

    .line 851
    :pswitch_226
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_7ba

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 852
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_7d4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 853
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 854
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_200

    .line 857
    :pswitch_242
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_7e2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 858
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_7fc

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 860
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_200

    .line 863
    :pswitch_25a
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_80c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 864
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_824

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 865
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 866
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_200

    .line 869
    :pswitch_276
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_834

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 870
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_84e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 871
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 872
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 873
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 876
    :pswitch_297
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_85c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 877
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_876

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 878
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 879
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 882
    :pswitch_2b4
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_886

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 883
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_8a0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 884
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 885
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 888
    :pswitch_2d1
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_8b0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 889
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_8ca

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 890
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 893
    :pswitch_2ea
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_8da

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 894
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_8f4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 896
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 899
    :pswitch_303
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_904

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 900
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_91e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 901
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 902
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 905
    :pswitch_320
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_92e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 906
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_946

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 910
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 911
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 914
    :pswitch_33d
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_956

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 915
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_970

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 916
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 917
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 920
    :pswitch_35a
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_980

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 921
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_998

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 922
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_200

    .line 931
    :cond_373
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v3, :cond_70

    .line 932
    iget v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 933
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_70

    .line 938
    :sswitch_381
    if-eqz p2, :cond_70

    .line 939
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 940
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    goto/16 :goto_70

    .line 952
    :sswitch_393
    if-ne p2, v6, :cond_70

    .line 953
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_9a6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 954
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_9ae

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_70

    .line 958
    :sswitch_3a9
    if-ne p2, v6, :cond_3bf

    .line 959
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_9b6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 960
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 961
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    goto/16 :goto_70

    .line 962
    :cond_3bf
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3fa

    .line 963
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_3e1

    .line 964
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_9be

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 965
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 966
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_9cc

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_70

    .line 968
    :cond_3e1
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_9d8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 969
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    .line 970
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_9e6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_70

    .line 972
    :cond_3fa
    if-nez p2, :cond_70

    .line 973
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x27

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 974
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    .line 975
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 976
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1d

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 977
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto/16 :goto_70

    .line 982
    :sswitch_429
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_70

    .line 983
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_70

    .line 987
    :sswitch_43c
    if-ne p2, v6, :cond_470

    .line 988
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v3

    if-nez v3, :cond_44f

    .line 989
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_9f2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_70

    .line 991
    :cond_44f
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_465

    .line 992
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_9fc

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 993
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto/16 :goto_70

    .line 995
    :cond_465
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_a0a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_70

    .line 998
    :cond_470
    if-ne p2, v7, :cond_486

    .line 999
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_a16

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1001
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_a26

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_70

    .line 1002
    :cond_486
    const/4 v3, 0x3

    if-ne p2, v3, :cond_499

    .line 1003
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_a2e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1004
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_70

    .line 1006
    :cond_499
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_70

    .line 1010
    :sswitch_4a6
    if-nez p2, :cond_70

    .line 1011
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x18

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_70

    .line 1015
    :sswitch_4b5
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_70

    .line 1016
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x22

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_70

    .line 1020
    :sswitch_4c8
    const/16 v3, 0xd

    if-ne p2, v3, :cond_70

    .line 1021
    const/16 v3, 0x70

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    .line 1022
    #getter for: Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->access$300(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z

    move-result-object v3

    const/16 v4, 0x26

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 1023
    #getter for: Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->access$400(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z

    move-result-object v3

    const/16 v4, 0x26

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 1024
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x26

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_70

    .line 1028
    :sswitch_4f4
    if-nez p2, :cond_4fe

    .line 1029
    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_70

    .line 1031
    :cond_4fe
    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V
    :try_end_504
    .catchall {:try_start_c9 .. :try_end_504} :catchall_c4

    goto/16 :goto_70

    .line 716
    :sswitch_data_506
    .sparse-switch
        0x0 -> :sswitch_43c
        0x1 -> :sswitch_b0
        0x2 -> :sswitch_1ee
        0xa -> :sswitch_381
        0xd -> :sswitch_70
        0xe -> :sswitch_393
        0x16 -> :sswitch_429
        0x1d -> :sswitch_4a6
        0x27 -> :sswitch_4f4
        0x65 -> :sswitch_3a9
        0x68 -> :sswitch_4c8
        0x75 -> :sswitch_4b5
    .end sparse-switch

    .line 718
    :pswitch_data_538
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_c7
        :pswitch_e6
        :pswitch_104
        :pswitch_b3
        :pswitch_b3
        :pswitch_1b6
        :pswitch_122
        :pswitch_13b
        :pswitch_14f
        :pswitch_183
        :pswitch_19d
        :pswitch_b3
        :pswitch_169
        :pswitch_1d4
    .end packed-switch

    .line 720
    :array_55a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 722
    :array_56e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 730
    :array_580
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 732
    :array_5a2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 738
    :array_5be
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 740
    :array_5da
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 749
    :array_5f2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 751
    :array_606
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 758
    :array_618
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 760
    :array_62a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 763
    :array_63c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 765
    :array_65c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 773
    :array_678
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 775
    :array_692
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 783
    :array_6aa
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 785
    :array_6c8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 791
    :array_6e2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 793
    :array_6f6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 800
    :array_706
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 803
    :array_726
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 810
    :array_740
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 812
    :array_75e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 836
    :pswitch_data_774
    .packed-switch 0x1
        :pswitch_20a
        :pswitch_226
        :pswitch_2ea
        :pswitch_242
        :pswitch_25a
        :pswitch_276
        :pswitch_297
        :pswitch_2b4
        :pswitch_2d1
        :pswitch_303
        :pswitch_320
        :pswitch_33d
        :pswitch_35a
    .end packed-switch

    .line 839
    :array_792
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 840
    :array_7aa
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 851
    :array_7ba
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 852
    :array_7d4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 857
    :array_7e2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 858
    :array_7fc
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 863
    :array_80c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 864
    :array_824
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 869
    :array_834
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 870
    :array_84e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 876
    :array_85c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 877
    :array_876
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 882
    :array_886
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 883
    :array_8a0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 888
    :array_8b0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 889
    :array_8ca
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 893
    :array_8da
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 894
    :array_8f4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 899
    :array_904
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 900
    :array_91e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 905
    :array_92e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 906
    :array_946
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 914
    :array_956
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 915
    :array_970
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 920
    :array_980
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 921
    :array_998
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 953
    :array_9a6
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 954
    :array_9ae
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 959
    :array_9b6
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    .line 964
    :array_9be
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 966
    :array_9cc
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 968
    :array_9d8
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 970
    :array_9e6
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 989
    :array_9f2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 992
    :array_9fc
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 995
    :array_a0a
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 999
    :array_a16
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1001
    :array_a26
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1003
    :array_a2e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 544
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 545
    monitor-exit p0

    return-void

    .line 544
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .registers 3

    .prologue
    .line 667
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 670
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    const/16 v1, 0x2b

    if-ge v0, v1, :cond_16

    .line 671
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 673
    :cond_16
    return-void
.end method

.method public restoreUserSettingValues()V
    .registers 4

    .prologue
    .line 682
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 683
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)Z

    goto :goto_a

    .line 686
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 687
    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .registers 4
    .parameter "key"
    .parameter "dimmed"

    .prologue
    .line 676
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 679
    :cond_a
    monitor-exit p0

    return-void

    .line 676
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .registers 5
    .parameter "dimArray"

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x2b

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    return-void
.end method

.method public setIsFlashDimmed(Z)V
    .registers 2
    .parameter "isflashDimmed"

    .prologue
    .line 1068
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 1069
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .registers 2
    .parameter "lowBattery"

    .prologue
    .line 1059
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 1060
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .registers 11
    .parameter "indices"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1108
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 1110
    .local v1, cs:Lcom/sec/android/app/camera/CameraSettings;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v4, :cond_72

    aget v3, v0, v2

    .line 1111
    .local v3, index:I
    packed-switch v3, :pswitch_data_74

    .line 1110
    :goto_13
    :pswitch_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1113
    :pswitch_16
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_13

    .line 1117
    :pswitch_1a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_13

    .line 1121
    :pswitch_1e
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    goto :goto_13

    .line 1127
    :pswitch_22
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_13

    .line 1130
    :pswitch_26
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto :goto_13

    .line 1133
    :pswitch_2a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    goto :goto_13

    .line 1141
    :pswitch_2e
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 1142
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 1143
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    goto :goto_13

    .line 1146
    :pswitch_38
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto :goto_13

    .line 1149
    :pswitch_3c
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    goto :goto_13

    .line 1152
    :pswitch_40
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_13

    .line 1155
    :pswitch_44
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_13

    .line 1158
    :pswitch_48
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto :goto_13

    .line 1161
    :pswitch_4c
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto :goto_13

    .line 1164
    :pswitch_50
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    goto :goto_13

    .line 1167
    :pswitch_54
    const/16 v5, 0x12

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)V

    goto :goto_13

    .line 1170
    :pswitch_5a
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    goto :goto_13

    .line 1173
    :pswitch_5e
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    goto :goto_13

    .line 1177
    :pswitch_62
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto :goto_13

    .line 1181
    :pswitch_66
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto :goto_13

    .line 1184
    :pswitch_6a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_13

    .line 1187
    :pswitch_6e
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    goto :goto_13

    .line 1194
    .end local v3           #index:I
    :cond_72
    return-void

    .line 1111
    nop

    :pswitch_data_74
    .packed-switch 0x2
        :pswitch_5e
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_1e
        :pswitch_3c
        :pswitch_13
        :pswitch_13
        :pswitch_1a
        :pswitch_22
        :pswitch_2e
        :pswitch_26
        :pswitch_13
        :pswitch_38
        :pswitch_13
        :pswitch_40
        :pswitch_2a
        :pswitch_44
        :pswitch_4c
        :pswitch_13
        :pswitch_48
        :pswitch_13
        :pswitch_13
        :pswitch_50
        :pswitch_13
        :pswitch_13
        :pswitch_54
        :pswitch_13
        :pswitch_6a
        :pswitch_13
        :pswitch_5a
        :pswitch_13
        :pswitch_13
        :pswitch_62
        :pswitch_13
        :pswitch_66
        :pswitch_6e
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .registers 6

    .prologue
    .line 690
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v3, 0x2b

    if-ge v0, v3, :cond_3a

    .line 691
    :try_start_6
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 692
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v0, :cond_c

    .line 693
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getDim()Z

    move-result v4

    if-eq v3, v4, :cond_c

    .line 694
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_34

    goto :goto_c

    .line 690
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 699
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3a
    monitor-exit p0

    return-void
.end method
