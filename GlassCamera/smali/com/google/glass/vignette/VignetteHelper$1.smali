.class Lcom/google/glass/vignette/VignetteHelper$1;
.super Ljava/lang/Object;
.source "VignetteHelper.java"

# interfaces
.implements Lcom/google/glass/util/CachedFilesManager$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/vignette/VignetteHelper;->loadScreenshot(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/util/CachedFilesManager$Loader",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/vignette/VignetteHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/vignette/VignetteHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/vignette/VignetteHelper;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/vignette/VignetteHelper$1;->this$0:Lcom/google/glass/vignette/VignetteHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 152
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v5, "screenshotFile":Ljava/io/File;
    const/4 v4, 0x1

    .local v4, "numTries":I
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 156
    invoke-static {}, Lcom/google/glass/vignette/VignetteHelper;->access$000()Lcom/google/glass/util/RetryStrategy;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/glass/util/RetryStrategy;->tryAgain(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 157
    invoke-static {}, Lcom/google/glass/vignette/VignetteHelper;->access$000()Lcom/google/glass/util/RetryStrategy;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v7

    int-to-long v1, v7

    .line 158
    .local v1, "delayMillis":J
    invoke-static {}, Lcom/google/glass/vignette/VignetteHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Screenshot file not found. Trying again in %d ms."

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/vignette/VignetteHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Interruped while waiting for screenshot file."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v3, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 165
    .end local v1    # "delayMillis":J
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 166
    invoke-static {}, Lcom/google/glass/vignette/VignetteHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Failed to find screenshot file: %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object p1, v9, v11

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :goto_2
    return-object v6

    .line 173
    :cond_1
    :try_start_1
    invoke-static {v5}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 174
    .local v0, "data":[B
    iget-object v7, p0, Lcom/google/glass/vignette/VignetteHelper$1;->this$0:Lcom/google/glass/vignette/VignetteHelper;

    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v0, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lcom/google/glass/vignette/VignetteHelper;->cachedScreenshot:Landroid/graphics/Bitmap;

    .line 175
    iget-object v7, p0, Lcom/google/glass/vignette/VignetteHelper$1;->this$0:Lcom/google/glass/vignette/VignetteHelper;

    iget-object v6, v7, Lcom/google/glass/vignette/VignetteHelper;->cachedScreenshot:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 176
    .end local v0    # "data":[B
    :catch_1
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/vignette/VignetteHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Failed to read screenshot file."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v3, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/glass/vignette/VignetteHelper$1;->load(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
