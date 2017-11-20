.class final Lcom/google/android/gsf/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gsf/d;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/d;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/gsf/e;->a:Lcom/google/android/gsf/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .prologue
    .line 77
    const-class v1, Lcom/google/android/gsf/c;

    monitor-enter v1

    .line 78
    :try_start_0
    invoke-static {}, Lcom/google/android/gsf/c;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gsf/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/google/android/gsf/c;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/e;->a:Lcom/google/android/gsf/d;

    iget-object v0, v0, Lcom/google/android/gsf/d;->a:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/google/android/gsf/c;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/c;->b(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 83
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
