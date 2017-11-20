.class public Lcom/google/glass/camera/Picture;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field protected captureTimeMillis:J

.field protected filePath:Ljava/lang/String;

.field private final fileSaver:Lcom/google/glass/util/FileSaver;

.field protected idInSession:I

.field protected isFinalPictureSaved:Z

.field protected isFromViewfinderSession:Z

.field protected isGcam:Z

.field protected isGcamHqFallback:Z

.field protected jpegTimeMillis:J

.field protected location:Landroid/location/Location;

.field protected prepareCameraSavingsMillis:J

.field protected requestAbsoluteTimeMillis:J

.field protected requestTimeMillis:J

.field protected shutterTimeMillis:J

.field protected thumbnail:Landroid/graphics/Bitmap;

.field protected thumbnailTimeMillis:J

.field protected triggerType:Lcom/google/glass/camera/Picture$TriggerType;

.field protected wasFromScreenOff:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/glass/camera/Picture;-><init>(Lcom/google/glass/util/FileSaver;I)V

    .line 133
    iput-object v1, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/camera/Picture;-><init>(Lcom/google/glass/util/FileSaver;I)V

    .line 143
    iput-object p1, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/FileSaver;I)V
    .locals 3

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-object v0, Lcom/google/glass/camera/Picture$TriggerType;->BUTTON:Lcom/google/glass/camera/Picture$TriggerType;

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->triggerType:Lcom/google/glass/camera/Picture$TriggerType;

    .line 147
    sget-object v0, Lcom/google/glass/camera/CameraUtils;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v0, v0, Lcom/google/glass/camera/Size;->width:I

    sget-object v1, Lcom/google/glass/camera/CameraUtils;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v1, v1, Lcom/google/glass/camera/Size;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    .line 149
    iput-object p1, p0, Lcom/google/glass/camera/Picture;->fileSaver:Lcom/google/glass/util/FileSaver;

    .line 150
    iput p2, p0, Lcom/google/glass/camera/Picture;->idInSession:I

    .line 151
    return-void
.end method

.method private createFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 361
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 363
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->fileSaver:Lcom/google/glass/util/FileSaver;

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not generating file name because there is no file saver."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    .line 368
    :cond_0
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/glass/camera/Picture;->requestAbsoluteTimeMillis:J

    invoke-static {v2, v3}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ".jpg"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/google/glass/camera/Picture;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v1, v0}, Lcom/google/glass/util/FileSaver;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGcamType(Lcom/google/glass/camera/Picture;)Lcom/google/glass/camera/Picture$GcamType;
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    if-eqz v0, :cond_1

    .line 376
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcamHqFallback:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/camera/Picture$GcamType;->GCAM_HQ_FALLBACK:Lcom/google/glass/camera/Picture$GcamType;

    .line 378
    :goto_0
    return-object v0

    .line 376
    :cond_0
    sget-object v0, Lcom/google/glass/camera/Picture$GcamType;->GCAM:Lcom/google/glass/camera/Picture$GcamType;

    goto :goto_0

    .line 378
    :cond_1
    sget-object v0, Lcom/google/glass/camera/Picture$GcamType;->HQ:Lcom/google/glass/camera/Picture$GcamType;

    goto :goto_0
.end method


# virtual methods
.method public getCaptureTime()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/google/glass/camera/Picture;->createFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIdInSession()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/google/glass/camera/Picture;->idInSession:I

    return v0
.end method

.method public getIsFromViewfinderSession()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isFromViewfinderSession:Z

    return v0
.end method

.method public getJpegTime()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getPrepareCameraSavings()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->prepareCameraSavingsMillis:J

    return-wide v0
.end method

.method public getRequestTime()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    return-wide v0
.end method

.method public getShutterTime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    return-wide v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailTime()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    return-wide v0
.end method

.method public getTriggerType()Lcom/google/glass/camera/Picture$TriggerType;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->triggerType:Lcom/google/glass/camera/Picture$TriggerType;

    return-object v0
.end method

.method public isFinalPictureSaved()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isFinalPictureSaved:Z

    return v0
.end method

.method onJpegSaved(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 354
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 356
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/camera/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method saveJpeg(Landroid/content/Context;[B)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 325
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    .line 329
    iget-object v2, p0, Lcom/google/glass/camera/Picture;->fileSaver:Lcom/google/glass/util/FileSaver;

    if-nez v2, :cond_0

    .line 330
    sget-object v1, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not saving JPEG, because there is no file saver."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :goto_0
    return v0

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/Picture;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-static {p2}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/glass/camera/Picture;->isFinalPictureSaved:Z

    .line 335
    iget-boolean v2, p0, Lcom/google/glass/camera/Picture;->isFinalPictureSaved:Z

    if-eqz v2, :cond_1

    .line 336
    sget-object v2, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Saved JPEG-encoded picture in %s ms."

    new-array v4, v1, [Ljava/lang/Object;

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    .line 336
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/camera/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    sget-object v1, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to save JPEG."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method saveThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 311
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 313
    sget-object v0, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Copying thumbnail from gcam."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    .line 315
    return-void
.end method

.method saveThumbnail([BII)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 288
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    .line 292
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    if-eqz v0, :cond_1

    .line 293
    sget-object v0, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "saveThumbnail - isGCam true [just copying ARGB_8888 directly]."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 303
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Encoded picture thumbnail in %s ms."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    .line 303
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    return-void

    .line 297
    :cond_1
    sget-object v0, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "saveThumbnail - isGCam false [calling JNI to convert YUV to ARGB_8888]."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/google/glass/camera/CameraUtils;->populateFromYuv420Sp([BLandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/google/glass/camera/Picture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "populateFromYuv420Sp failed! Result may be corrupted."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setCaptureTimeNow()V
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    .line 252
    return-void
.end method

.method protected setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 400
    iput-object p1, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    .line 401
    return-void
.end method

.method protected setIdInSession(I)V
    .locals 0

    .prologue
    .line 392
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 393
    iput p1, p0, Lcom/google/glass/camera/Picture;->idInSession:I

    .line 394
    return-void
.end method

.method protected setIsFinalPictureSaved(Z)V
    .locals 0

    .prologue
    .line 385
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 386
    iput-boolean p1, p0, Lcom/google/glass/camera/Picture;->isFinalPictureSaved:Z

    .line 387
    return-void
.end method

.method setIsFromViewfinderSession(Z)V
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/google/glass/camera/Picture;->isFromViewfinderSession:Z

    .line 246
    return-void
.end method

.method setIsGcam(Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    .line 268
    return-void
.end method

.method setIsGcamHqFallback(Z)V
    .locals 0

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/google/glass/camera/Picture;->isGcamHqFallback:Z

    .line 273
    return-void
.end method

.method setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/glass/camera/Picture;->location:Landroid/location/Location;

    .line 278
    return-void
.end method

.method setPrepareCameraSavings(J)V
    .locals 0

    .prologue
    .line 262
    iput-wide p1, p0, Lcom/google/glass/camera/Picture;->prepareCameraSavingsMillis:J

    .line 263
    return-void
.end method

.method setRequestTime(J)V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Picture;->requestAbsoluteTimeMillis:J

    .line 257
    iput-wide p1, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    .line 258
    return-void
.end method

.method setTriggerType(Lcom/google/glass/camera/Picture$TriggerType;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/glass/camera/Picture;->triggerType:Lcom/google/glass/camera/Picture$TriggerType;

    .line 241
    return-void
.end method

.method public setWasFromScreenOff(Z)V
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/google/glass/camera/Picture;->wasFromScreenOff:Z

    .line 226
    return-void
.end method

.method public wasFromScreenOff()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->wasFromScreenOff:Z

    return v0
.end method
