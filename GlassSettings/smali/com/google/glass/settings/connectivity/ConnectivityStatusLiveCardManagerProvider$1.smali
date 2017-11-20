.class Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;
.super Ljava/lang/Object;
.source "ConnectivityStatusLiveCardManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;->from(Landroid/content/Context;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;)Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
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
        "Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;

.field final synthetic val$cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;Landroid/content/Context;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;

    iput-object p2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;->val$cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "null context"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;->val$cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;-><init>(Landroid/content/Context;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;->get()Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    move-result-object v0

    return-object v0
.end method
