.class public abstract Lcom/google/android/youtube/core/async/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/cache/a;

.field private final b:Lcom/google/android/youtube/core/async/ae;

.field private final c:Lcom/google/android/youtube/core/utils/a;

.field private final d:J


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/utils/a;J)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/youtube/core/async/al;->a:Lcom/google/android/youtube/core/cache/a;

    .line 75
    iput-object p2, p0, Lcom/google/android/youtube/core/async/al;->b:Lcom/google/android/youtube/core/async/ae;

    .line 76
    iput-object p3, p0, Lcom/google/android/youtube/core/async/al;->c:Lcom/google/android/youtube/core/utils/a;

    .line 77
    iput-wide p4, p0, Lcom/google/android/youtube/core/async/al;->d:J

    .line 78
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/utils/a;J)Lcom/google/android/youtube/core/async/al;
    .locals 6

    .prologue
    .line 49
    const-string v0, "cache may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "clock may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x9a7ec800L

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "time to live must be >=0 and <= 2592000000"

    .line 52
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/google/android/youtube/core/async/an;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/async/an;-><init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/utils/a;J)V

    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/al;)Lcom/google/android/youtube/core/cache/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/async/al;->a:Lcom/google/android/youtube/core/cache/a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/al;)Lcom/google/android/youtube/core/utils/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/core/async/al;->c:Lcom/google/android/youtube/core/utils/a;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 7

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/android/youtube/core/async/al;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/async/al;->a:Lcom/google/android/youtube/core/cache/a;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/al;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Timestamped;

    .line 93
    iget-object v1, p0, Lcom/google/android/youtube/core/async/al;->c:Lcom/google/android/youtube/core/utils/a;

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/a;->a()J

    move-result-wide v1

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-wide v3, v0, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 96
    iget-wide v3, v0, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    iget-wide v5, p0, Lcom/google/android/youtube/core/async/al;->d:J

    add-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-ltz v1, :cond_0

    .line 98
    iget-object v0, v0, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/al;->b:Lcom/google/android/youtube/core/async/ae;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/core/async/al;->b:Lcom/google/android/youtube/core/async/ae;

    new-instance v1, Lcom/google/android/youtube/core/async/am;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/am;-><init>(Lcom/google/android/youtube/core/async/al;Lcom/google/android/youtube/core/async/h;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Lcom/google/android/youtube/core/async/NotFoundException;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/NotFoundException;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
