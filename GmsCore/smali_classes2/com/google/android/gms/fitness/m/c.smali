.class public final Lcom/google/android/gms/fitness/m/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/fitness/n/ar;

.field public final b:Lcom/google/android/gms/fitness/service/d;

.field public final c:Lcom/google/android/gms/fitness/sync/d;

.field public final d:Lcom/google/android/gms/fitness/sensors/a;

.field public final e:Lcom/google/android/gms/fitness/m/d;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/service/d;Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/sensors/a;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/gms/fitness/m/d;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/m/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/m/c;->e:Lcom/google/android/gms/fitness/m/d;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/m/c;->f:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/m/c;->g:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/fitness/m/c;->a:Lcom/google/android/gms/fitness/n/ar;

    .line 45
    iput-object p2, p0, Lcom/google/android/gms/fitness/m/c;->b:Lcom/google/android/gms/fitness/service/d;

    .line 46
    iput-object p3, p0, Lcom/google/android/gms/fitness/m/c;->c:Lcom/google/android/gms/fitness/sync/d;

    .line 47
    iput-object p4, p0, Lcom/google/android/gms/fitness/m/c;->d:Lcom/google/android/gms/fitness/sensors/a;

    .line 48
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/b/t;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/gms/fitness/b/a/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/a/h;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/fitness/b/t;->a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/google/c/c/bs;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/a/e;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/c;->e:Lcom/google/android/gms/fitness/m/d;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/fitness/m/d;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/d/e;)V

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/c;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/m/c;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/c;->g:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Default data source for %s already defined"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/c;->g:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object p0

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/m/c;

    .line 74
    return-object p0
.end method
