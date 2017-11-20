.class Lcom/google/glass/companion/ConnectionChecker$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/ConnectionChecker$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ConnectionChecker$Provider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->this$0:Lcom/google/glass/companion/ConnectionChecker$Provider;

    iput-object p2, p0, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/companion/ConnectionChecker;
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/google/glass/companion/ConnectionChecker;

    iget-object v2, p0, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/glass/companion/ConnectionChecker;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/glass/companion/ConnectionChecker$Provider$1;->get()Lcom/google/glass/companion/ConnectionChecker;

    move-result-object v0

    return-object v0
.end method
