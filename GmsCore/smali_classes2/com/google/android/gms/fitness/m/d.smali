.class final Lcom/google/android/gms/fitness/m/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/m/d;->a:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/d/e;)Ljava/util/Set;
    .locals 4

    .prologue
    .line 76
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/m/e;

    .line 78
    iget-object v3, v0, Lcom/google/android/gms/fitness/m/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    if-eqz p2, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/fitness/m/e;->b:Lcom/google/android/gms/fitness/d/e;

    if-ne v3, p2, :cond_0

    .line 82
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/fitness/m/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_2
    return-object v1
.end method

.method final a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/d/e;)V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/d;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/m/e;

    .line 39
    if-eqz v0, :cond_2

    .line 40
    iget-object v1, v0, Lcom/google/android/gms/fitness/m/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    const-string v1, "Data source %s already registered with data type %s -- cannot re-register with data type %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v0, v0, Lcom/google/android/gms/fitness/m/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/fitness/m/e;->b:Lcom/google/android/gms/fitness/d/e;

    if-eq v1, p2, :cond_0

    .line 55
    iget-object v1, v0, Lcom/google/android/gms/fitness/m/e;->b:Lcom/google/android/gms/fitness/d/e;

    sget-object v2, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    if-eq v1, v2, :cond_0

    .line 61
    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    if-eq p2, v1, :cond_2

    .line 62
    const-string v1, "Data source %s already registered with realm %s -- cannot re-register with realm %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v0, v0, Lcom/google/android/gms/fitness/m/e;->b:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/e;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/d;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/fitness/m/e;

    invoke-direct {v2, p1, p2, v4}, Lcom/google/android/gms/fitness/m/e;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/d/e;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
