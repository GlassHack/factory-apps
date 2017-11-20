.class public final Lcom/google/android/gms/fitness/sensors/d/d;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/sensors/d/a;

.field private final b:Lcom/google/android/gms/fitness/sensors/e/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/e/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/d;->b:Lcom/google/android/gms/fitness/sensors/e/i;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/sensors/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/d;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 6

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/d/d;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/d;->b:Lcom/google/android/gms/fitness/sensors/e/i;

    new-instance v1, Lcom/google/android/gms/fitness/sensors/e/h;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/sensors/e/h;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/fitness/sensors/e/h;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/sensors/e/h;->a(JJ)Lcom/google/android/gms/fitness/sensors/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/sensors/e/h;->a()Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/sensors/e/g;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/d;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/d;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/d/a;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/google/android/gms/fitness/sensors/d/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    const-string v1, "Unregistration called for Adapter."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/d/d;->b:Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/data/o;)Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/d;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    .line 81
    const/4 v0, 0x1

    .line 83
    :cond_0
    return v0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/sensors/d/d;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/d/d;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/sensors/d/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
