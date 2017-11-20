.class Lcom/google/android/gms/wearable/internal/au$14;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WA:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

.field final synthetic WM:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic WN:Lcom/google/android/gms/common/api/BaseImplementation$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$14;->WM:Lcom/google/android/gms/wearable/internal/au;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$14;->WA:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/au$14;->WN:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$14;->WM:Lcom/google/android/gms/wearable/internal/au;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/au;->c(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$14;->WM:Lcom/google/android/gms/wearable/internal/au;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/au;->c(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au$14;->WA:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$14;->WN:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
