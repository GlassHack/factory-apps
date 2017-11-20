.class Lcom/google/android/gms/internal/ds$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic IC:Lcom/google/android/gms/internal/ds;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ds$a;->IC:Lcom/google/android/gms/internal/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/ds$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ds$a;-><init>(Lcom/google/android/gms/internal/ds;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ds$a;->IC:Lcom/google/android/gms/internal/ds;

    invoke-static {v0}, Lcom/google/android/gms/internal/ds;->b(Lcom/google/android/gms/internal/ds;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.location.places.METHOD_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PLACE_IDS"

    iget-object v3, p0, Lcom/google/android/gms/internal/ds$a;->IC:Lcom/google/android/gms/internal/ds;

    invoke-static {v3}, Lcom/google/android/gms/internal/ds;->c(Lcom/google/android/gms/internal/ds;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "METHOD_NAMES"

    iget-object v3, p0, Lcom/google/android/gms/internal/ds$a;->IC:Lcom/google/android/gms/internal/ds;

    invoke-static {v3}, Lcom/google/android/gms/internal/ds;->d(Lcom/google/android/gms/internal/ds;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ds$a;->IC:Lcom/google/android/gms/internal/ds;

    invoke-static {v2}, Lcom/google/android/gms/internal/ds;->e(Lcom/google/android/gms/internal/ds;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ds$a;->IC:Lcom/google/android/gms/internal/ds;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ds;->a(Lcom/google/android/gms/internal/ds;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ds$a;->IC:Lcom/google/android/gms/internal/ds;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ds;->b(Lcom/google/android/gms/internal/ds;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
