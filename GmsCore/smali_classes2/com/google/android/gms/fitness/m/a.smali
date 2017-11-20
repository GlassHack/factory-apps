.class public final Lcom/google/android/gms/fitness/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# instance fields
.field private final b:Lcom/google/android/gms/fitness/n/ar;

.field private final c:Lcom/google/android/gms/fitness/sensors/a;

.field private final d:Lcom/google/android/gms/fitness/service/d;

.field private final e:Lcom/google/android/gms/fitness/m/f;

.field private final f:Lcom/google/android/gms/fitness/sync/d;

.field private final g:Lcom/google/android/gms/fitness/m/d;

.field private final h:Ljava/util/Map;

.field private final i:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/gms/fitness/m/b;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/m/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/m/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/service/d;Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/m/d;Lcom/google/android/gms/fitness/sync/d;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    .line 69
    iput-object p2, p0, Lcom/google/android/gms/fitness/m/a;->d:Lcom/google/android/gms/fitness/service/d;

    .line 70
    new-instance v0, Lcom/google/android/gms/fitness/m/f;

    invoke-direct {v0, p2, p7}, Lcom/google/android/gms/fitness/m/f;-><init>(Lcom/google/android/gms/fitness/service/d;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/m/a;->e:Lcom/google/android/gms/fitness/m/f;

    .line 71
    iput-object p3, p0, Lcom/google/android/gms/fitness/m/a;->c:Lcom/google/android/gms/fitness/sensors/a;

    .line 72
    iput-object p4, p0, Lcom/google/android/gms/fitness/m/a;->g:Lcom/google/android/gms/fitness/m/d;

    .line 73
    iput-object p5, p0, Lcom/google/android/gms/fitness/m/a;->f:Lcom/google/android/gms/fitness/sync/d;

    .line 74
    iput-object p6, p0, Lcom/google/android/gms/fitness/m/a;->h:Ljava/util/Map;

    .line 75
    iput-object p7, p0, Lcom/google/android/gms/fitness/m/a;->i:Ljava/util/Map;

    .line 76
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/d/c;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/d/c;
    .locals 5

    .prologue
    .line 329
    iget-object v0, p1, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/fitness/data/DataSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-object p1

    :cond_0
    new-instance v1, Lcom/google/android/gms/fitness/d/c;

    iget-object v2, p1, Lcom/google/android/gms/fitness/d/c;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/fitness/data/x;

    iget-object v3, p1, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-direct {v0, v3}, Lcom/google/android/gms/fitness/data/x;-><init>(Lcom/google/android/gms/fitness/data/Subscription;)V

    iput-object p2, v0, Lcom/google/android/gms/fitness/data/x;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/fitness/data/x;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/x;->a()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->g:Lcom/google/android/gms/fitness/m/d;

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/fitness/m/d;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/m/e;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    :goto_1
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/fitness/d/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/Subscription;Lcom/google/android/gms/fitness/d/e;)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/fitness/m/e;->b:Lcom/google/android/gms/fitness/d/e;

    goto :goto_1
.end method

.method private a(Lcom/google/android/gms/fitness/b/r;)Ljava/util/Set;
    .locals 5

    .prologue
    .line 311
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 312
    iget-boolean v0, p1, Lcom/google/android/gms/fitness/b/r;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    .line 313
    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/fitness/b/r;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/k;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    .line 314
    iget-object v3, p1, Lcom/google/android/gms/fitness/b/r;->b:Lcom/google/android/gms/fitness/b/l;

    .line 315
    const/4 v4, 0x0

    invoke-direct {p0, v2, v0, v4}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/d/e;Z)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 316
    new-instance v4, Lcom/google/android/gms/fitness/b/a/e;

    invoke-direct {v4, v0}, Lcom/google/android/gms/fitness/b/a/e;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/fitness/b/l;->a(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :cond_2
    return-object v1
.end method

.method private a(Lcom/google/android/gms/fitness/b/r;Lcom/google/android/gms/fitness/d/c;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 295
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 296
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/b/r;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 298
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/d/c;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/d/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_0
    return-object v1
.end method

.method private a(Lcom/google/android/gms/fitness/d/c;Z)Ljava/util/Set;
    .locals 6

    .prologue
    .line 162
    iget-object v1, p1, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/m/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 163
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/t;

    .line 167
    sget-object v1, Lcom/google/android/gms/fitness/m/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 191
    :goto_0
    return-object v0

    .line 172
    :cond_1
    sget-object v1, Lcom/google/android/gms/fitness/m/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/t;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/b/r;

    .line 176
    iget-boolean v4, v1, Lcom/google/android/gms/fitness/b/r;->d:Z

    if-eqz v4, :cond_3

    if-nez p2, :cond_2

    .line 177
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/b/r;Lcom/google/android/gms/fitness/d/c;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/d/c;

    .line 182
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/d/c;Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 186
    :catchall_0
    move-exception v1

    move-object v2, v1

    sget-object v1, Lcom/google/android/gms/fitness/m/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v2

    :cond_4
    sget-object v1, Lcom/google/android/gms/fitness/m/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_2
    move-object v0, v2

    .line 191
    goto :goto_0

    .line 188
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/d/c;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/d/c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/d/e;Z)Ljava/util/Set;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/a;->c:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v1, p1}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    if-eqz p3, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataType;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/google/android/gms/fitness/m/a;->g:Lcom/google/android/gms/fitness/m/d;

    sget-object v3, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/fitness/m/d;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/d/e;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataType;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 107
    iget-object v2, p0, Lcom/google/android/gms/fitness/m/a;->g:Lcom/google/android/gms/fitness/m/d;

    sget-object v3, Lcom/google/android/gms/fitness/d/e;->b:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/fitness/m/d;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/d/e;)V

    goto :goto_1

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->g:Lcom/google/android/gms/fitness/m/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/fitness/m/d;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/d/e;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)J
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/n/ar;->b(Ljava/util/Collection;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/a;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :goto_0
    return-object p1

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/a;->c:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 269
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/fitness/data/DataSource;->a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, v0

    .line 270
    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/n/ar;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 276
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/fitness/data/DataSource;->a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p1, v0

    .line 277
    goto :goto_0

    .line 280
    :cond_4
    const-string v0, "Could not find data source: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->c:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v1

    .line 213
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/google/android/gms/fitness/m/a;->g:Lcom/google/android/gms/fitness/m/d;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    sget-object v3, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/fitness/m/d;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/d/e;)V

    .line 215
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;JJIZZ)Ljava/util/List;
    .locals 12

    .prologue
    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 355
    if-eqz p7, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/b/t;

    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/n/ar;->a()Ljava/util/Map;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->e:Lcom/google/android/gms/fitness/m/f;

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/t;JJILjava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    .line 359
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/fitness/c/a;->a(Lcom/google/android/gms/fitness/data/DataSource;JJJ)V

    .line 367
    :goto_0
    return-object v0

    .line 363
    :cond_0
    iget-object v7, p0, Lcom/google/android/gms/fitness/m/a;->d:Lcom/google/android/gms/fitness/service/d;

    iget-object v0, v7, Lcom/google/android/gms/fitness/service/d;->a:Lcom/google/android/gms/fitness/n/ar;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSource;JJI)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v1

    move-object v0, v7

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/fitness/service/d;->a(Lcom/google/android/gms/fitness/data/DataSet;JJIZ)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    .line 366
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/fitness/c/a;->a(Lcom/google/android/gms/fitness/data/DataSource;JJJ)V

    .line 367
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/util/Set;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v1}, Lcom/google/android/gms/fitness/n/ar;->d_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/a;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 120
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/d/c;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/d/c;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 227
    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 251
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :cond_1
    const-string v0, "No default data source set for %s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 234
    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/d/e;Z)Ljava/util/Set;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t read default data source from DB"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 250
    :cond_2
    const-string v0, "No default data source found for %s, creating a fake one"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 251
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    iput v3, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/util/Set;
    .locals 4

    .prologue
    .line 130
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/n/ar;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/c;

    .line 134
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/d/c;Z)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 136
    :cond_0
    return-object v1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->f:Lcom/google/android/gms/fitness/sync/d;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/sync/d;->b()V

    .line 390
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/n/ar;->f()Z

    .line 391
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/a;->b:Lcom/google/android/gms/fitness/n/ar;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
