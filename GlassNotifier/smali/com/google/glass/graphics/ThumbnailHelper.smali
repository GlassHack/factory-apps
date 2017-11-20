.class public Lcom/google/glass/graphics/ThumbnailHelper;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/graphics/ThumbnailHelper$Provider;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/graphics/ThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveThumbnailToCachedFiles(Lcom/google/glass/io/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cachedFilesManager"    # Lcom/google/glass/io/CachedFilesManager;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    sget-object v2, Lcom/google/glass/graphics/ThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to save thumbnail as CachedFilesManager is null."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-object v1

    .line 39
    :cond_0
    if-nez p2, :cond_1

    .line 40
    sget-object v2, Lcom/google/glass/graphics/ThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to save thumbnail as no thumbnail is present."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_1
    sget-object v2, Lcom/google/glass/io/FileType;->THUMBNAIL:Lcom/google/glass/io/FileType;

    new-instance v3, Lcom/google/glass/graphics/ThumbnailHelper$1;

    invoke-direct {v3, p0, p2}, Lcom/google/glass/graphics/ThumbnailHelper$1;-><init>(Lcom/google/glass/graphics/ThumbnailHelper;Landroid/graphics/Bitmap;)V

    .line 45
    invoke-virtual {p1, v2, p3, v3}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    move-result v0

    .line 58
    .local v0, "success":Z
    if-nez v0, :cond_2

    .line 59
    sget-object v2, Lcom/google/glass/graphics/ThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to save file."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_2
    sget-object v1, Lcom/google/glass/io/FileType;->THUMBNAIL:Lcom/google/glass/io/FileType;

    invoke-virtual {p1, v1, p3}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
