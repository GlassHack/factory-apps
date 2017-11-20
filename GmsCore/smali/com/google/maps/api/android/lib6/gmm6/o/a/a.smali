.class public final Lcom/google/maps/api/android/lib6/gmm6/o/a/a;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private static b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;


# instance fields
.field private final c:Lcom/google/g/a/d;

.field private final d:Ljava/util/Map;

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I

.field private final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(III)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/d;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->c:Lcom/google/g/a/d;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->e:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->f:I

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    return v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;I)I
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    return p1
.end method

.method public static declared-synchronized a()Lcom/google/maps/api/android/lib6/gmm6/o/a/a;
    .locals 2

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(JLandroid/util/Pair;)Lcom/google/maps/api/android/lib6/gmm6/o/a/d;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->i:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;J)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    mul-int/lit8 v0, p0, 0xa

    invoke-static {v0}, Lcom/google/g/a/e/p;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    if-gt v0, p1, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d()Lcom/google/maps/api/android/lib6/gmm6/n/h;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v2, Lcom/google/maps/api/android/lib6/gmm6/n/h;->a:Ljava/lang/Object;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-eq v1, v5, :cond_2

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v2, Lcom/google/maps/api/android/lib6/gmm6/n/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/n/h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;-><init>(Landroid/util/Pair;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/a/b;)V

    invoke-interface {v3, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    if-gt v0, p1, :cond_5

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    if-le v0, p2, :cond_7

    :cond_5
    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->a:Landroid/util/Pair;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->a:Landroid/util/Pair;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v3, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d()Lcom/google/maps/api/android/lib6/gmm6/n/h;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/n/h;->a:Ljava/lang/Object;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-eq v4, v5, :cond_4

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;->a:Landroid/util/Pair;

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/n/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/n/h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    invoke-direct {v4, v5, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/c;-><init>(Landroid/util/Pair;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/a/b;)V

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized a(Lcom/google/g/a/d;)V
    .locals 4

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->f()I

    move-result v0

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    mul-int/lit16 v3, v0, 0x400

    mul-int/lit16 v3, v3, 0x400

    div-int/lit8 v3, v3, 0x2

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x10

    invoke-direct {v2, p0, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;-><init>(Lcom/google/g/a/d;II)V

    sput-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    return v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;I)I
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    return p1
.end method

.method private declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/a/b;
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(JLandroid/util/Pair;)Lcom/google/maps/api/android/lib6/gmm6/o/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :try_start_1
    invoke-virtual {v2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->c:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-eqz p4, :cond_3

    :try_start_2
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->c:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;-><init>(J)V

    invoke-virtual {v2, p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)Lcom/google/g/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->c:Lcom/google/g/a/d;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->i:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a()V

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    if-nez v0, :cond_3

    invoke-direct {p0, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(JLandroid/util/Pair;)Lcom/google/maps/api/android/lib6/gmm6/o/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/a/b;)V

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/a/b;)V

    :cond_2
    iput-object p4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {p4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->h()I

    move-result v1

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    invoke-interface {p4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->i()I

    move-result v1

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->e:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->f:I

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Ljava/util/List;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    if-nez v4, :cond_2

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    add-int/2addr v1, v2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->e:I

    sub-int/2addr v0, v2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->f:I

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(II)V

    return-void
.end method

.method public final declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 8

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->c()V

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Ljava/util/List;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->h()I

    move-result v3

    iput v3, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    iget v4, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->i()I

    move-result v4

    iput v4, v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->e:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->f:I

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, " + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "no"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, " tiles use "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->g:I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->e:I

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M GL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->h:I

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->f:I

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M J+N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;

    if-nez v0, :cond_0

    invoke-direct {p0, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(JLandroid/util/Pair;)Lcom/google/maps/api/android/lib6/gmm6/o/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->e()V

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
