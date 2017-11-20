.class Lcom/google/glass/musicplayer/BundleManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/BundleManager;

.field final synthetic val$cardListCopy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/BundleManager;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/glass/musicplayer/BundleManager$3;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    iput-object p2, p0, Lcom/google/glass/musicplayer/BundleManager$3;->val$cardListCopy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager$3;->val$cardListCopy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager$3;->val$cardListCopy:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Card;

    .line 196
    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->isBundle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager$3;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    iget-object v2, v2, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/musicplayer/BundleManager$3;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    iget-object v3, v3, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    invoke-virtual {v3, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 204
    :cond_1
    return-void
.end method
