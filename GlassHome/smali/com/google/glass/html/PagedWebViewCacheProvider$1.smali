.class Lcom/google/glass/html/PagedWebViewCacheProvider$1;
.super Ljava/lang/Object;
.source "PagedWebViewCacheProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebViewCacheProvider;->get()Lcom/google/glass/html/PagedWebViewCache;
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
        "Lcom/google/glass/html/PagedWebViewCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebViewCacheProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebViewCacheProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/html/PagedWebViewCacheProvider;

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
