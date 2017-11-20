.class Lcom/google/glass/util/WifiHelperProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/WifiHelperProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/util/WifiHelperProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/util/WifiHelperProvider$1;->this$0:Lcom/google/glass/util/WifiHelperProvider;

    iput-object p2, p0, Lcom/google/glass/util/WifiHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/WifiHelper;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelperProvider$1;->get()Lcom/google/glass/util/WifiHelper;

    move-result-object v0

    return-object v0
.end method
