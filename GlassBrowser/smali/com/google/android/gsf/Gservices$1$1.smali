.class Lcom/google/android/gsf/Gservices$1$1;
.super Landroid/database/ContentObserver;
.source "Gservices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/Gservices$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/Gservices$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/Gservices$1;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/gsf/Gservices$1$1;->this$0:Lcom/google/android/gsf/Gservices$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 77
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 78
    :try_start_0
    invoke-static {}, Lcom/google/android/gsf/Gservices;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gsf/Gservices;->access$102(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/google/android/gsf/Gservices;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/Gservices$1$1;->this$0:Lcom/google/android/gsf/Gservices$1;

    iget-object v0, v0, Lcom/google/android/gsf/Gservices$1;->val$cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/google/android/gsf/Gservices;->access$200()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/Gservices;->bulkCacheByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 83
    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
