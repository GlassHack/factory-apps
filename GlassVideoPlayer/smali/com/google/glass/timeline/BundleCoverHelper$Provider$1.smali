.class Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/BundleCoverHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/BundleCoverHelper$Provider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;->this$0:Lcom/google/glass/timeline/BundleCoverHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/BundleCoverHelper;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 223
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 224
    new-instance v2, Lcom/google/glass/timeline/BundleCoverHelper;

    invoke-direct {v2, v1, v0}, Lcom/google/glass/timeline/BundleCoverHelper;-><init>(Landroid/content/ContentResolver;Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;->get()Lcom/google/glass/timeline/BundleCoverHelper;

    move-result-object v0

    return-object v0
.end method
