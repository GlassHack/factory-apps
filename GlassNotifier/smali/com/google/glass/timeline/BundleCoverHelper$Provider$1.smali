.class Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;
.super Ljava/lang/Object;
.source "BundleCoverHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/BundleCoverHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/BundleCoverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/timeline/BundleCoverHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/BundleCoverHelper$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/BundleCoverHelper$Provider;

    .prologue
    .line 217
    iput-object p2, p0, Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/BundleCoverHelper;
    .locals 3

    .prologue
    .line 219
    iget-object v2, p0, Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 222
    .local v1, "serializationHelper":Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    new-instance v2, Lcom/google/glass/timeline/BundleCoverHelper;

    invoke-direct {v2, v0, v1}, Lcom/google/glass/timeline/BundleCoverHelper;-><init>(Landroid/content/ContentResolver;Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/glass/timeline/BundleCoverHelper$Provider$1;->get()Lcom/google/glass/timeline/BundleCoverHelper;

    move-result-object v0

    return-object v0
.end method
