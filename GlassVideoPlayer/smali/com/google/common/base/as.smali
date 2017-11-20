.class public final Lcom/google/common/base/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/ax;

.field private b:Z

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/google/common/base/ax;->b()Lcom/google/common/base/ax;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/as;-><init>(Lcom/google/common/base/ax;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/ax;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ax;

    iput-object v0, p0, Lcom/google/common/base/as;->a:Lcom/google/common/base/ax;

    .line 93
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/common/base/as;->c()J

    move-result-wide v0

    .line 215
    invoke-static {v0, v1}, Lcom/google/common/base/as;->a(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    .line 216
    long-to-double v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v0, v3

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "g %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v2}, Lcom/google/common/base/as;->b(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)Ljava/util/concurrent/TimeUnit;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 223
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 224
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 232
    :goto_0
    return-object v0

    .line 226
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 227
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 229
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 230
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 232
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0
.end method

.method private static b(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/google/common/base/at;->a:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :pswitch_0
    const-string v0, "ns"

    .line 244
    :goto_0
    return-object v0

    .line 240
    :pswitch_1
    const-string v0, "\u03bcs"

    goto :goto_0

    .line 242
    :pswitch_2
    const-string v0, "ms"

    goto :goto_0

    .line 244
    :pswitch_3
    const-string v0, "s"

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c()J
    .locals 4

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/common/base/as;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/as;->a:Lcom/google/common/base/ax;

    invoke-virtual {v0}, Lcom/google/common/base/ax;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/base/as;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/base/as;->c:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/base/as;->c:J

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/common/base/as;->c()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lcom/google/common/base/as;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-boolean v0, p0, Lcom/google/common/base/as;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "This stopwatch is already running; it cannot be started more than once."

    invoke-static {v0, v2}, Lcom/google/common/base/ah;->b(ZLjava/lang/Object;)V

    .line 113
    iput-boolean v1, p0, Lcom/google/common/base/as;->b:Z

    .line 114
    iget-object v0, p0, Lcom/google/common/base/as;->a:Lcom/google/common/base/ax;

    invoke-virtual {v0}, Lcom/google/common/base/ax;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/base/as;->d:J

    .line 115
    return-object p0

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/common/base/as;
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/common/base/as;->a:Lcom/google/common/base/ax;

    invoke-virtual {v0}, Lcom/google/common/base/ax;->a()J

    move-result-wide v0

    .line 127
    iget-boolean v2, p0, Lcom/google/common/base/as;->b:Z

    const-string v3, "This stopwatch is already stopped; it cannot be stopped more than once."

    invoke-static {v2, v3}, Lcom/google/common/base/ah;->b(ZLjava/lang/Object;)V

    .line 128
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/common/base/as;->b:Z

    .line 129
    iget-wide v2, p0, Lcom/google/common/base/as;->c:J

    iget-wide v4, p0, Lcom/google/common/base/as;->d:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/base/as;->c:J

    .line 130
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/base/as;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
