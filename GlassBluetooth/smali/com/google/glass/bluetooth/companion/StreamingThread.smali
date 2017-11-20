.class public Lcom/google/glass/bluetooth/companion/StreamingThread;
.super Ljava/lang/Thread;
.source "StreamingThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/companion/StreamingThread$1;,
        Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;,
        Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;
    }
.end annotation


# static fields
.field private static final COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final COMPRESS_QUALITY:I = 0x55

.field public static final FRAME_HEIGHT:I = 0x168
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FRAME_WIDTH:I = 0x280
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

.field private volatile isClosed:Z

.field private volatile isScreenOn:Z

.field private lastFrameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

.field private listener:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field private final screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/StreamingThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    sget-object v0, Lcom/google/glass/bluetooth/companion/StreamingThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "screenOnOffReceiver"

    .line 24
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/google/glass/bluetooth/companion/StreamingThread;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    new-instance v0, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    .line 55
    new-instance v0, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->lastFrameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isClosed:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    .line 75
    new-instance v0, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/companion/StreamingThread;Lcom/google/glass/bluetooth/companion/StreamingThread$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    .line 79
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->listener:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;

    .line 82
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/StreamingThread;->start()V

    .line 84
    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/bluetooth/companion/StreamingThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/StreamingThread;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/companion/StreamingThread;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/StreamingThread;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/companion/StreamingThread;)Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/StreamingThread;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private static fillEmptyScreenshot(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 203
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 205
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 206
    return-void
.end method

.method private isBufferChanged()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 174
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->lastFrameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v3

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->lastFrameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;->getByteArray()[B

    move-result-object v2

    .line 180
    .local v2, "lastBuffer":[B
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;->getByteArray()[B

    move-result-object v0

    .line 181
    .local v0, "currentBuffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 182
    aget-byte v4, v2, v1

    aget-byte v5, v0, v1

    if-ne v4, v5, :cond_0

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private waitWhileScreenOff()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    iget-boolean v2, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    if-nez v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-boolean v3, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isClosed:Z

    if-nez v3, :cond_0

    .line 159
    sget-object v1, Lcom/google/glass/bluetooth/companion/StreamingThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Sleep while the screen if off"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_0
    :try_start_2
    sget-object v1, Lcom/google/glass/bluetooth/companion/StreamingThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "End of sleeping: isScreenOn = %s, isClosed = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isClosed:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    monitor-exit v2

    .line 170
    :goto_1
    return v0

    .line 168
    :cond_0
    monitor-exit v2

    :cond_1
    move v0, v1

    .line 170
    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    sget-object v1, Lcom/google/glass/bluetooth/companion/StreamingThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "close StreamingThread"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isClosed:Z

    .line 192
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    monitor-enter v2

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 194
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/StreamingThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    :goto_0
    return-void

    .line 194
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/bluetooth/companion/StreamingThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted while waiting for screen streaming thread to join."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 88
    const/16 v5, 0x280

    const/16 v6, 0x168

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    .local v1, "screenshot":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/google/glass/bluetooth/companion/StreamingThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "start of StreamingThread"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    .line 95
    iget-boolean v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->stayAwake()V

    .line 100
    :cond_0
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 102
    const/4 v3, 0x0

    .line 104
    .local v3, "wasScreenOffBufferJustSent":Z
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isClosed:Z

    if-nez v5, :cond_6

    .line 107
    if-eqz v3, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/StreamingThread;->waitWhileScreenOff()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    :cond_2
    iget-boolean v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    if-eqz v5, :cond_4

    .line 115
    invoke-virtual {p0, v1}, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenshot(Landroid/graphics/Bitmap;)V

    .line 120
    :goto_1
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;->reset()V

    .line 121
    sget-object v5, Lcom/google/glass/bluetooth/companion/StreamingThread;->COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    iget-object v7, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 125
    if-nez v3, :cond_3

    iget-boolean v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    if-eqz v5, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/StreamingThread;->isBufferChanged()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    :cond_3
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;->size()I

    move-result v5

    new-array v0, v5, [B

    .line 134
    .local v0, "content":[B
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;->getByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-boolean v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    if-nez v5, :cond_5

    const/4 v3, 0x1

    .line 136
    :goto_2
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->listener:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;

    iget-boolean v6, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->isScreenOn:Z

    invoke-interface {v5, v0, v6}, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;->onNewScreenShot([BZ)V

    .line 138
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->lastFrameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    .line 139
    .local v2, "tempBuffer":Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    iput-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->lastFrameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;

    .line 140
    iput-object v2, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->frameBuffer:Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    .end local v0    # "content":[B
    .end local v2    # "tempBuffer":Lcom/google/glass/bluetooth/companion/TransparentByteArrayOutputStream;
    .end local v3    # "wasScreenOffBufferJustSent":Z
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 145
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    throw v4

    .line 117
    .restart local v3    # "wasScreenOffBufferJustSent":Z
    :cond_4
    :try_start_1
    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/StreamingThread;->fillEmptyScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .restart local v0    # "content":[B
    :cond_5
    move v3, v4

    .line 135
    goto :goto_2

    .line 143
    .end local v0    # "content":[B
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->screenOnOffReceiver:Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 145
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/StreamingThread;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 147
    sget-object v5, Lcom/google/glass/bluetooth/companion/StreamingThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "end of StreamingThread"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method protected screenshot(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 209
    const/16 v0, 0x280

    const/16 v1, 0x168

    invoke-static {p1, v0, v1}, Lcom/google/android/glass/hidden/HiddenSurface;->screenshot(Landroid/graphics/Bitmap;II)V

    .line 210
    return-void
.end method
