.class public final Lcom/google/android/gms/fitness/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:Lcom/google/android/gms/fitness/data/Session;


# direct methods
.method public constructor <init>(JJI)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-wide p1, p0, Lcom/google/android/gms/fitness/a/n;->a:J

    .line 171
    iput-wide p3, p0, Lcom/google/android/gms/fitness/a/n;->b:J

    .line 172
    iput p5, p0, Lcom/google/android/gms/fitness/a/n;->c:I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/n;->d:Lcom/google/android/gms/fitness/data/Session;

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Session;)V
    .locals 4

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/a/n;->a:J

    .line 178
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/a/n;->b:J

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/a/n;->c:I

    .line 180
    iput-object p1, p0, Lcom/google/android/gms/fitness/a/n;->d:Lcom/google/android/gms/fitness/data/Session;

    .line 181
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/a/n;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/a/n;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/a/n;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/a/n;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/a/n;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/a/n;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/a/n;->c:I

    iget v3, p1, Lcom/google/android/gms/fitness/a/n;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/a/n;->d:Lcom/google/android/gms/fitness/data/Session;

    iget-object v3, p1, Lcom/google/android/gms/fitness/a/n;->d:Lcom/google/android/gms/fitness/data/Session;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 205
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/a/n;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/a/n;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/a/n;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/a/n;->d:Lcom/google/android/gms/fitness/data/Session;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
