.class public final Lcom/google/android/gms/fitness/f/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/c/a/as;

.field private static final b:Lcom/google/c/a/am;


# instance fields
.field private c:Ljava/util/Map;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    const/16 v0, 0x7c

    invoke-static {v0}, Lcom/google/c/a/am;->a(C)Lcom/google/c/a/am;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/c/a/am;->a(Ljava/lang/String;)Lcom/google/c/a/as;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/f/p;->a:Lcom/google/c/a/as;

    .line 31
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/c/a/am;->a(C)Lcom/google/c/a/am;

    move-result-object v0

    sget-object v1, Lcom/google/c/a/e;->a:Lcom/google/c/a/e;

    invoke-static {v1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/c/a/am;

    iget-object v3, v0, Lcom/google/c/a/am;->c:Lcom/google/c/a/au;

    iget-boolean v4, v0, Lcom/google/c/a/am;->b:Z

    iget v0, v0, Lcom/google/c/a/am;->d:I

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/google/c/a/am;-><init>(Lcom/google/c/a/au;ZLcom/google/c/a/e;I)V

    sput-object v2, Lcom/google/android/gms/fitness/f/p;->b:Lcom/google/c/a/am;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/p;->c:Ljava/util/Map;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/p;->d:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/p;->e:Ljava/util/Map;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/p;->f:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/p;->a()V

    .line 46
    return-void
.end method

.method private declared-synchronized a()V
    .locals 7

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->O:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    const-string v1, "Updating shareable data partner map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    iput-object v0, p0, Lcom/google/android/gms/fitness/f/p;->d:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/p;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    sget-object v1, Lcom/google/android/gms/fitness/f/p;->a:Lcom/google/c/a/as;

    invoke-virtual {v1, v0}, Lcom/google/c/a/as;->a(Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    sget-object v1, Lcom/google/android/gms/fitness/f/p;->b:Lcom/google/c/a/am;

    invoke-virtual {v1}, Lcom/google/c/a/am;->a()Lcom/google/c/a/am;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Lcom/google/c/a/am;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_2
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->R:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/p;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    const-string v1, "Updating shareable data partner map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    iput-object v0, p0, Lcom/google/android/gms/fitness/f/p;->f:Ljava/lang/String;

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 117
    sget-object v1, Lcom/google/android/gms/fitness/f/p;->a:Lcom/google/c/a/as;

    invoke-virtual {v1, v0}, Lcom/google/c/a/as;->a(Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/fitness/f/p;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v1, "DataType creation failed due to bad fields: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    .line 120
    :goto_3
    if-nez v1, :cond_5

    .line 121
    const-string v1, "Error creating datatype: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_3
    monitor-exit p0

    return-void

    .line 119
    :cond_4
    :try_start_2
    new-instance v2, Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v1, v5}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v2

    goto :goto_3

    .line 124
    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/p;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 129
    iget-object v2, p0, Lcom/google/android/gms/fitness/f/p;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    sget-object v0, Lcom/google/android/gms/fitness/f/p;->b:Lcom/google/c/a/am;

    invoke-virtual {v0}, Lcom/google/c/a/am;->a()Lcom/google/c/a/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/c/a/am;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v3, v5

    if-eq v3, v9, :cond_0

    const-string v3, "Un-recognized field format: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v3, v5}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v3, v1

    .line 147
    :goto_1
    if-nez v3, :cond_2

    .line 148
    const-string v2, "Cannot construct field: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 157
    :goto_2
    return-object v0

    .line 146
    :cond_0
    aget-object v3, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_1

    if-eq v6, v9, :cond_1

    const-string v3, "Unknown field format: %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v3, v1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/google/android/gms/fitness/data/Field;

    aget-object v5, v5, v7

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 151
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    const-string v0, "No fields found"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 155
    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 157
    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/p;->a()V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/p;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/p;->a()V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/p;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 64
    if-nez v0, :cond_0

    move v0, v1

    .line 70
    :goto_0
    return v0

    .line 67
    :cond_0
    sget-object v3, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    if-ne p3, v3, :cond_1

    move v0, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    const-string v3, "*"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/p;->a()V

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/p;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
