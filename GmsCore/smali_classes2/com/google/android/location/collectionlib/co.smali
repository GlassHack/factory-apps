.class final Lcom/google/android/location/collectionlib/co;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/google/android/location/collectionlib/u;

.field final c:Lcom/google/android/location/p/a/c;

.field final d:J

.field final e:Ljava/util/Map;

.field f:Lcom/google/android/location/collectionlib/g;


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/u;JLcom/google/android/location/p/a/c;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/co;->a:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/co;->e:Ljava/util/Map;

    .line 35
    iput-wide p2, p0, Lcom/google/android/location/collectionlib/co;->d:J

    .line 36
    iput-object p1, p0, Lcom/google/android/location/collectionlib/co;->b:Lcom/google/android/location/collectionlib/u;

    .line 37
    invoke-static {p4}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/co;->c:Lcom/google/android/location/p/a/c;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/android/location/collectionlib/co;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/co;->c:Lcom/google/android/location/p/a/c;

    const-string v2, "SignalReplayer.onComplete called."

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/co;->f:Lcom/google/android/location/collectionlib/g;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    new-instance v2, Lcom/google/android/location/collectionlib/cp;

    invoke-direct {v2, p0}, Lcom/google/android/location/collectionlib/cp;-><init>(Lcom/google/android/location/collectionlib/co;)V

    invoke-virtual {v0, v2}, Lcom/google/android/location/collectionlib/ak;->post(Ljava/lang/Runnable;)Z

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
