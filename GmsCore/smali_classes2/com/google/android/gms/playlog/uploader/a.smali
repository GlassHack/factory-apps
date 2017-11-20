.class public final Lcom/google/android/gms/playlog/uploader/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static b:Lcom/google/android/gms/playlog/uploader/a;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/gms/playlog/a/e;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/uploader/a;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/a;->c:Landroid/content/Context;

    .line 44
    iput-wide p2, p0, Lcom/google/android/gms/playlog/uploader/a;->d:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/playlog/uploader/a;->e:J

    .line 46
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/playlog/uploader/a;
    .locals 5

    .prologue
    .line 27
    const-class v1, Lcom/google/android/gms/playlog/uploader/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/playlog/uploader/a;->b:Lcom/google/android/gms/playlog/uploader/a;

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/google/android/gms/playlog/a/e;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/playlog/uploader/a;->b(J)J

    move-result-wide v2

    .line 29
    new-instance v0, Lcom/google/android/gms/playlog/uploader/a;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v4

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/playlog/uploader/a;-><init>(Landroid/content/Context;J)V

    sput-object v0, Lcom/google/android/gms/playlog/uploader/a;->b:Lcom/google/android/gms/playlog/uploader/a;

    .line 31
    :cond_0
    sget-object v0, Lcom/google/android/gms/playlog/uploader/a;->b:Lcom/google/android/gms/playlog/uploader/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(JJLjava/lang/String;)V
    .locals 3

    .prologue
    .line 96
    sget-boolean v0, Lcom/google/android/gms/playlog/uploader/a;->a:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "Scheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scheduleTask: windowStart="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " windowEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/y;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/y;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/gcm/an;

    invoke-direct {v1}, Lcom/google/android/gms/gcm/an;-><init>()V

    const-class v2, Lcom/google/android/gms/playlog/uploader/UploaderService;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/an;->a(Ljava/lang/Class;)Lcom/google/android/gms/gcm/an;

    move-result-object v1

    iput-wide p1, v1, Lcom/google/android/gms/gcm/an;->a:J

    iput-wide p3, v1, Lcom/google/android/gms/gcm/an;->b:J

    invoke-virtual {v1, p5}, Lcom/google/android/gms/gcm/an;->a(Ljava/lang/String;)Lcom/google/android/gms/gcm/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/an;->a()Lcom/google/android/gms/gcm/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/an;->c()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/y;->a(Lcom/google/android/gms/gcm/Task;)V

    .line 110
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(J)J
    .locals 2

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcom/google/android/gms/playlog/uploader/a;->b(J)J

    move-result-wide v2

    .line 50
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/playlog/uploader/a;->b(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/playlog/uploader/a;->e:J

    .line 52
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    .prologue
    .line 64
    sget-boolean v0, Lcom/google/android/gms/playlog/uploader/a;->a:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "Scheduler"

    const-string v1, "scheduleUpload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/playlog/uploader/a;->b(J)J

    move-result-wide v0

    .line 68
    iget-wide v2, p0, Lcom/google/android/gms/playlog/uploader/a;->e:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/playlog/uploader/a;->d:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v4, v2

    .line 69
    sub-long v2, v4, v0

    iget-wide v6, p0, Lcom/google/android/gms/playlog/uploader/a;->d:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    const-string v6, "upload"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/playlog/uploader/a;->a(JJLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public final c()V
    .locals 8

    .prologue
    .line 83
    sget-boolean v0, Lcom/google/android/gms/playlog/uploader/a;->a:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "Scheduler"

    const-string v1, "scheduleUploadAsap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/playlog/uploader/a;->b(J)J

    move-result-wide v0

    .line 87
    iget-wide v2, p0, Lcom/google/android/gms/playlog/uploader/a;->e:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 88
    sub-long v2, v4, v0

    iget-wide v6, p0, Lcom/google/android/gms/playlog/uploader/a;->d:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    const-string v6, "upload_asap"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/playlog/uploader/a;->a(JJLjava/lang/String;)V

    .line 89
    return-void
.end method
