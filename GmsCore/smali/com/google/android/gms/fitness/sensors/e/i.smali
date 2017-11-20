.class public final Lcom/google/android/gms/fitness/sensors/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/o;)Lcom/google/android/gms/fitness/sensors/e/g;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/e/g;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/sensors/e/g;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;)Lcom/google/c/a/ae;

    move-result-object v0

    const-string v1, "registrations"

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/ae;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
