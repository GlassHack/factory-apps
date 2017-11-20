.class final Lcom/google/android/gms/fitness/sensors/sample/a;
.super Lcom/google/android/gms/fitness/data/p;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/o;

.field private final b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/data/o;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/sample/a;->a:Lcom/google/android/gms/fitness/data/o;

    .line 101
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/sample/a;->b:Ljava/util/concurrent/CountDownLatch;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/data/o;Ljava/util/concurrent/CountDownLatch;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/sensors/sample/a;-><init>(Lcom/google/android/gms/fitness/data/o;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/a;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 108
    return-void
.end method
