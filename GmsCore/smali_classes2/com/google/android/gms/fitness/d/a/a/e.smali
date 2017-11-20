.class public final Lcom/google/android/gms/fitness/d/a/a/e;
.super Lcom/google/android/gms/fitness/d/a/a/a;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/gms/fitness/data/DataType;

.field private final c:Lcom/google/android/gms/fitness/data/Field;

.field private final d:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/fitness/d/a/a/a;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/e;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 34
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/e;->d:Lcom/google/android/gms/fitness/data/DataType;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "%s not a field of %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "%s not a field of %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/e;->d:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/e;->a:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/e;->a:Lcom/google/android/gms/fitness/data/Device;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/Iterable;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/d/a/a/e;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Require %s measurement instead of: %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/d/a/a/e;->b:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v2, v1

    aput-object p1, v2, v6

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 85
    :goto_1
    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->a()Z

    move-result v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/d/a/a/e;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 73
    iget-object v2, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v2

    .line 74
    iget-object v3, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    .line 81
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->b(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 85
    new-array v2, v6, [Lcom/google/android/gms/fitness/data/DataPoint;

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 76
    iget-object v2, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v2

    .line 77
    iget-object v3, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    goto :goto_2

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/d/a/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/fitness/data/Device;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/d/a/a/a;->a(Lcom/google/android/gms/fitness/data/Device;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/e;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/a/e;->d:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
