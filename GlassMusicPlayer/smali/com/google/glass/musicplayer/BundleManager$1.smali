.class Lcom/google/glass/musicplayer/BundleManager$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/BundleManager;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/BundleManager;I)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/glass/musicplayer/BundleManager$1;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/google/glass/musicplayer/cards/Card;

    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/BundleManager$1;->create(Lcom/google/glass/musicplayer/cards/Card;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected create(Lcom/google/glass/musicplayer/cards/Card;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-static {}, Lcom/google/glass/musicplayer/BundleManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "New bundle was created instead of using cached result. Card: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager$1;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    invoke-static {v0, p1}, Lcom/google/glass/musicplayer/BundleManager;->access$100(Lcom/google/glass/musicplayer/BundleManager;Lcom/google/glass/musicplayer/cards/Card;)Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager$1;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    invoke-static {v1, v0}, Lcom/google/glass/musicplayer/BundleManager;->access$200(Lcom/google/glass/musicplayer/BundleManager;Ljava/util/ArrayList;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/google/glass/musicplayer/BundleManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "adding firstSong=%s to cardToAutoplaySongCache"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    if-eqz v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager$1;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    iget-object v2, v2, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/musicplayer/BundleManager$1;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    iget-object v3, v3, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
