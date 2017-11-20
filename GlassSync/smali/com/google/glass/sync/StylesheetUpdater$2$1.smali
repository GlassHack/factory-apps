.class Lcom/google/glass/sync/StylesheetUpdater$2$1;
.super Ljava/lang/Object;
.source "StylesheetUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/StylesheetUpdater$2;->onSuccess(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/sync/StylesheetUpdater$2;

.field final synthetic val$responseProto:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/StylesheetUpdater$2;Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/sync/StylesheetUpdater$2;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/sync/StylesheetUpdater$2$1;->this$1:Lcom/google/glass/sync/StylesheetUpdater$2;

    iput-object p2, p0, Lcom/google/glass/sync/StylesheetUpdater$2$1;->val$responseProto:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetUpdater$2$1;->this$1:Lcom/google/glass/sync/StylesheetUpdater$2;

    iget-object v0, v0, Lcom/google/glass/sync/StylesheetUpdater$2;->this$0:Lcom/google/glass/sync/StylesheetUpdater;

    iget-object v1, p0, Lcom/google/glass/sync/StylesheetUpdater$2$1;->val$responseProto:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-static {v0, v1}, Lcom/google/glass/sync/StylesheetUpdater;->access$000(Lcom/google/glass/sync/StylesheetUpdater;Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V

    .line 80
    return-void
.end method
