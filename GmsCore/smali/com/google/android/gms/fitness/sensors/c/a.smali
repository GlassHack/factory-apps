.class public final Lcom/google/android/gms/fitness/sensors/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/c/b;


# static fields
.field private static final a:Lcom/google/android/gms/fitness/data/DataType;

.field private static final b:Lcom/google/android/gms/fitness/data/DataType;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/sensors/c/a;->a:Lcom/google/android/gms/fitness/data/DataType;

    .line 35
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/sensors/c/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/c/a;->c:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataPoint;Z)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 6

    .prologue
    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 117
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 119
    const-string v1, "Out of order data point: %s is before %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/gms/fitness/data/DataPoint;)I
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    sget-object v1, Lcom/google/android/gms/fitness/sensors/c/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/c/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/Device;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    const-string v1, "real_time_step_deltas"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/Iterable;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/sensors/c/a;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Require cumulative step counts instead of: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 101
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/fitness/sensors/c/a;->a(Lcom/google/android/gms/fitness/data/DataPoint;Z)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/sensors/c/a;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 81
    const-string v4, "%s does not intersect with %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 84
    new-array v0, v2, [I

    invoke-static {p1}, Lcom/google/android/gms/fitness/sensors/c/a;->b(Lcom/google/android/gms/fitness/data/DataPoint;)I

    move-result v4

    aput v4, v0, v1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 101
    :goto_2
    new-array v0, v2, [Lcom/google/android/gms/fitness/data/DataPoint;

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/fitness/sensors/c/a;->b(Lcom/google/android/gms/fitness/data/DataPoint;)I

    move-result v4

    invoke-static {v0}, Lcom/google/android/gms/fitness/sensors/c/a;->b(Lcom/google/android/gms/fitness/data/DataPoint;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 87
    if-gtz v4, :cond_4

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/sensors/c/a;->a(Lcom/google/android/gms/fitness/data/DataPoint;Z)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 95
    const-string v3, "prev is greater than current: %s\n%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 99
    new-array v0, v2, [I

    aput v4, v0, v1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    goto :goto_2
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gms/fitness/sensors/c/a;->a:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gms/fitness/sensors/c/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
