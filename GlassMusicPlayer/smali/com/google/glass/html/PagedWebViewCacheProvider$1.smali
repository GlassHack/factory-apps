.class Lcom/google/glass/html/PagedWebViewCacheProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebViewCacheProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebViewCacheProvider;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/glass/html/PagedWebViewCacheProvider$1;->this$0:Lcom/google/glass/html/PagedWebViewCacheProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/html/PagedWebViewCache;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/html/PagedWebViewCacheProvider;->access$000()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/glass/html/PagedWebViewCacheProvider$1;->get()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v0

    return-object v0
.end method
