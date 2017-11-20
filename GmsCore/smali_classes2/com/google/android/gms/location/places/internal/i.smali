.class public Lcom/google/android/gms/location/places/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J

.field private static c:Lcom/google/android/gms/location/places/internal/i;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    const-class v0, Lcom/google/android/gms/location/places/internal/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/internal/i;->a:Ljava/lang/String;

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/location/places/internal/i;->b:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/i;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/android/gms/location/places/internal/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/places/internal/j;-><init>(Lcom/google/android/gms/location/places/internal/i;B)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->f:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->g:Ljava/lang/Object;

    .line 73
    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/i;->h:Ljava/util/ArrayList;

    .line 74
    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/i;->i:Ljava/util/ArrayList;

    .line 82
    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/i;->d:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/i;->e:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/location/places/internal/i;
    .locals 3

    .prologue
    .line 57
    const-class v1, Lcom/google/android/gms/location/places/internal/i;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 66
    :goto_0
    monitor-exit v1

    return-object v0

    .line 62
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/location/places/internal/i;->c:Lcom/google/android/gms/location/places/internal/i;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Lcom/google/android/gms/location/places/internal/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/location/places/internal/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/location/places/internal/i;->c:Lcom/google/android/gms/location/places/internal/i;

    .line 66
    :cond_1
    sget-object v0, Lcom/google/android/gms/location/places/internal/i;->c:Lcom/google/android/gms/location/places/internal/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/location/places/internal/i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/location/places/internal/i;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/location/places/internal/i;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/location/places/internal/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/location/places/internal/i;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/location/places/internal/i;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->i:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/i;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->h:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->i:Ljava/util/ArrayList;

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/i;->f:Ljava/lang/Runnable;

    sget-wide v4, Lcom/google/android/gms/location/places/internal/i;->b:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_2

    .line 102
    sget-object v0, Lcom/google/android/gms/location/places/internal/i;->a:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/google/android/gms/location/places/internal/i;->a:Ljava/lang/String;

    const-string v2, "Event buffer full, flushing"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/i;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    return-void

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
