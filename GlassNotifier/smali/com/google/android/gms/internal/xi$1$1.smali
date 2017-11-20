.class Lcom/google/android/gms/internal/xi$1$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xi$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYD:Lcom/google/android/gms/internal/xi$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xi$1;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xi$1$1;->aYD:Lcom/google/android/gms/internal/xi$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const-class v1, Lcom/google/android/gms/internal/xi;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/xi;->vR()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/xi;->J(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/xi;->fD()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xi$1$1;->aYD:Lcom/google/android/gms/internal/xi$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xi$1;->aYC:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/google/android/gms/internal/xi;->fD()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/xi;->b(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
