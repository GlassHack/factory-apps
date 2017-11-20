.class Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;
.super Landroid/os/Handler;
.source "WallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/wallpaper/WallpaperHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperHelperHandler"
.end annotation


# static fields
.field private static final EXTRA_BITMAP_BYTES:Ljava/lang/String; = "bitmap_bytes"

.field private static final MSG_TYPE_GET_WALLPAPER_INFO:I = 0x2

.field private static final MSG_TYPE_LOAD:I = 0x0

.field private static final MSG_TYPE_SAVE:I = 0x1


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/google/glass/wallpaper/WallpaperHelper;


# direct methods
.method private constructor <init>(Lcom/google/glass/wallpaper/WallpaperHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->this$0:Lcom/google/glass/wallpaper/WallpaperHelper;

    .line 189
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 190
    return-void
.end method

.method private constructor <init>(Lcom/google/glass/wallpaper/WallpaperHelper;Landroid/os/Looper;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->this$0:Lcom/google/glass/wallpaper/WallpaperHelper;

    .line 194
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    iput-object p3, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->inputStream:Ljava/io/InputStream;

    .line 196
    iput-object p4, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->outputStream:Ljava/io/OutputStream;

    .line 197
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/wallpaper/WallpaperHelper;Landroid/os/Looper;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/google/glass/wallpaper/WallpaperHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Ljava/io/InputStream;
    .param p4, "x3"    # Ljava/io/OutputStream;
    .param p5, "x4"    # Lcom/google/glass/wallpaper/WallpaperHelper$1;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;-><init>(Lcom/google/glass/wallpaper/WallpaperHelper;Landroid/os/Looper;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;
    .param p1, "x1"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->sendLoadMessage(Lcom/google/glass/wallpaper/WallpaperCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;Lcom/google/glass/wallpaper/WallpaperCallback;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;
    .param p1, "x1"    # Lcom/google/glass/wallpaper/WallpaperCallback;
    .param p2, "x2"    # [B

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->sendSaveMessage(Lcom/google/glass/wallpaper/WallpaperCallback;[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;Lcom/google/glass/wallpaper/WallpaperInfoCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;
    .param p1, "x1"    # Lcom/google/glass/wallpaper/WallpaperInfoCallback;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->sendGetWallpaperInfoMessage(Lcom/google/glass/wallpaper/WallpaperInfoCallback;)V

    return-void
.end method

.method private handleGetWallpaperInfo(Lcom/google/glass/wallpaper/WallpaperInfoCallback;Ljava/io/InputStream;)V
    .locals 10
    .param p1, "wallpaperInfoCallback"    # Lcom/google/glass/wallpaper/WallpaperInfoCallback;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 299
    if-nez p2, :cond_0

    .line 300
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$500()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    move-object p2, v3

    .line 302
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 303
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 304
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 305
    .local v4, "read":I
    :goto_0
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {p2, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 306
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 310
    .end local v0    # "buffer":[B
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Failed to load wallpaper image [e=%s]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 318
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 308
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "read":I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 309
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 314
    .local v5, "wallpaperBytes":[B
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 316
    iget-object v6, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->this$0:Lcom/google/glass/wallpaper/WallpaperHelper;

    invoke-static {v6}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$700(Lcom/google/glass/wallpaper/WallpaperHelper;)Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

    move-result-object v6

    .line 317
    invoke-static {v5}, Lcom/google/glass/util/HashFunctions;->toSHA1([B)[B

    move-result-object v7

    .line 316
    invoke-static {v6, p1, v5, v7}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->access$1300(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperInfoCallback;[B[B)V

    goto :goto_1

    .line 314
    .end local v0    # "buffer":[B
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    .end local v5    # "wallpaperBytes":[B
    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v6
.end method

.method private handleLoad(Lcom/google/glass/wallpaper/WallpaperCallback;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 248
    if-nez p2, :cond_0

    .line 249
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$500()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object p2, v2

    .line 256
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-static {}, Lcom/google/glass/android/graphics/BitmapFactoryProvider;->getInstance()Lcom/google/glass/android/graphics/BitmapFactoryProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/android/graphics/BitmapFactoryProvider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/android/graphics/BitmapFactory;

    invoke-interface {v3, p2}, Lcom/google/glass/android/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 258
    iget-object v3, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->this$0:Lcom/google/glass/wallpaper/WallpaperHelper;

    invoke-static {v3}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$700(Lcom/google/glass/wallpaper/WallpaperHelper;)Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

    move-result-object v3

    invoke-static {v3, p1, v0}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->access$800(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperCallback;Landroid/graphics/Bitmap;)V

    .line 263
    :goto_0
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 264
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Failed to load wallpaper image [e=%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->this$0:Lcom/google/glass/wallpaper/WallpaperHelper;

    invoke-static {v3}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$700(Lcom/google/glass/wallpaper/WallpaperHelper;)Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->access$900(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperCallback;)V

    goto :goto_0
.end method

.method private handleSave(Lcom/google/glass/wallpaper/WallpaperCallback;[BLjava/io/OutputStream;)V
    .locals 6
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;
    .param p2, "bitmapBytes"    # [B
    .param p3, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 274
    :try_start_0
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$1000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 275
    if-nez p3, :cond_0

    .line 276
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$500()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p3    # "outputStream":Ljava/io/OutputStream;
    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object p3, v1

    .line 279
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local p3    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 280
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 281
    iget-object v2, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->this$0:Lcom/google/glass/wallpaper/WallpaperHelper;

    invoke-static {v2}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$700(Lcom/google/glass/wallpaper/WallpaperHelper;)Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->access$1100(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 288
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to copy wallpaper image [e=%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget-object v2, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->this$0:Lcom/google/glass/wallpaper/WallpaperHelper;

    invoke-static {v2}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$700(Lcom/google/glass/wallpaper/WallpaperHelper;)Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;->access$1200(Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;Lcom/google/glass/wallpaper/WallpaperCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v2
.end method

.method private sendGetWallpaperInfoMessage(Lcom/google/glass/wallpaper/WallpaperInfoCallback;)V
    .locals 1
    .param p1, "wallpaperInfoCallback"    # Lcom/google/glass/wallpaper/WallpaperInfoCallback;

    .prologue
    const/4 v0, 0x2

    .line 237
    invoke-virtual {p0, v0}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->removeMessages(I)V

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method private declared-synchronized sendLoadMessage(Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 1
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 221
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->removeMessages(I)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendSaveMessage(Lcom/google/glass/wallpaper/WallpaperCallback;[B)V
    .locals 3
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;
    .param p2, "bitmapBytes"    # [B

    .prologue
    .line 227
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->removeMessages(I)V

    .line 228
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->removeMessages(I)V

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "bitmap_bytes"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 231
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 232
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 227
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/wallpaper/WallpaperCallback;

    .line 204
    .local v1, "wallpaperCallbackLoad":Lcom/google/glass/wallpaper/WallpaperCallback;
    iget-object v4, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v1, v4}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->handleLoad(Lcom/google/glass/wallpaper/WallpaperCallback;Ljava/io/InputStream;)V

    goto :goto_0

    .line 207
    .end local v1    # "wallpaperCallbackLoad":Lcom/google/glass/wallpaper/WallpaperCallback;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/glass/wallpaper/WallpaperCallback;

    .line 208
    .local v2, "wallpaperCallbackSave":Lcom/google/glass/wallpaper/WallpaperCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "bitmap_bytes"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 209
    .local v0, "bitmapBytes":[B
    iget-object v4, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->outputStream:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v0, v4}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->handleSave(Lcom/google/glass/wallpaper/WallpaperCallback;[BLjava/io/OutputStream;)V

    goto :goto_0

    .line 212
    .end local v0    # "bitmapBytes":[B
    .end local v2    # "wallpaperCallbackSave":Lcom/google/glass/wallpaper/WallpaperCallback;
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/glass/wallpaper/WallpaperInfoCallback;

    .line 213
    .local v3, "wallpaperInfoCallback":Lcom/google/glass/wallpaper/WallpaperInfoCallback;
    iget-object v4, p0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v3, v4}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->handleGetWallpaperInfo(Lcom/google/glass/wallpaper/WallpaperInfoCallback;Ljava/io/InputStream;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
