.class Lcom/google/glass/entity/EntityCache$16;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache;->requestReloadEntityDataCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityCache;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$16;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$16;->this$0:Lcom/google/glass/entity/EntityCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityCache;->loadEntityDataCacheInternal(Z)V

    .line 658
    return-void
.end method
