.class public final Lcom/google/android/gms/fitness/d/a/a/d;
.super Lcom/google/android/gms/fitness/d/a/a/a;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/gms/fitness/data/DataType;

.field private final c:Lcom/google/android/gms/fitness/data/DataType;

.field private final d:Lcom/google/android/gms/fitness/data/Field;

.field private final e:Lcom/google/android/gms/fitness/data/Field;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;Lcom/google/android/gms/fitness/data/Field;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/fitness/d/a/a/a;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 38
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->d:Lcom/google/android/gms/fitness/data/Field;

    .line 39
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->e:Lcom/google/android/gms/fitness/data/Field;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->d:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Format must be FORMAT_INT32"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->e:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Format must be FORMAT_INT32"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/fitness/d/a/a/d;->d:Lcom/google/android/gms/fitness/data/Field;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "%s not a field of %s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/fitness/d/a/a/d;->d:Lcom/google/android/gms/fitness/data/Field;

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/fitness/d/a/a/d;->e:Lcom/google/android/gms/fitness/data/Field;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "%s not a field of %s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/fitness/d/a/a/d;->e:Lcom/google/android/gms/fitness/data/Field;

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v0, v2

    .line 42
    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/d;->c:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/d;->a:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/d;->a:Lcom/google/android/gms/fitness/data/Device;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/Iterable;
    .locals 10

    .prologue
    const-wide/32 v8, 0x7fffffff

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/d;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Require %s measurement instead of: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/d/a/a/d;->b:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 89
    :goto_1
    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->d:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->a()Z

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/d/a/a/d;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->d:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v0

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    .line 82
    cmp-long v4, v0, v8

    if-gtz v4, :cond_2

    :goto_2
    long-to-int v0, v0

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/d;->e:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->f()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->b(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 89
    new-array v0, v6, [Lcom/google/android/gms/fitness/data/DataPoint;

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_2
    sub-long/2addr v0, v8

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    goto :goto_2
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/fitness/data/Device;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/d/a/a/a;->a(Lcom/google/android/gms/fitness/data/Device;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/d;->c:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
