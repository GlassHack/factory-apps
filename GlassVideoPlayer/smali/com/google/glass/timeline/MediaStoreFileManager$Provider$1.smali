.class Lcom/google/glass/timeline/MediaStoreFileManager$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/MediaStoreFileManager$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/MediaStoreFileManager$Provider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/timeline/MediaStoreFileManager$Provider$1;->this$0:Lcom/google/glass/timeline/MediaStoreFileManager$Provider;

    iput-object p2, p0, Lcom/google/glass/timeline/MediaStoreFileManager$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/MediaStoreFileManager;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/google/glass/timeline/MediaStoreFileManager;

    iget-object v1, p0, Lcom/google/glass/timeline/MediaStoreFileManager$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/timeline/MediaStoreFileManager;-><init>(Landroid/content/ContentResolver;Lcom/google/glass/timeline/MediaStoreFileManager$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/glass/timeline/MediaStoreFileManager$Provider$1;->get()Lcom/google/glass/timeline/MediaStoreFileManager;

    move-result-object v0

    return-object v0
.end method
