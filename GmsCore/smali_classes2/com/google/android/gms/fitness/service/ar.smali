.class final Lcom/google/android/gms/fitness/service/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/fitness/a/o;

.field final synthetic c:Lcom/google/android/gms/fitness/service/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/ap;Ljava/lang/String;Lcom/google/android/gms/fitness/a/o;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ar;->c:Lcom/google/android/gms/fitness/service/ap;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ar;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/ar;->b:Lcom/google/android/gms/fitness/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ar;->c:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ar;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/ar;->b:Lcom/google/android/gms/fitness/a/o;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ar;->c:Lcom/google/android/gms/fitness/service/ap;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ap;->f:Lcom/google/android/gms/fitness/service/as;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ar;->c:Lcom/google/android/gms/fitness/service/ap;

    new-instance v1, Lcom/google/android/gms/fitness/service/as;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/ar;->c:Lcom/google/android/gms/fitness/service/ap;

    invoke-direct {v1, v2}, Lcom/google/android/gms/fitness/service/as;-><init>(Lcom/google/android/gms/fitness/service/ap;)V

    iput-object v1, v0, Lcom/google/android/gms/fitness/service/ap;->f:Lcom/google/android/gms/fitness/service/as;

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ar;->c:Lcom/google/android/gms/fitness/service/ap;

    iget-object v1, v0, Lcom/google/android/gms/fitness/service/ap;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ar;->c:Lcom/google/android/gms/fitness/service/ap;

    iget-object v2, v0, Lcom/google/android/gms/fitness/service/ap;->f:Lcom/google/android/gms/fitness/service/as;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->w:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    :cond_0
    return-void
.end method
