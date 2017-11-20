.class Lcom/google/glass/music/MediaButtonDispatcherProvider$1;
.super Ljava/lang/Object;
.source "MediaButtonDispatcherProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/music/MediaButtonDispatcherProvider;->get(Landroid/content/Context;)Lcom/google/glass/music/MediaButtonDispatcher;
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
        "Lcom/google/glass/music/MediaButtonDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/music/MediaButtonDispatcherProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/music/MediaButtonDispatcherProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/music/MediaButtonDispatcherProvider;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/music/MediaButtonDispatcherProvider$1;->this$0:Lcom/google/glass/music/MediaButtonDispatcherProvider;

    iput-object p2, p0, Lcom/google/glass/music/MediaButtonDispatcherProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/music/MediaButtonDispatcher;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/music/MediaButtonDispatcherProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "null context"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/google/glass/music/MediaButtonDispatcher;

    iget-object v1, p0, Lcom/google/glass/music/MediaButtonDispatcherProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/music/MediaButtonDispatcher;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/music/MediaButtonDispatcherProvider$1;->get()Lcom/google/glass/music/MediaButtonDispatcher;

    move-result-object v0

    return-object v0
.end method
