.class public Lcom/google/glass/logging/FeedbackGenerator;
.super Ljava/lang/Object;
.source "FeedbackGenerator.java"


# static fields
.field private static final BLUETOOTH_FILE_EXTENSION:Ljava/lang/String; = ".btsnoop.log"

.field private static final BLUETOOTH_SNOOP_FILE:Ljava/io/File;

.field private static final BLUETOOTH_SNOOP_PATH:Ljava/lang/String;

.field private static final BUGREPORT_COMMAND:[Ljava/lang/String;

.field private static final BUGREPORT_FILE_EXTENSION:Ljava/lang/String; = ".txt"

.field private static final COPY_BUFFER_SIZE:I = 0x1000

.field private static final DISK_FREE_COMMAND:[Ljava/lang/String;

.field private static final DMESG_COMMAND:[Ljava/lang/String;

.field public static final FEEDBACK_GLASSWARE_SOURCE:Ljava/lang/String; = "api:710542303397"

.field private static final GLASS_PACKAGE_PREFIX:Ljava/lang/String; = "com.google.glass."

.field private static final PING_DOMAIN_COMMAND:[Ljava/lang/String;

.field private static final PING_IP_COMMAND:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/btsnoop_hci.log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/FeedbackGenerator;->BLUETOOTH_SNOOP_PATH:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/glass/logging/FeedbackGenerator;->BLUETOOTH_SNOOP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/logging/FeedbackGenerator;->BLUETOOTH_SNOOP_FILE:Ljava/io/File;

    .line 69
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "dmesg"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackGenerator;->DMESG_COMMAND:[Ljava/lang/String;

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "bugreport"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackGenerator;->BUGREPORT_COMMAND:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "df"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackGenerator;->DISK_FREE_COMMAND:[Ljava/lang/String;

    .line 74
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ping"

    aput-object v1, v0, v2

    const-string v1, "-nc"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "8.8.8.8"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/logging/FeedbackGenerator;->PING_IP_COMMAND:[Ljava/lang/String;

    .line 76
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ping"

    aput-object v1, v0, v2

    const-string v1, "-nc"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "google.com"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/logging/FeedbackGenerator;->PING_DOMAIN_COMMAND:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/OutputStream;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/google/glass/logging/FeedbackGenerator;->appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/logging/FeedbackGenerator;->BUGREPORT_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/OutputStream;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/google/glass/logging/FeedbackGenerator;->appendCommand(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->getConnectivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/logging/FeedbackGenerator;->DMESG_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/glass/logging/FeedbackGenerator;->getApkInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/logging/FeedbackGenerator;->DISK_FREE_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/glass/logging/FeedbackGenerator;->getPinnedTimelineItemIds(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/OutputStream;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/google/glass/logging/FeedbackGenerator;->appendFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static appendCommand(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "command"    # [Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-static {p1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/io/InputStream;

    move-result-object v0

    .line 322
    .local v0, "output":[Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p2}, Lcom/google/glass/logging/FeedbackGenerator;->appendPadded(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 323
    const-string v1, "STDOUT"

    invoke-static {p0, v1}, Lcom/google/glass/logging/FeedbackGenerator;->appendPadded(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 324
    if-eqz v0, :cond_0

    .line 325
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1, p0}, Lcom/google/glass/logging/FeedbackGenerator;->copyContents(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 327
    :cond_0
    const-string v1, "STDERR"

    invoke-static {p0, v1}, Lcom/google/glass/logging/FeedbackGenerator;->appendPadded(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 328
    if-eqz v0, :cond_1

    .line 329
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1, p0}, Lcom/google/glass/logging/FeedbackGenerator;->copyContents(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_1
    if-eqz v0, :cond_2

    .line 333
    const-string v1, "stdout"

    aget-object v2, v0, v3

    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 334
    const-string v1, "stderr"

    aget-object v2, v0, v5

    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 337
    :cond_2
    const-string v1, "\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 338
    return-void

    .line 332
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 333
    const-string v2, "stdout"

    aget-object v3, v0, v3

    sget-object v4, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 334
    const-string v2, "stderr"

    aget-object v3, v0, v5

    sget-object v4, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :cond_3
    throw v1
.end method

.method private static appendFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {p0, p1}, Lcom/google/glass/logging/FeedbackGenerator;->appendPadded(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 345
    invoke-static {v2, p0}, Lcom/google/glass/logging/FeedbackGenerator;->copyContents(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object v1, v2

    .line 352
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to append file to bug report [path=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    const-string v3, "Failed to append file [path=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    sget-object v4, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v3

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 346
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static appendPadded(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 356
    return-void
.end method

.method private static appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {p0, p2}, Lcom/google/glass/logging/FeedbackGenerator;->appendPadded(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 315
    invoke-static {p0, p1}, Lcom/google/glass/logging/FeedbackGenerator;->appendPadded(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private static attachCachedContent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "contentPath"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 253
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0, p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 254
    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 255
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 256
    return-void
.end method

.method private static buildInitialReportItem(Landroid/content/Context;Lcom/google/glass/feedback/FeedbackParams;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feedbackParams"    # Lcom/google/glass/feedback/FeedbackParams;

    .prologue
    .line 192
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v2

    .line 193
    .local v2, "timelineItemCreationHelper":Lcom/google/glass/timeline/TimelineItemCreationHelper;
    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 196
    .local v1, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v3

    .line 197
    .local v3, "timelineItemLocationHelper":Lcom/google/glass/timeline/TimelineItemLocationHelper;
    invoke-virtual {v3, v1}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 199
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 203
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 205
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 206
    .local v0, "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const-string v4, "api:710542303397"

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 207
    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 209
    invoke-virtual {p1}, Lcom/google/glass/feedback/FeedbackParams;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/google/glass/logging/R$string;->bugreport_captured:I

    .line 210
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    :goto_0
    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 211
    invoke-virtual {p1}, Lcom/google/glass/feedback/FeedbackParams;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 211
    :goto_1
    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 215
    invoke-virtual {p1}, Lcom/google/glass/feedback/FeedbackParams;->getScreenshotFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    const-string v4, "image/png"

    .line 217
    invoke-virtual {p1}, Lcom/google/glass/feedback/FeedbackParams;->getScreenshotFilePath()Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-static {v1, v4, v5}, Lcom/google/glass/logging/FeedbackGenerator;->attachCachedContent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-object v1

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/feedback/FeedbackParams;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/feedback/FeedbackParams;->getDescription()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static captureBugReportData(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/feedback/FeedbackParams;Lcom/google/glass/logging/CompanionLogReader;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p2, "feedbackParams"    # Lcom/google/glass/feedback/FeedbackParams;
    .param p3, "companionLogReader"    # Lcom/google/glass/logging/CompanionLogReader;
    .param p4, "bugReportFileName"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/FileType;->BUG_REPORT:Lcom/google/glass/util/FileType;

    new-instance v2, Lcom/google/glass/logging/FeedbackGenerator$2;

    invoke-direct {v2, p2, p0, p3, p1}, Lcom/google/glass/logging/FeedbackGenerator$2;-><init>(Lcom/google/glass/feedback/FeedbackParams;Landroid/content/Context;Lcom/google/glass/logging/CompanionLogReader;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    invoke-virtual {v0, v1, p4, v2}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    return v0
.end method

.method public static copyContents(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 360
    if-nez p0, :cond_1

    .line 368
    :cond_0
    return-void

    .line 363
    :cond_1
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 364
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 365
    .local v1, "bytesRead":I
    :goto_0
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 366
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static getApkInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 380
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 382
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 383
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.google.glass."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 388
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x18

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xe

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Last update: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x10

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "First install: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xb

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Location: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1d

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Native libraries location: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 397
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to get package info."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v5, v2, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    const-string v5, ""

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-object v5

    .line 396
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method private static getBluetoothSnoopFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "bugId"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".btsnoop.log"

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

.method private static getBugreportFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "bugId"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".txt"

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

.method private static getConnectivity()Ljava/lang/String;
    .locals 5

    .prologue
    .line 406
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/glass/logging/FeedbackGenerator;->PING_IP_COMMAND:[Ljava/lang/String;

    .line 407
    invoke-static {v2}, Lcom/google/glass/util/CommandOutputCollector;->collectOutputStrings([Ljava/lang/String;)[Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    sget-object v2, Lcom/google/glass/logging/FeedbackGenerator;->PING_DOMAIN_COMMAND:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/glass/util/CommandOutputCollector;->collectOutputStrings([Ljava/lang/String;)[Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 413
    :goto_0
    return-object v2

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to get connectivity info."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    const-string v2, ""

    goto :goto_0
.end method

.method public static getDmesgOutput()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 179
    sget-object v1, Lcom/google/glass/logging/FeedbackGenerator;->DMESG_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/io/InputStream;

    move-result-object v0

    .line 180
    .local v0, "output":[Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 182
    const-string v1, "dmesg stderr"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 183
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 185
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getLabSettings()Ljava/lang/String;
    .locals 8

    .prologue
    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Lab settings {\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .local v3, "labSettings":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/glass/util/Labs$Feature;->values()[Lcom/google/glass/util/Labs$Feature;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    .line 423
    .local v1, "feature":Lcom/google/glass/util/Labs$Feature;
    const-string v7, "\t"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v1}, Lcom/google/glass/util/Labs$Feature;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const/4 v2, 0x0

    .line 427
    .local v2, "isEnabled":Z
    sget-object v7, Lcom/google/glass/util/Labs$Feature;->I_TORE_DOWN_THIS_APK_AND_ALL_I_GOT_WAS_THIS_STUPID_LAB:Lcom/google/glass/util/Labs$Feature;

    invoke-virtual {v7, v1}, Lcom/google/glass/util/Labs$Feature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 430
    const/4 v2, 0x0

    .line 434
    :goto_1
    if-eqz v2, :cond_2

    const-string v0, "on"

    .line 435
    .local v0, "enabled":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v1}, Lcom/google/glass/util/Labs$Feature;->getDefaultValueAsBoolean()Z

    move-result v7

    if-eq v2, v7, :cond_0

    .line 437
    const-string v7, " (changed from default)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "enabled":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    goto :goto_1

    .line 434
    :cond_2
    const-string v0, "off"

    goto :goto_2

    .line 441
    .end local v1    # "feature":Lcom/google/glass/util/Labs$Feature;
    .end local v2    # "isEnabled":Z
    :cond_3
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getPinnedTimelineItemIds(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)Ljava/lang/String;
    .locals 5
    .param p0, "databaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryPinnedItems()Landroid/database/Cursor;

    move-result-object v0

    .line 452
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 454
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 455
    .local v3, "serializationHelper":Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v2, "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 458
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 463
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 466
    if-eqz v0, :cond_1

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 470
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "serializationHelper":Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    :cond_1
    :goto_1
    return-object v4

    .line 460
    .restart local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "serializationHelper":Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    :cond_2
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "serializationHelper":Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    :cond_3
    if-eqz v0, :cond_4

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_4
    const-string v4, "no items"

    goto :goto_1

    .line 466
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method private static maybeAddSnoopAttachment(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 9
    .param p0, "bugId"    # Ljava/lang/String;
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 224
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->BTSB:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    :goto_0
    return-object v2

    .line 229
    :cond_0
    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->BLUETOOTH_SNOOP_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "btsnoop file does not exist -- bugreport will not contain btsnoop log."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_1
    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "btsnoop file exists -- snapshotting [path=%s]."

    new-array v5, v8, [Ljava/lang/Object;

    sget-object v6, Lcom/google/glass/logging/FeedbackGenerator;->BLUETOOTH_SNOOP_PATH:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {p0}, Lcom/google/glass/logging/FeedbackGenerator;->getBluetoothSnoopFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "snoopSnapFilename":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/FileType;->BUG_REPORT:Lcom/google/glass/util/FileType;

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "snoopSnapPath":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/FileType;->BUG_REPORT:Lcom/google/glass/util/FileType;

    sget-object v5, Lcom/google/glass/logging/FeedbackGenerator;->BLUETOOTH_SNOOP_FILE:Ljava/io/File;

    .line 239
    invoke-static {v5}, Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v5

    .line 238
    invoke-virtual {v3, v4, v1, v5}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    .line 241
    .local v0, "snapshotCompleted":Z
    if-eqz v0, :cond_2

    .line 242
    const-string v3, "application/octet-stream"

    invoke-static {p1, v3, v2}, Lcom/google/glass/logging/FeedbackGenerator;->attachCachedContent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    sget-object v3, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Couldn\'t snapshot -- bugreport will not contain btsnoop log [snoopSnapPath=%s]."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public generateFeedbackItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/feedback/FeedbackParams;Lcom/google/glass/logging/CompanionLogReader;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "feedbackParams"    # Lcom/google/glass/feedback/FeedbackParams;
    .param p4, "companionLogReader"    # Lcom/google/glass/logging/CompanionLogReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 105
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 106
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->toBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v12

    invoke-static {}, Lcom/google/glass/feedback/FeedbackHelper;->createNewBugId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setBugId(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/glass/feedback/FeedbackParams$Builder;->build()Lcom/google/glass/feedback/FeedbackParams;

    move-result-object p3

    .line 109
    :cond_0
    sget-object v12, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Capturing bugreport [bugId=%s, rootUrl=%s]."

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 110
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 109
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    sget-object v12, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->getLabSettings()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/glass/logging/FeedbackGenerator;->buildInitialReportItem(Landroid/content/Context;Lcom/google/glass/feedback/FeedbackParams;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v11

    .line 114
    .local v11, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/google/glass/logging/FeedbackGenerator;->maybeAddSnoopAttachment(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "snoopSnapPath":Ljava/lang/String;
    sget-object v12, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->BUG_REPORT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 117
    sget-object v12, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Published initial timeline item [bugId=%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {v11}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 120
    .local v6, "finalItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/logging/FeedbackGenerator;->getBugreportFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "bugReportFileName":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/glass/logging/FeedbackGenerator;->captureBugReportData(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/feedback/FeedbackParams;Lcom/google/glass/logging/CompanionLogReader;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 127
    sget-object v12, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Bugreport failed, removing initial timeline item. [bugId=%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 128
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 127
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 134
    const/4 v12, 0x0

    .line 172
    :goto_0
    return v12

    .line 138
    :cond_1
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v12

    sget-object v13, Lcom/google/glass/util/FileType;->BUG_REPORT:Lcom/google/glass/util/FileType;

    invoke-virtual {v12, v13, v5}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "reportPath":Ljava/lang/String;
    const-string v12, "text/plain"

    invoke-static {v6, v12, v7}, Lcom/google/glass/logging/FeedbackGenerator;->attachCachedContent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "bugId":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 145
    .local v8, "reportSize":J
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getShouldUpload()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 148
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 149
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 151
    sget-object v12, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Bugreport attached, updating initial item to sync [bugId=%s, reportSize=%d]."

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    .line 152
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    .line 151
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :goto_1
    new-instance v12, Lcom/google/glass/logging/FeedbackGenerator$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1, v6, v4}, Lcom/google/glass/logging/FeedbackGenerator$1;-><init>(Lcom/google/glass/logging/FeedbackGenerator;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 169
    sget-object v12, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Captured bugreport [bugId=%s, reportPath=%s, screenshotPath=%s, snoopSnapPath=%s]."

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 170
    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p3 .. p3}, Lcom/google/glass/feedback/FeedbackParams;->getScreenshotFilePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object v10, v14, v15

    .line 169
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const/4 v12, 0x1

    goto :goto_0

    .line 154
    :cond_2
    sget-object v12, Lcom/google/glass/logging/FeedbackGenerator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Bugreport attached [bugId=%s, reportSize=%d]."

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
