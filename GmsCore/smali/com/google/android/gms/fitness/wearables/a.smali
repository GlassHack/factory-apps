.class public final Lcom/google/android/gms/fitness/wearables/a;
.super Lcom/google/android/gms/fitness/sync/e;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/j;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sync/e;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/fitness/wearables/a;->a:Lcom/google/android/gms/common/api/j;

    .line 42
    iput-object p2, p0, Lcom/google/android/gms/fitness/wearables/a;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/android/gms/fitness/wearables/a;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;[B)Lcom/google/android/gms/common/api/y;
    .locals 5

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gms/wearable/y;->b:Lcom/google/android/gms/wearable/o;

    iget-object v1, p0, Lcom/google/android/gms/fitness/wearables/a;->a:Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/gms/fitness/wearables/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/fitness/wearables/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/google/android/gms/wearable/o;->a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/Collection;
    .locals 4

    .prologue
    .line 54
    const-string v0, "syncing %s points"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 56
    new-instance v1, Lcom/google/n/a/a/a/a/n;

    invoke-direct {v1}, Lcom/google/n/a/a/a/a/n;-><init>()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/m;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/n/a/a/a/a/m;

    iput-object v0, v1, Lcom/google/n/a/a/a/a/n;->a:[Lcom/google/n/a/a/a/a/m;

    .line 59
    invoke-static {v1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    .line 61
    const-string v1, "/WearablesSync/DataPoint/"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/fitness/wearables/a;->a(Ljava/lang/String;[B)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    .line 64
    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/q;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/q;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 70
    :cond_0
    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "syncing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v3

    .line 82
    const-string v4, "/WearablesSync/DataSource/"

    invoke-direct {p0, v4, v3}, Lcom/google/android/gms/fitness/wearables/a;->a(Ljava/lang/String;[B)Lcom/google/android/gms/common/api/y;

    move-result-object v3

    .line 83
    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/y;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/q;

    invoke-interface {v1}, Lcom/google/android/gms/wearable/q;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unable to sync: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " datasource: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_2
    return-object v2
.end method
