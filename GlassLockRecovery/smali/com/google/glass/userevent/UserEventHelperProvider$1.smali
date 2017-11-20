.class Lcom/google/glass/userevent/UserEventHelperProvider$1;
.super Ljava/lang/Object;
.source "UserEventHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;
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
        "Lcom/google/glass/userevent/UserEventHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventHelperProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventHelperProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/userevent/UserEventHelperProvider;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelperProvider$1;->this$0:Lcom/google/glass/userevent/UserEventHelperProvider;

    iput-object p2, p0, Lcom/google/glass/userevent/UserEventHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/userevent/UserEventHelper;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventHelperProvider$1;->val$context:Landroid/content/Context;

    const-string v2, "null context"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/userevent/UserEventHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {v2, v3, v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventHelperProvider$1;->get()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    return-object v0
.end method
