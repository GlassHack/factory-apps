.class public final Lcom/google/android/gms/fitness/d/a/a/g;
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
    sget-object v0, Lcom/google/android/gms/fitness/d/a/e;->e:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/d/a/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 32
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->r:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/d/a/a/g;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/fitness/d/a/a/g;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/fitness/d/a/a/a;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/g;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    return-void
.end method

.method private b(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/g;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 112
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 113
    const-string v2, "Out of order data point: %s is before %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 127
    :cond_1
    :goto_0
    return-object v0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/fitness/d/a/a/g;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/google/android/gms/fitness/d/a/a/g;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 123
    const-string v2, "Data points too far apart: %s is far away from %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 125
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
    .locals 10

    .prologue
    const-wide v8, 0xffffffffL

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/a/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Require CSC measurement instead of: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 95
    :goto_1
    return-object v0

    .line 58
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/d/a/e;->b:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/fitness/d/a/e;->a:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    .line 62
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/d/a/a/g;->b(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    .line 63
    if-nez v2, :cond_4

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_4
    invoke-super {p0}, Lcom/google/android/gms/fitness/d/a/a/a;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v5

    .line 69
    sget-object v0, Lcom/google/android/gms/fitness/d/a/e;->a:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v8

    .line 71
    sget-object v6, Lcom/google/android/gms/fitness/d/a/e;->a:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    .line 73
    sub-long/2addr v0, v6

    .line 76
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_5

    add-long/2addr v0, v8

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 79
    :cond_5
    sget-object v6, Lcom/google/android/gms/fitness/d/a/e;->b:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v6

    .line 81
    sget-object v7, Lcom/google/android/gms/fitness/d/a/e;->b:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v2

    .line 83
    sub-int v2, v6, v2

    .line 86
    if-gez v2, :cond_6

    const v6, 0xffff

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    .line 90
    :cond_6
    int-to-float v2, v2

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v2, v6

    const/high16 v6, 0x42700000    # 60.0f

    div-float/2addr v2, v6

    .line 92
    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 93
    new-array v1, v4, [F

    aput v0, v1, v3

    invoke-virtual {v5, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 95
    new-array v0, v4, [Lcom/google/android/gms/fitness/data/DataPoint;

    aput-object v5, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1
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
    .line 48
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a/g;->c:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
