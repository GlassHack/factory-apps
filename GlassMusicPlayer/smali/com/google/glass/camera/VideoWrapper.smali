.class public Lcom/google/glass/camera/VideoWrapper;
.super Lcom/google/glass/camera/Video;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private fileSaver:Lcom/google/glass/util/FileSaver;

.field private final fileScanner:Lcom/google/glass/camera/VideoWrapper$FileScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/VideoWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/camera/VideoWrapper$FileScanner;Lcom/google/glass/util/FileSaver;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/camera/Video;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/glass/camera/VideoWrapper;->fileScanner:Lcom/google/glass/camera/VideoWrapper$FileScanner;

    .line 40
    iput-object p2, p0, Lcom/google/glass/camera/VideoWrapper;->fileSaver:Lcom/google/glass/util/FileSaver;

    .line 41
    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/glass/camera/VideoWrapper;->startTimeMillis:J

    invoke-static {v0, v1}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".mp4"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method start()Z
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/VideoWrapper;->startTimeMillis:J

    .line 51
    iget-object v0, p0, Lcom/google/glass/camera/VideoWrapper;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-direct {p0}, Lcom/google/glass/camera/VideoWrapper;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/FileSaver;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/VideoWrapper;->filePath:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/google/glass/camera/VideoWrapper;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stop(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    iget-wide v0, p0, Lcom/google/glass/camera/VideoWrapper;->endTimeMillis:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/google/glass/camera/VideoWrapper;->startTimeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/VideoWrapper;->endTimeMillis:J

    .line 67
    sget-object v0, Lcom/google/glass/camera/VideoWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Recorded video to: %s, end time: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/camera/VideoWrapper;->filePath:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/glass/camera/VideoWrapper;->endTimeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/camera/VideoWrapper;->fileScanner:Lcom/google/glass/camera/VideoWrapper$FileScanner;

    iget-object v1, p0, Lcom/google/glass/camera/VideoWrapper;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/camera/VideoWrapper$FileScanner;->scanFile(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
