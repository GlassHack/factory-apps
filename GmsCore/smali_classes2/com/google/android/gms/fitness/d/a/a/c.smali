.class public final Lcom/google/android/gms/fitness/d/a/a/c;
.super Lcom/google/android/gms/fitness/d/a/a/a;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/gms/fitness/data/DataType;

.field private static final c:Lcom/google/android/gms/fitness/data/DataType;

.field private static final d:J


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/gms/fitness/d/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/d/a/a/c;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 32
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/d/a/a/c;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/fitness/d/a/a/c;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/fitness/d/a/a/a;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    return-void
.end method

.method private b(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 92
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 93
    const-string v2, "Out of order data point: %s is before %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 107
    :cond_1
    :goto_0
    return-object v0

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/fitness/d/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/google/android/gms/fitness/d/a/a/c;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 103
    const-string v2, "Data points too far apart: %s is far away from %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 105
    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/google/android/gms/fitness/d/a/a/a;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/Iterable;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/fitness/d/a/a/c;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Require RSC measurement instead of: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 76
    :goto_1
    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/data/n;->n:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->a()Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/d/a/a/c;->b(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 64
    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/fitness/d/a/a/a;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    .line 66
    sget-object v3, Lcom/google/android/gms/fitness/data/n;->n:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v3

    .line 67
    sget-object v4, Lcom/google/android/gms/fitness/data/n;->n:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v4

    .line 68
    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 71
    long-to-float v4, v4

    mul-float/2addr v3, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3c

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 73
    sget-object v4, Lcom/google/android/gms/fitness/data/n;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataPoint;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/fitness/data/Device;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/d/a/a/a;->a(Lcom/google/android/gms/fitness/data/Device;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a/c;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a/c;->c:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
