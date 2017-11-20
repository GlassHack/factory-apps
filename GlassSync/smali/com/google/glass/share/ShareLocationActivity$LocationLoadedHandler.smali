.class final Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;
.super Ljava/lang/Object;
.source "ShareLocationActivity.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/share/ShareLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationLoadedHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareLocationActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/share/ShareLocationActivity;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/glass/share/ShareLocationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/share/ShareLocationActivity;
    .param p2, "x1"    # Lcom/google/glass/share/ShareLocationActivity$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;-><init>(Lcom/google/glass/share/ShareLocationActivity;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$500(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$500(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$700(Lcom/google/glass/share/ShareLocationActivity;)V

    .line 261
    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$700(Lcom/google/glass/share/ShareLocationActivity;)V

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0, p1}, Lcom/google/glass/share/ShareLocationActivity;->access$802(Lcom/google/glass/share/ShareLocationActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 251
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    iget-object v1, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v1, p1}, Lcom/google/glass/share/ShareLocationActivity;->access$1000(Lcom/google/glass/share/ShareLocationActivity;Landroid/location/Location;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/share/ShareLocationActivity;->access$902(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 252
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$900(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;

    iget-object v2, p0, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;-><init>(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/glass/share/ShareLocationActivity$1;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;->onSuccess(Landroid/location/Location;)V

    return-void
.end method
