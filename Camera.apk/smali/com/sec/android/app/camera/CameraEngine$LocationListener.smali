.class Lcom/sec/android/app/camera/CameraEngine$LocationListener;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mValidOfGPS:I

.field mValidOfNetwork:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "provider"

    .prologue
    const/4 v0, 0x1

    .line 2050
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2047
    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 2048
    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    .line 2051
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 2052
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 2115
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-ne v0, v1, :cond_c

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "newLocation"

    .prologue
    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    .line 2056
    const-string v0, "CameraEngine"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_26

    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_27

    .line 2071
    :cond_26
    :goto_26
    return-void

    .line 2064
    :cond_27
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2065
    iput v4, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 2069
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->updateGPSIndicator()V

    .line 2070
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_26

    .line 2066
    :cond_3e
    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2067
    iput v4, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    goto :goto_35
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .parameter "provider"

    .prologue
    const/4 v1, 0x1

    .line 2077
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2078
    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 2082
    :cond_b
    :goto_b
    return-void

    .line 2079
    :cond_c
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2080
    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    goto :goto_b
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 2074
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 2085
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged - status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - provider["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_2f

    .line 2096
    :goto_2e
    return-void

    .line 2089
    :cond_2f
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2090
    iput p2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    .line 2092
    :cond_39
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2093
    iput p2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    .line 2095
    :cond_43
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->updateGPSIndicator()V

    goto :goto_2e
.end method

.method public updateGPSIndicator()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2099
    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-ne v2, v6, :cond_31

    move v2, v3

    :goto_8
    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-ne v5, v6, :cond_33

    move v5, v3

    :goto_d
    or-int v0, v2, v5

    .line 2100
    .local v0, connected:Z
    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfGPS:I

    if-nez v2, :cond_35

    move v2, v3

    :goto_14
    iget v5, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->mValidOfNetwork:I

    if-nez v5, :cond_37

    move v5, v3

    :goto_19
    and-int v1, v2, v5

    .line 2102
    .local v1, disconnected:Z
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v2

    if-ne v2, v3, :cond_30

    .line 2103
    if-eqz v1, :cond_39

    .line 2104
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    .line 2111
    :cond_30
    :goto_30
    return-void

    .end local v0           #connected:Z
    .end local v1           #disconnected:Z
    :cond_31
    move v2, v4

    .line 2099
    goto :goto_8

    :cond_33
    move v5, v4

    goto :goto_d

    .restart local v0       #connected:Z
    :cond_35
    move v2, v4

    .line 2100
    goto :goto_14

    :cond_37
    move v5, v4

    goto :goto_19

    .line 2105
    .restart local v1       #disconnected:Z
    :cond_39
    if-eqz v0, :cond_45

    .line 2106
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    goto :goto_30

    .line 2108
    :cond_45
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->setConnectingStateGPS(I)V

    goto :goto_30
.end method
