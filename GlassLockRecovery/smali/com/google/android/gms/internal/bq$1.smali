.class Lcom/google/android/gms/internal/bq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bq;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field BM:Z

.field final synthetic BN:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

.field final synthetic BO:Lcom/google/android/gms/internal/bq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bq$1;->BO:Lcom/google/android/gms/internal/bq;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq$1;->BN:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq$1;->BM:Z

    return-void
.end method


# virtual methods
.method public onDroidGuardResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "results"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bq$1;->BM:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq$1;->BM:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$1;->BN:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;->onDroidGuardResults(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
