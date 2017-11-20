.class public final Lcom/google/android/gms/playlog/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Lcom/google/android/gms/playlog/b/a/f;

.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/google/android/gms/playlog/b/a/g;

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/HashMap;

.field private final f:Lcom/google/android/gms/playlog/b/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/playlog/b/a/f;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gms/playlog/b/a/g;

    invoke-direct {v0}, Lcom/google/android/gms/playlog/b/a/g;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/playlog/b/a/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/playlog/b/a/g;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/playlog/b/a/g;)V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "logs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/playlog/b/a/f;-><init>(Ljava/io/File;Lcom/google/android/gms/playlog/b/a/g;)V

    .line 102
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/google/android/gms/playlog/b/a/g;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->a:Ljava/io/File;

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/b/a/g;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->b:Lcom/google/android/gms/playlog/b/a/g;

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->d:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    .line 112
    invoke-static {}, Lcom/google/android/gms/playlog/b/a/i;->a()Lcom/google/android/gms/playlog/b/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->a:Ljava/io/File;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/playlog/b/a/f;->a(Ljava/io/File;I)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/n/a/b/a/a/i;)I
    .locals 9

    .prologue
    .line 308
    iget-object v8, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    monitor-enter v8

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/b/a/a;

    .line 310
    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/google/android/gms/playlog/b/a/a;

    invoke-direct {p0, p1}, Lcom/google/android/gms/playlog/b/a/f;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;)Ljava/io/File;

    move-result-object v1

    const-string v2, "eventlog.store"

    const-string v3, "log"

    iget-object v4, p0, Lcom/google/android/gms/playlog/b/a/f;->b:Lcom/google/android/gms/playlog/b/a/g;

    iget-wide v4, v4, Lcom/google/android/gms/playlog/b/a/g;->b:J

    iget-object v6, p0, Lcom/google/android/gms/playlog/b/a/f;->b:Lcom/google/android/gms/playlog/b/a/g;

    iget-wide v6, v6, Lcom/google/android/gms/playlog/b/a/g;->a:J

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/playlog/b/a/a;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 317
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/playlog/b/a/a;->a(Lcom/google/n/a/b/a/a/i;)V

    .line 323
    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/a/a;->c()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 329
    :goto_0
    return v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 323
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    const-string v1, "LogStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not write string ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/google/android/gms/playlog/b/a/f;
    .locals 3

    .prologue
    .line 88
    sget-object v1, Lcom/google/android/gms/playlog/b/a/f;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/google/android/gms/playlog/b/a/f;->g:Lcom/google/android/gms/playlog/b/a/f;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/google/android/gms/playlog/b/a/f;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/playlog/b/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/playlog/b/a/f;->g:Lcom/google/android/gms/playlog/b/a/f;

    .line 92
    :cond_0
    sget-object v0, Lcom/google/android/gms/playlog/b/a/f;->g:Lcom/google/android/gms/playlog/b/a/f;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/File;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 190
    const-string v1, "null_logging_id"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v5, v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 194
    const-string v2, "null_account"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v4, v0

    .line 196
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v3, "_noaid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    :goto_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 212
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 215
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-object v0

    .line 203
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    goto :goto_1

    .line 218
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;)Ljava/io/File;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 234
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/f;->a:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->c:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->g:Z

    if-nez v0, :cond_0

    const-string v0, "_noaid"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null_account"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "null_logging_id"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Ljava/util/Set;)Ljava/util/HashSet;
    .locals 5

    .prologue
    .line 515
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 516
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 517
    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/b/a/f;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;)Ljava/io/File;

    move-result-object v1

    .line 518
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    .line 519
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    return-object v2
.end method

.method private a(Ljava/io/File;I)V
    .locals 10

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-nez p2, :cond_2

    .line 147
    invoke-static {p1}, Lcom/google/android/gms/playlog/b/a/f;->a(Ljava/io/File;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-result-object v8

    .line 148
    if-eqz v8, :cond_0

    .line 156
    iget-object v9, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/playlog/b/a/a;

    const-string v2, "eventlog.store"

    const-string v3, "log"

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->b:Lcom/google/android/gms/playlog/b/a/g;

    iget-wide v4, v1, Lcom/google/android/gms/playlog/b/a/g;->b:J

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->b:Lcom/google/android/gms/playlog/b/a/g;

    iget-wide v6, v1, Lcom/google/android/gms/playlog/b/a/g;->a:J

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/playlog/b/a/a;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v9, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_0

    .line 164
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 165
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, v4, v3}, Lcom/google/android/gms/playlog/b/a/f;->a(Ljava/io/File;I)V

    .line 164
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)I
    .locals 6

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/a/i;->b()Lcom/google/n/a/b/a/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 345
    :try_start_1
    iget-wide v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->b:J

    iput-wide v0, v2, Lcom/google/n/a/b/a/a/i;->a:J

    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->d:[B

    iput-object v0, v2, Lcom/google/n/a/b/a/a/i;->h:[B

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/n/a/b/a/a/j;

    iput-object v0, v2, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v4}, Lcom/google/android/gms/playlog/b/a/i;->c()Lcom/google/n/a/b/a/a/j;

    move-result-object v4

    iput-object v0, v4, Lcom/google/n/a/b/a/a/j;->a:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/n/a/b/a/a/j;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v5, v1

    move v1, v0

    goto :goto_0

    .line 346
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/playlog/b/a/f;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/n/a/b/a/a/i;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 348
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/b/a/i;->a(Lcom/google/n/a/b/a/a/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 351
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    .line 348
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/b/a/i;->a(Lcom/google/n/a/b/a/a/i;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)I
    .locals 5

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/a/i;->b()Lcom/google/n/a/b/a/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 367
    :try_start_1
    array-length v0, p2

    invoke-static {v1, p2, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    .line 368
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/playlog/b/a/f;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/n/a/b/a/a/i;)I
    :try_end_1
    .catch Lcom/google/protobuf/nano/i; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 374
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/playlog/b/a/i;->a(Lcom/google/n/a/b/a/a/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return v0

    .line 369
    :catch_0
    move-exception v0

    .line 371
    :try_start_3
    const-string v2, "LogStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse proto: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/nano/i;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/b/a/i;->a(Lcom/google/n/a/b/a/a/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 377
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/f;->f:Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/playlog/b/a/i;->a(Lcom/google/n/a/b/a/a/i;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 377
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 456
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/b/a/a;

    .line 457
    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 461
    return-void
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 472
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 474
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 475
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/playlog/b/a/a;

    .line 476
    invoke-virtual {v1}, Lcom/google/android/gms/playlog/b/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 480
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v0, v2

    .line 503
    :goto_1
    return v0

    .line 486
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 487
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/b/a/f;->a(Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object v0

    .line 490
    invoke-direct {p0, v3}, Lcom/google/android/gms/playlog/b/a/f;->a(Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object v1

    .line 493
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 494
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 496
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v0, v2

    goto :goto_1

    .line 500
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 501
    invoke-static {v0}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 503
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final d()Lcom/google/android/gms/playlog/b/a/h;
    .locals 6

    .prologue
    .line 569
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/f;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 577
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 578
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 579
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/playlog/b/a/a;

    .line 580
    invoke-virtual {v1}, Lcom/google/android/gms/playlog/b/a/a;->b()Lcom/google/android/gms/playlog/b/a/d;

    move-result-object v5

    .line 581
    if-eqz v5, :cond_0

    .line 582
    invoke-virtual {v5}, Lcom/google/android/gms/playlog/b/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    new-instance v1, Lcom/google/android/gms/playlog/b/a/h;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v5, v4}, Lcom/google/android/gms/playlog/b/a/h;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/b/a/d;B)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v1

    :goto_0
    return-object v0

    .line 587
    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 588
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v0, 0x0

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 588
    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/f;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 592
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method
