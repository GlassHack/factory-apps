.class public final Lcom/google/android/gms/fitness/j/c;
.super Lcom/google/android/gms/fitness/j/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/fitness/n/ar;

.field private e:Lcom/google/android/gms/fitness/n/d;

.field private f:Lcom/google/android/gms/fitness/service/au;

.field private g:Lcom/google/android/gms/fitness/sensors/a/a;

.field private h:Lcom/google/android/gms/fitness/sensors/a;

.field private i:Lcom/google/android/gms/fitness/m/a;

.field private j:Lcom/google/android/gms/fitness/a/o;

.field private k:Lcom/google/android/gms/fitness/sync/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/j/c;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/fitness/j/a;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/android/gms/fitness/j/c;->b:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/google/android/gms/fitness/j/c;->c:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/n/az;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/fitness/n/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/c;->d:Lcom/google/android/gms/fitness/n/ar;

    .line 106
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    const-class v2, Lcom/google/android/gms/fitness/j/c;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/google/android/gms/fitness/j/c;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_0
    :goto_0
    check-cast v0, Lcom/google/android/gms/fitness/j/a;

    .line 93
    if-nez v0, :cond_2

    .line 94
    new-instance v1, Lcom/google/android/gms/fitness/j/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/fitness/j/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/google/android/gms/fitness/j/c;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v0, v1

    .line 98
    :cond_2
    monitor-exit v2

    return-object v0

    .line 92
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/fitness/m/a;)Lcom/google/android/gms/fitness/a/o;
    .locals 3

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->j:Lcom/google/android/gms/fitness/a/o;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->d:Lcom/google/android/gms/fitness/n/ar;

    .line 180
    new-instance v1, Lcom/google/android/gms/fitness/a/i;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/fitness/a/i;-><init>(Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/ar;)V

    .line 182
    new-instance v2, Lcom/google/android/gms/fitness/a/o;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/fitness/a/o;-><init>(Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/a/i;)V

    iput-object v2, p0, Lcom/google/android/gms/fitness/j/c;->j:Lcom/google/android/gms/fitness/a/o;

    .line 184
    iget-object v1, p0, Lcom/google/android/gms/fitness/j/c;->j:Lcom/google/android/gms/fitness/a/o;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/a/o;->a()Lcom/google/android/gms/fitness/n/au;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/n/au;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->j:Lcom/google/android/gms/fitness/a/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/fitness/sensors/a;)Lcom/google/android/gms/fitness/m/a;
    .locals 12

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->i:Lcom/google/android/gms/fitness/m/a;

    if-nez v0, :cond_0

    .line 169
    iget-object v10, p0, Lcom/google/android/gms/fitness/j/c;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->d:Lcom/google/android/gms/fitness/n/ar;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/j/c;->b()Lcom/google/android/gms/fitness/sync/d;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/fitness/b/a/a;

    sget-object v2, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    invoke-direct {v3, v2}, Lcom/google/android/gms/fitness/b/a/a;-><init>(Lcom/google/android/gms/fitness/data/Application;)V

    new-instance v2, Lcom/google/android/gms/fitness/service/d;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/fitness/service/d;-><init>(Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/sync/d;)V

    new-instance v11, Lcom/google/android/gms/fitness/m/c;

    invoke-direct {v11, v0, v2, v1, p1}, Lcom/google/android/gms/fitness/m/c;-><init>(Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/service/d;Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/sensors/a;)V

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_accelerometer"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.accelerometer"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_accelerometer"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/ab;

    invoke-direct {v0, v3}, Lcom/google/android/gms/fitness/b/c/ab;-><init>(Lcom/google/android/gms/fitness/b/b;)V

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_calories_consumed"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.calories.consumed"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_calories_consumed"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_calories_expended"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.calories.expended"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_calories_expended"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_distance_delta"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.distance.delta"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_distance_delta"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_heart_rate_bpm"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.heart_rate.bpm"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_heart_rate_bpm"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_height"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.height"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_height"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_location_samples"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.location.sample"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_location_samples"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_power_sample"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.power.sample"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_power_sample"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_speed"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.speed"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_speed"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_step_deltas"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.step_count.delta"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_step_deltas"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_weight"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.weight"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_weight"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->b(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/l;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/l;-><init>()V

    new-instance v1, Lcom/google/android/gms/fitness/b/c/aa;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/fitness/b/c/aa;-><init>(Lcom/google/android/gms/fitness/b/c/ag;Lcom/google/android/gms/fitness/b/b;)V

    sget-object v0, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v1, v0}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/ae;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/ae;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/ae;->a(J)Lcom/google/android/gms/fitness/b/c/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/ae;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.accelerometer"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_accelerometer"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/v;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/v;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/v;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.distance.delta"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_distance_delta"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/ae;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/ae;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/ae;->a(J)Lcom/google/android/gms/fitness/b/c/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/ae;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.heart_rate.bpm"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_heart_rate_bpm"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/ae;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/ae;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/ae;->a(J)Lcom/google/android/gms/fitness/b/c/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/ae;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.height"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_height"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/x;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/x;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/x;->a(J)Lcom/google/android/gms/fitness/b/c/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/ae;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.location.sample"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_location_samples"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/ae;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/ae;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/ae;->a(J)Lcom/google/android/gms/fitness/b/c/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/ae;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.speed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_speed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/v;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/v;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/v;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.step_count.delta"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_step_deltas"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "estimated_steps"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "real_time_step_deltas"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/ae;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/ae;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/ae;->a(J)Lcom/google/android/gms/fitness/b/c/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/ae;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.weight"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_weight"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/v;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/v;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/v;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.calories.consumed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_calories_consumed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/v;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/v;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/v;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.calories.expended"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_calories_expended"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/ae;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/ae;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/ae;->a(J)Lcom/google/android/gms/fitness/b/c/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/b/c/ae;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.power.sample"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "merge_power_sample"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/f;->b()Lcom/google/android/gms/fitness/b/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/n;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    const-string v1, "merge_activity_segments"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    const-string v1, "com.google.activity.segment"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    const-string v1, "default_activity_segments"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/c/n;->a()Lcom/google/android/gms/fitness/b/c/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/ah;

    const-string v1, "default_step_deltas"

    const-string v2, "default_activity_segments"

    sget-object v4, Lcom/google/android/gms/fitness/i/a;->ag:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v5, Lcom/google/android/gms/fitness/i/a;->ah:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v5}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v6, Lcom/google/android/gms/fitness/i/a;->ai:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v6}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v7, Lcom/google/android/gms/fitness/i/a;->aj:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v7}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sget-object v8, Lcom/google/android/gms/fitness/i/a;->ak:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v8}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sget-object v9, Lcom/google/android/gms/fitness/i/a;->al:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v9}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/fitness/b/c/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/b/b;FFFFFF)V

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    new-instance v2, Lcom/google/android/gms/fitness/b/c/s;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->ao:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->aj:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->ag:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->ap:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/fitness/b/c/s;-><init>(Lcom/google/android/gms/fitness/b/b;IFFJ)V

    sget-object v0, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v2, v0}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->o:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->n:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v10}, Lcom/google/android/gms/fitness/data/Device;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/fitness/b/c/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/fitness/b/c/j;-><init>(ZLcom/google/android/gms/fitness/b/b;J)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/d/e;)Lcom/google/android/gms/fitness/m/c;

    sget-object v0, Lcom/google/android/gms/fitness/d/b;->b:Lcom/google/android/gms/fitness/d/b;

    invoke-static {v10, v0}, Lcom/google/android/gms/fitness/d/a;->a(Landroid/content/Context;Lcom/google/android/gms/fitness/d/b;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/fitness/m/c;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/m/c;

    new-instance v0, Lcom/google/android/gms/fitness/m/a;

    iget-object v1, v11, Lcom/google/android/gms/fitness/m/c;->a:Lcom/google/android/gms/fitness/n/ar;

    iget-object v2, v11, Lcom/google/android/gms/fitness/m/c;->b:Lcom/google/android/gms/fitness/service/d;

    iget-object v3, v11, Lcom/google/android/gms/fitness/m/c;->d:Lcom/google/android/gms/fitness/sensors/a;

    iget-object v4, v11, Lcom/google/android/gms/fitness/m/c;->e:Lcom/google/android/gms/fitness/m/d;

    iget-object v5, v11, Lcom/google/android/gms/fitness/m/c;->c:Lcom/google/android/gms/fitness/sync/d;

    iget-object v6, v11, Lcom/google/android/gms/fitness/m/c;->g:Ljava/util/Map;

    iget-object v7, v11, Lcom/google/android/gms/fitness/m/c;->f:Ljava/util/Map;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fitness/m/a;-><init>(Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/service/d;Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/m/d;Lcom/google/android/gms/fitness/sync/d;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/c;->i:Lcom/google/android/gms/fitness/m/a;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->i:Lcom/google/android/gms/fitness/m/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 169
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/fitness/b/c/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/fitness/b/c/h;-><init>(ZLcom/google/android/gms/fitness/b/b;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Lcom/google/android/gms/fitness/n/ar;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->d:Lcom/google/android/gms/fitness/n/ar;

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/os/Handler;)Lcom/google/android/gms/fitness/n/d;
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->e:Lcom/google/android/gms/fitness/n/d;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/google/android/gms/fitness/n/d;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/c;->d:Lcom/google/android/gms/fitness/n/ar;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/fitness/n/d;-><init>(Lcom/google/android/gms/fitness/n/ar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/c;->e:Lcom/google/android/gms/fitness/n/d;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->e:Lcom/google/android/gms/fitness/n/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;Lcom/google/android/gms/fitness/sensors/a/a;)Lcom/google/android/gms/fitness/sensors/a;
    .locals 4

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->h:Lcom/google/android/gms/fitness/sensors/a;

    if-nez v0, :cond_0

    .line 153
    if-nez p2, :cond_1

    .line 154
    new-instance v0, Lcom/google/android/gms/fitness/sensors/b/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/fitness/sensors/b/b;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/c;->h:Lcom/google/android/gms/fitness/sensors/a;

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->h:Lcom/google/android/gms/fitness/sensors/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 156
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    new-instance v1, Lcom/google/android/gms/fitness/sensors/b/d;

    invoke-direct {v1, p2}, Lcom/google/android/gms/fitness/sensors/b/d;-><init>(Lcom/google/android/gms/fitness/sensors/a;)V

    .line 159
    new-instance v2, Lcom/google/android/gms/fitness/sensors/e/f;

    const-string v3, "BLE"

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/fitness/sensors/e/f;-><init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/google/android/gms/fitness/sensors/b/b;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/sensors/b/b;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/j/c;->h:Lcom/google/android/gms/fitness/sensors/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/n/d;)Lcom/google/android/gms/fitness/service/au;
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->f:Lcom/google/android/gms/fitness/service/au;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/google/android/gms/fitness/service/au;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/fitness/service/au;-><init>(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/n/d;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/c;->f:Lcom/google/android/gms/fitness/service/au;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->f:Lcom/google/android/gms/fitness/service/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/os/Handler;)Lcom/google/android/gms/fitness/sensors/a/a;
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v0

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->g:Lcom/google/android/gms/fitness/sensors/a/a;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/a;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/fitness/j/c;->d:Lcom/google/android/gms/fitness/n/ar;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/fitness/sensors/a/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/fitness/n/ar;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/c;->g:Lcom/google/android/gms/fitness/sensors/a/a;

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->d:Lcom/google/android/gms/fitness/n/ar;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/c;->g:Lcom/google/android/gms/fitness/sensors/a/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/n/as;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->g:Lcom/google/android/gms/fitness/sensors/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/fitness/sync/d;
    .locals 3

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->k:Lcom/google/android/gms/fitness/sync/d;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Device;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Lcom/google/android/gms/fitness/sync/e;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sync/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/c;->k:Lcom/google/android/gms/fitness/sync/d;

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/c;->k:Lcom/google/android/gms/fitness/sync/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 196
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/fitness/e/m;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/fitness/j/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/e/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/c;->k:Lcom/google/android/gms/fitness/sync/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
