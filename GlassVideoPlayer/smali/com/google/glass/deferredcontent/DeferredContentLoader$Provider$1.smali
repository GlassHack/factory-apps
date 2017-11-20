.class Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider$1;->this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/deferredcontent/DeferredContentLoader;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;-><init>(Lcom/google/glass/deferredcontent/DeferredContentLoader$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider$1;->get()Lcom/google/glass/deferredcontent/DeferredContentLoader;

    move-result-object v0

    return-object v0
.end method
