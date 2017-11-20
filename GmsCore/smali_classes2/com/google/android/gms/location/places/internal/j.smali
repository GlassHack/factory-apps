.class final Lcom/google/android/gms/location/places/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/places/internal/i;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/location/places/internal/i;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/j;->a:Lcom/google/android/gms/location/places/internal/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/internal/i;B)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/google/android/gms/location/places/internal/j;-><init>(Lcom/google/android/gms/location/places/internal/i;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/j;->a:Lcom/google/android/gms/location/places/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/i;->a(Lcom/google/android/gms/location/places/internal/i;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.location.places.METHOD_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "PLACE_IDS"

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/j;->a:Lcom/google/android/gms/location/places/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/i;->b(Lcom/google/android/gms/location/places/internal/i;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 130
    const-string v2, "METHOD_NAMES"

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/j;->a:Lcom/google/android/gms/location/places/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/i;->c(Lcom/google/android/gms/location/places/internal/i;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 131
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/j;->a:Lcom/google/android/gms/location/places/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/i;->d(Lcom/google/android/gms/location/places/internal/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/j;->a:Lcom/google/android/gms/location/places/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/i;->e(Lcom/google/android/gms/location/places/internal/i;)Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/j;->a:Lcom/google/android/gms/location/places/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/i;->f(Lcom/google/android/gms/location/places/internal/i;)Ljava/util/ArrayList;

    .line 134
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
