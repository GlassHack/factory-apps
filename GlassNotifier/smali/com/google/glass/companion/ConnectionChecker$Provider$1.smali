.class Lcom/google/glass/companion/ConnectionChecker$Provider$1;
.super Ljava/lang/Object;
.source "ConnectionChecker.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/companion/ConnectionChecker$Provider;->get(Landroid/content/Context;)Lcom/google/glass/companion/ConnectionChecker;
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
        "Lcom/google/glass/companion/ConnectionChecker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ConnectionChecker$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/companion/ConnectionChecker$Provider;

    .prologue
    .line 222
    iput-object p2, p0, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/companion/ConnectionChecker;
    .locals 3

    .prologue
    .line 225
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    .line 226
    .local v0, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    new-instance v1, Lcom/google/glass/companion/ConnectionChecker;

    iget-object v2, p0, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/glass/companion/ConnectionChecker;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->get()Lcom/google/glass/companion/ConnectionChecker;

    move-result-object v0

    return-object v0
.end method
