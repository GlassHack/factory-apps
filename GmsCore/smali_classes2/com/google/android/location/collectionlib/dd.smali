.class public final Lcom/google/android/location/collectionlib/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/location/collectionlib/dd;


# instance fields
.field private final b:Ljava/util/List;

.field private final c:Ljava/util/Map;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/location/collectionlib/dd;

    invoke-direct {v0}, Lcom/google/android/location/collectionlib/dd;-><init>()V

    sput-object v0, Lcom/google/android/location/collectionlib/dd;->a:Lcom/google/android/location/collectionlib/dd;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/dd;->b:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/dd;->c:Ljava/util/Map;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/dd;->d:J

    .line 108
    return-void
.end method

.method public static a()Lcom/google/android/location/collectionlib/dd;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/location/collectionlib/dd;->a:Lcom/google/android/location/collectionlib/dd;

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-wide/32 v2, 0xea60

    div-long v2, p0, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "min) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(JJ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/google/android/location/collectionlib/dd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p0

    long-to-double v4, p2

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/dd;JJ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/location/collectionlib/dd;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/location/collectionlib/cy;)V
    .locals 4

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/dd;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/dd;->d:J

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/location/collectionlib/cy;J)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p1}, Lcom/google/android/location/collectionlib/cy;->d()Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dd;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/de;

    .line 55
    if-nez v0, :cond_3

    .line 56
    new-instance v0, Lcom/google/android/location/collectionlib/de;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/collectionlib/de;-><init>(Lcom/google/android/location/collectionlib/dd;Lcom/google/android/location/collectionlib/cy;)V

    .line 57
    iget-object v3, p0, Lcom/google/android/location/collectionlib/dd;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 60
    :goto_0
    iget-object v3, v2, Lcom/google/android/location/collectionlib/de;->c:[S

    iget-wide v4, v2, Lcom/google/android/location/collectionlib/de;->a:J

    add-long/2addr v4, p2

    iput-wide v4, v2, Lcom/google/android/location/collectionlib/de;->a:J

    iget v0, v2, Lcom/google/android/location/collectionlib/de;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/android/location/collectionlib/de;->b:I

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    if-nez v0, :cond_1

    aget-short v4, v3, v1

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    iget-object v0, v2, Lcom/google/android/location/collectionlib/de;->d:[I

    aget v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v1

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/google/android/location/collectionlib/de;->d:[I

    array-length v1, v3

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_2
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/io/PrintWriter;J)V
    .locals 8

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    const-string v0, "####NlpWakeLockStats (since last process restart)###"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/dd;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 67
    const-string v0, "WakeLockTracker not initialized"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/dd;->d:J

    sub-long v0, p2, v0

    .line 71
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 72
    const-wide/16 v0, 0x1

    move-wide v2, v0

    .line 74
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time since first lock: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/dd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "--Locks currently held:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cy;

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeHeld= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, p2, p3}, Lcom/google/android/location/collectionlib/cy;->a(J)J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Lcom/google/android/location/collectionlib/dd;->a(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isHeld="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->c()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_1
    :try_start_2
    const-string v0, "--Historical locks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dd;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/collectionlib/de;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/location/collectionlib/de;->a(Ljava/lang/String;Ljava/io/PrintWriter;J)V

    goto :goto_3

    .line 90
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_3
    move-wide v2, v0

    goto/16 :goto_1
.end method
