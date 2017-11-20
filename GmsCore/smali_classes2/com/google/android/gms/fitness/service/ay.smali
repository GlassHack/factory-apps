.class public final Lcom/google/android/gms/fitness/service/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/fitness/service/ay;

.field private static b:Lcom/google/android/gms/fitness/service/ay;


# instance fields
.field private final c:Lcom/google/android/gms/common/a/b;

.field private final d:Lcom/google/android/gms/common/a/b;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/a/b;Lcom/google/android/gms/common/a/b;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ay;->c:Lcom/google/android/gms/common/a/b;

    .line 75
    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ay;->d:Lcom/google/android/gms/common/a/b;

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->e:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/fitness/service/ay;->c()V

    .line 78
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/fitness/service/ay;
    .locals 4

    .prologue
    .line 39
    const-class v1, Lcom/google/android/gms/fitness/service/ay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/fitness/service/ay;->a:Lcom/google/android/gms/fitness/service/ay;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/android/gms/fitness/service/ay;

    sget-object v2, Lcom/google/android/gms/fitness/i/a;->ac:Lcom/google/android/gms/common/a/b;

    sget-object v3, Lcom/google/android/gms/fitness/i/a;->ad:Lcom/google/android/gms/common/a/b;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/fitness/service/ay;-><init>(Lcom/google/android/gms/common/a/b;Lcom/google/android/gms/common/a/b;)V

    sput-object v0, Lcom/google/android/gms/fitness/service/ay;->a:Lcom/google/android/gms/fitness/service/ay;

    .line 43
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/service/ay;->a:Lcom/google/android/gms/fitness/service/ay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/google/android/gms/fitness/service/ay;
    .locals 4

    .prologue
    .line 49
    const-class v1, Lcom/google/android/gms/fitness/service/ay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/fitness/service/ay;->b:Lcom/google/android/gms/fitness/service/ay;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/android/gms/fitness/service/ay;

    sget-object v2, Lcom/google/android/gms/fitness/i/a;->ae:Lcom/google/android/gms/common/a/b;

    sget-object v3, Lcom/google/android/gms/fitness/i/a;->af:Lcom/google/android/gms/common/a/b;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/fitness/service/ay;-><init>(Lcom/google/android/gms/common/a/b;Lcom/google/android/gms/common/a/b;)V

    sput-object v0, Lcom/google/android/gms/fitness/service/ay;->b:Lcom/google/android/gms/fitness/service/ay;

    .line 53
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/service/ay;->b:Lcom/google/android/gms/fitness/service/ay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->f:[Ljava/lang/String;

    .line 108
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->g:[Ljava/lang/String;

    .line 109
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->h:[J

    .line 137
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->e:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->f:[Ljava/lang/String;

    .line 115
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->g:[Ljava/lang/String;

    .line 116
    array-length v0, v2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->h:[J

    move v0, v1

    .line 118
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 119
    aget-object v3, v2, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 120
    array-length v4, v3

    packed-switch v4, :pswitch_data_0

    .line 134
    const-string v3, "Invalid rule #%d: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aget-object v5, v2, v0

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ay;->f:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 124
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ay;->g:[Ljava/lang/String;

    aget-object v5, v3, v1

    aput-object v5, v4, v0

    .line 125
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ay;->h:[J

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v0

    goto :goto_1

    .line 129
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ay;->f:[Ljava/lang/String;

    aget-object v5, v3, v1

    aput-object v5, v4, v0

    .line 130
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ay;->g:[Ljava/lang/String;

    aget-object v5, v3, v8

    aput-object v5, v4, v0

    .line 131
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ay;->h:[J

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v0

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)J
    .locals 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ay;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/service/ay;->c()V

    .line 86
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ay;->h:[J

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ay;->g:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ay;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ay;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ay;->h:[J

    aget-wide v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_1
    monitor-exit p0

    return-wide v0

    .line 86
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ay;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
