.class public abstract Lcom/google/android/maps/driveabout/util/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x4000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/maps/driveabout/util/d;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/g/f;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x400

    .line 117
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v2, "JavaTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    const-string v2, " JavaFree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 126
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 127
    const-string v2, " Dalvik: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, " Native: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v2, " Other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    new-instance v0, Lcom/google/android/maps/driveabout/g/k;

    const-string v2, "MemoryInfo"

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/g/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/g/f;->a(Lcom/google/android/maps/driveabout/g/j;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/util/d;->a:[B

    .line 94
    invoke-static {}, Lcom/google/android/maps/driveabout/g/f;->e()Lcom/google/android/maps/driveabout/g/f;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    invoke-static {v1}, Lcom/google/android/maps/driveabout/util/d;->a(Lcom/google/android/maps/driveabout/g/f;)V

    .line 97
    new-instance v2, Lcom/google/android/maps/driveabout/g/k;

    const-string v3, "Thread"

    const-string v4, "Crashing due to unhandled exception or error on: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/google/android/maps/driveabout/g/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/g/f;->a(Lcom/google/android/maps/driveabout/g/j;)V

    .line 99
    new-instance v0, Lcom/google/android/maps/driveabout/g/l;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/g/l;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/g/f;->a(Lcom/google/android/maps/driveabout/g/j;)V

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_kk.mm.ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/g/f;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xe

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "crash-log-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/g/f;->a(Ljava/io/File;)V

    .line 106
    instance-of v4, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/heap-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".hprof"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_1
    invoke-virtual {v1, v3, p1}, Lcom/google/android/maps/driveabout/g/f;->a(Ljava/io/File;Ljava/lang/Throwable;)V

    .line 114
    :cond_1
    return-void

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private f()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/d;->a()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    throw v0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    throw v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/d;->f()V

    .line 61
    return-void
.end method
