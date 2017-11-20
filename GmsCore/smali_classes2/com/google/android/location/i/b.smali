.class final Lcom/google/android/location/i/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/i/a;


# direct methods
.method constructor <init>(Lcom/google/android/location/i/a;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/location/i/b;->a:Lcom/google/android/location/i/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/location/i/b;->a:Lcom/google/android/location/i/a;

    iget-object v1, v0, Lcom/google/android/location/i/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    const-string v2, "com.google.android.location.internal.action.GEOFENCER_AR_RESULT"

    invoke-static {v2}, Lcom/google/android/location/internal/PendingIntentCallbackService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-static {p2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    const-string v2, "is_mock_for_testing"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/location/i/b;->a:Lcom/google/android/location/i/a;

    iget-boolean v3, v3, Lcom/google/android/location/i/a;->a:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    const-string v0, "ActivityDetector"

    const-string v2, "Non-mock activities are ignored in testing."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/google/android/location/i/b;->a:Lcom/google/android/location/i/a;

    iget-object v2, v2, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    invoke-virtual {v2, v0}, Lcom/google/android/location/i/d;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 407
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 400
    :cond_2
    const-string v2, "com.google.android.location.internal.server.ACTION_RESTARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    iget-object v0, p0, Lcom/google/android/location/i/b;->a:Lcom/google/android/location/i/a;

    iget v0, v0, Lcom/google/android/location/i/a;->k:I

    if-lez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/google/android/location/i/b;->a:Lcom/google/android/location/i/a;

    iget-object v2, p0, Lcom/google/android/location/i/b;->a:Lcom/google/android/location/i/a;

    iget v2, v2, Lcom/google/android/location/i/a;->k:I

    iget-object v3, p0, Lcom/google/android/location/i/b;->a:Lcom/google/android/location/i/a;

    iget-object v3, v3, Lcom/google/android/location/i/a;->l:Ljava/util/Collection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/location/i/a;->a(IZLjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 404
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v2, :cond_1

    .line 405
    const-string v2, "ActivityDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unhandled action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
