.class final Lcom/google/android/location/geofencer/service/c;
.super Lcom/google/android/location/geofencer/service/e;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 26
    const/16 v0, 0x63

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/geofencer/service/e;-><init>(ILjava/lang/Object;)V

    .line 17
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/c;->a:Ljava/util/concurrent/CountDownLatch;

    .line 27
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 57
    return-void
.end method

.method protected final b()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/c;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Wait timeout."

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/c;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
