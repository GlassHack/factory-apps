.class final Lcom/google/maps/api/android/lib6/b/j;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/b/h;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/j;->a:Lcom/google/maps/api/android/lib6/b/h;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/b/h;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/b/j;-><init>(Lcom/google/maps/api/android/lib6/b/h;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized a(Ljava/io/DataInput;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/j;->a:Lcom/google/maps/api/android/lib6/b/h;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/j;->a:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->h(Lcom/google/maps/api/android/lib6/b/h;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method
