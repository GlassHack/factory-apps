.class public Lcom/google/glass/maps/util/StreamUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/util/StreamUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static readFullyAndClose(Ljava/io/InputStream;)[B
    .locals 2

    .prologue
    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 30
    sget-object v1, Lcom/google/glass/maps/util/StreamUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/glass/maps/util/StreamUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0
.end method

.method public static readFullyAndCloseNoExceptions(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/google/glass/maps/util/StreamUtil;->readFullyAndClose(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
