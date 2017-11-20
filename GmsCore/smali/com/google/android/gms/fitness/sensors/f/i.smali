.class final Lcom/google/android/gms/fitness/sensors/f/i;
.super Lcom/google/android/gms/fitness/internal/w;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/data/o;

.field final synthetic b:Lcom/google/android/gms/fitness/sensors/f/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/data/o;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/i;->b:Lcom/google/android/gms/fitness/sensors/f/c;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/f/i;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/internal/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/i;->b:Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/f/c;->c:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/i;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "Couldn\'t find listener to remove"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 233
    :cond_0
    return-void
.end method
