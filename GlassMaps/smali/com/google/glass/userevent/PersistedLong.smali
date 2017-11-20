.class public Lcom/google/glass/userevent/PersistedLong;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LONG_BYTES:I = 0x8

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final file:Ljava/lang/String;

.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/PersistedLong;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/userevent/PersistedLong;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/google/glass/userevent/PersistedLong;->file:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/google/glass/userevent/PersistedLong;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/userevent/PersistedLong;->value:J

    .line 39
    return-void
.end method

.method private read()J
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 56
    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/userevent/PersistedLong;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/userevent/PersistedLong;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 59
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 63
    sget-object v3, Lcom/google/glass/userevent/PersistedLong;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :goto_0
    return-wide v0

    .line 61
    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    const-wide/16 v0, 0x0

    .line 63
    sget-object v3, Lcom/google/glass/userevent/PersistedLong;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    sget-object v1, Lcom/google/glass/userevent/PersistedLong;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 61
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private write()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 69
    const/4 v1, 0x0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/userevent/PersistedLong;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/userevent/PersistedLong;->file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 72
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    iget-wide v2, p0, Lcom/google/glass/userevent/PersistedLong;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 74
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Lcom/google/glass/userevent/PersistedLong;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v0

    sget-object v2, Lcom/google/glass/userevent/PersistedLong;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0
.end method


# virtual methods
.method public get()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/glass/userevent/PersistedLong;->value:J

    return-wide v0
.end method

.method public set(JZ)V
    .locals 0

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/glass/userevent/PersistedLong;->value:J

    .line 49
    if-eqz p3, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/google/glass/userevent/PersistedLong;->write()V

    .line 52
    :cond_0
    return-void
.end method
