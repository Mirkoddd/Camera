.class public Lcom/sec/android/app/camera/ImageSavingUtils;
.super Ljava/lang/Object;
.source "ImageSavingUtils.java"


# static fields
.field protected static final CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String; = null

.field protected static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String; = null

.field protected static final CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String; = null

.field protected static final CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "ImageSavingUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z
    .registers 26
    .parameter "shootingMode"
    .parameter "directory"
    .parameter "filename"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "source"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "whiteBalance"
    .parameter "flashMode"

    .prologue
    .line 74
    const/4 v13, 0x0

    .line 77
    .local v13, outputStream:Ljava/io/OutputStream;
    :try_start_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v9, dir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    .line 79
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_11
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v12, file:Ljava/io/File;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_74
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1f} :catch_b1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_60

    .line 82
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .local v14, outputStream:Ljava/io/OutputStream;
    if-eqz p6, :cond_3a

    .line 83
    :try_start_21
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 89
    :cond_2a
    :goto_2a
    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setLastModified(J)Z
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2f} :catch_44
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_ae

    .line 98
    if-eqz v14, :cond_34

    .line 99
    :try_start_31
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_59

    .line 106
    :cond_34
    :goto_34
    packed-switch p0, :pswitch_data_b4

    .line 124
    :goto_37
    const/4 v3, 0x1

    move-object v13, v14

    .end local v9           #dir:Ljava/io/File;
    .end local v12           #file:Ljava/io/File;
    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    :cond_39
    :goto_39
    return v3

    .line 85
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .restart local v9       #dir:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    :cond_3a
    if-eqz v14, :cond_2a

    if-eqz p7, :cond_2a

    .line 86
    :try_start_3e
    move-object/from16 v0, p7

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_ae

    goto :goto_2a

    .line 90
    :catch_44
    move-exception v11

    move-object v13, v14

    .line 91
    .end local v9           #dir:Ljava/io/File;
    .end local v12           #file:Ljava/io/File;
    .end local v14           #outputStream:Ljava/io/OutputStream;
    .local v11, ex:Ljava/io/FileNotFoundException;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    :goto_46
    :try_start_46
    const-string v3, "ImageSavingUtils"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_74

    .line 92
    const/4 v3, 0x0

    .line 98
    if-eqz v13, :cond_39

    .line 99
    :try_start_4e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_39

    .line 100
    :catch_52
    move-exception v10

    .line 102
    .local v10, e:Ljava/io/IOException;
    const-string v4, "ImageSavingUtils"

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 100
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #ex:Ljava/io/FileNotFoundException;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .restart local v9       #dir:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    :catch_59
    move-exception v10

    .line 102
    .restart local v10       #e:Ljava/io/IOException;
    const-string v3, "ImageSavingUtils"

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 93
    .end local v9           #dir:Ljava/io/File;
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #file:Ljava/io/File;
    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    :catch_60
    move-exception v11

    .line 94
    .local v11, ex:Ljava/io/IOException;
    :goto_61
    :try_start_61
    const-string v3, "ImageSavingUtils"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_74

    .line 95
    const/4 v3, 0x0

    .line 98
    if-eqz v13, :cond_39

    .line 99
    :try_start_69
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_39

    .line 100
    :catch_6d
    move-exception v10

    .line 102
    .restart local v10       #e:Ljava/io/IOException;
    const-string v4, "ImageSavingUtils"

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 97
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #ex:Ljava/io/IOException;
    :catchall_74
    move-exception v3

    .line 98
    :goto_75
    if-eqz v13, :cond_7a

    .line 99
    :try_start_77
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 103
    :cond_7a
    :goto_7a
    throw v3

    .line 100
    :catch_7b
    move-exception v10

    .line 102
    .restart local v10       #e:Ljava/io/IOException;
    const-string v4, "ImageSavingUtils"

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 109
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .restart local v9       #dir:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    :pswitch_82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, filePath:Ljava/lang/String;
    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    .line 110
    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/camera/ImageSavingUtils;->setExif(Ljava/lang/String;JLandroid/location/Location;III)V

    goto :goto_37

    .line 97
    .end local v2           #filePath:Ljava/lang/String;
    :catchall_ab
    move-exception v3

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    goto :goto_75

    .line 93
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    :catch_ae
    move-exception v11

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    goto :goto_61

    .line 90
    .end local v9           #dir:Ljava/io/File;
    .end local v12           #file:Ljava/io/File;
    :catch_b1
    move-exception v11

    goto :goto_46

    .line 106
    nop

    :pswitch_data_b4
    .packed-switch 0x4
        :pswitch_82
        :pswitch_82
    .end packed-switch
.end method

.method public static convertGpsToExif(D)Ljava/lang/String;
    .registers 14
    .parameter "location"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 210
    invoke-static {p0, p1, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, sec:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, value:[Ljava/lang/String;
    array-length v6, v5

    if-eq v6, v7, :cond_13

    .line 213
    const/4 v6, 0x0

    .line 219
    :goto_12
    return-object v6

    .line 215
    :cond_13
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, m:I
    aget-object v6, v5, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, d:I
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 219
    .local v2, s:D
    const-string v6, "%d/1,%d/1,%d/10000"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v8, v2

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_12
.end method

.method public static createName(J)Ljava/lang/String;
    .registers 3
    .parameter "dateTaken"

    .prologue
    .line 59
    const-string v0, "yyyyMMdd_kkmmss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JI)Ljava/lang/String;
    .registers 5
    .parameter "dateTaken"
    .parameter "sequenceNumber"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setExif(Ljava/lang/String;JLandroid/location/Location;III)V
    .registers 32
    .parameter "filePath"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "whiteBalance"
    .parameter "flashMode"

    .prologue
    .line 134
    const/4 v9, 0x0

    .line 136
    .local v9, exif:Landroid/media/ExifInterface;
    :try_start_1
    new-instance v10, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_c

    .line 142
    .end local v9           #exif:Landroid/media/ExifInterface;
    .local v10, exif:Landroid/media/ExifInterface;
    if-nez v10, :cond_19

    move-object v9, v10

    .line 206
    .end local v10           #exif:Landroid/media/ExifInterface;
    .restart local v9       #exif:Landroid/media/ExifInterface;
    :goto_b
    return-void

    .line 137
    :catch_c
    move-exception v8

    .line 138
    .local v8, ex:Ljava/io/IOException;
    const-string v21, "ImageSavingUtils"

    const-string v22, "cannot read exif"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 146
    .end local v8           #ex:Ljava/io/IOException;
    .end local v9           #exif:Landroid/media/ExifInterface;
    .restart local v10       #exif:Landroid/media/ExifInterface;
    :cond_19
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .local v17, sdf:Ljava/text/SimpleDateFormat;
    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, sTaken:Ljava/lang/String;
    const-string v21, "DateTime"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eqz p3, :cond_88

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    .line 152
    .local v12, lat:D
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object v18

    .line 153
    .local v18, slat:Ljava/lang/String;
    if-eqz v18, :cond_64

    .line 154
    const-string v21, "GPSLatitude"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v22, "GPSLatitudeRef"

    const-wide/16 v23, 0x0

    cmpl-double v21, v12, v23

    if-lez v21, :cond_dc

    const-string v21, "N"

    :goto_5d
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_64
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 159
    .local v14, lon:D
    invoke-static {v14, v15}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object v19

    .line 160
    .local v19, slon:Ljava/lang/String;
    if-eqz v19, :cond_88

    .line 161
    const-string v21, "GPSLongitude"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v22, "GPSLongitudeRef"

    const-wide/16 v23, 0x0

    cmpl-double v21, v14, v23

    if-lez v21, :cond_e0

    const-string v21, "E"

    :goto_81
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v12           #lat:D
    .end local v14           #lon:D
    .end local v18           #slat:Ljava/lang/String;
    .end local v19           #slon:Ljava/lang/String;
    :cond_88
    const-string v21, "Make"

    const-string v22, "SAMSUNG"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v21, "Model"

    const-string v22, "GT-I9100"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v21, "Orientation"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-nez p5, :cond_e3

    const/16 v20, 0x0

    .line 172
    .local v20, wb:I
    :goto_af
    const-string v21, "WhiteBalance"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v6, 0x0

    .line 175
    .local v6, EXIF_FLASH_UNKNOWN:I
    const/16 v5, 0x8

    .line 176
    .local v5, EXIF_FLASH_ON:I
    const/16 v4, 0x10

    .line 177
    .local v4, EXIF_FLASH_OFF:I
    const/16 v3, 0x18

    .line 178
    .local v3, EXIF_FLASH_AUTO:I
    const/16 v7, 0x20

    .line 182
    .local v7, EXIF_FLASH_UNSUPPORTED:I
    packed-switch p6, :pswitch_data_fc

    .line 194
    const/4 v11, 0x0

    .line 199
    .local v11, exifFlash:I
    :goto_c9
    const-string v21, "Flash"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_d6
    invoke-virtual {v10}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_ef

    :goto_d9
    move-object v9, v10

    .line 206
    .end local v10           #exif:Landroid/media/ExifInterface;
    .restart local v9       #exif:Landroid/media/ExifInterface;
    goto/16 :goto_b

    .line 155
    .end local v3           #EXIF_FLASH_AUTO:I
    .end local v4           #EXIF_FLASH_OFF:I
    .end local v5           #EXIF_FLASH_ON:I
    .end local v6           #EXIF_FLASH_UNKNOWN:I
    .end local v7           #EXIF_FLASH_UNSUPPORTED:I
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v11           #exifFlash:I
    .end local v20           #wb:I
    .restart local v10       #exif:Landroid/media/ExifInterface;
    .restart local v12       #lat:D
    .restart local v18       #slat:Ljava/lang/String;
    :cond_dc
    const-string v21, "S"

    goto/16 :goto_5d

    .line 162
    .restart local v14       #lon:D
    .restart local v19       #slon:Ljava/lang/String;
    :cond_e0
    const-string v21, "W"

    goto :goto_81

    .line 170
    .end local v12           #lat:D
    .end local v14           #lon:D
    .end local v18           #slat:Ljava/lang/String;
    .end local v19           #slon:Ljava/lang/String;
    :cond_e3
    const/16 v20, 0x1

    goto :goto_af

    .line 185
    .restart local v3       #EXIF_FLASH_AUTO:I
    .restart local v4       #EXIF_FLASH_OFF:I
    .restart local v5       #EXIF_FLASH_ON:I
    .restart local v6       #EXIF_FLASH_UNKNOWN:I
    .restart local v7       #EXIF_FLASH_UNSUPPORTED:I
    .restart local v20       #wb:I
    :pswitch_e6
    const/16 v11, 0x8

    .line 186
    .restart local v11       #exifFlash:I
    goto :goto_c9

    .line 188
    .end local v11           #exifFlash:I
    :pswitch_e9
    const/16 v11, 0x18

    .line 189
    .restart local v11       #exifFlash:I
    goto :goto_c9

    .line 191
    .end local v11           #exifFlash:I
    :pswitch_ec
    const/16 v11, 0x10

    .line 192
    .restart local v11       #exifFlash:I
    goto :goto_c9

    .line 203
    :catch_ef
    move-exception v8

    .line 204
    .restart local v8       #ex:Ljava/io/IOException;
    const-string v21, "ImageSavingUtils"

    const-string v22, "saveAttributes is failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d9

    .line 182
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_ec
        :pswitch_e6
        :pswitch_e9
        :pswitch_e6
    .end packed-switch
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .registers 8
    .parameter "cr"
    .parameter "uri"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    return-void
.end method
