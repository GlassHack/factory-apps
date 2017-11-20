.class Lcom/google/glass/auth/AuthUtilsProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/AuthUtilsProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/AuthUtilsProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/auth/AuthUtilsProvider$1;->this$0:Lcom/google/glass/auth/AuthUtilsProvider;

    iput-object p2, p0, Lcom/google/glass/auth/AuthUtilsProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/auth/AuthUtils;
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/google/glass/android/accounts/AccountManagerProvider;->getInstance()Lcom/google/glass/android/accounts/AccountManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/auth/AuthUtilsProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/accounts/AccountManagerProvider;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/google/glass/auth/AuthUtilsProvider$1;->this$0:Lcom/google/glass/auth/AuthUtilsProvider;

    .line 59
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.glass.auth.GlassAuthUtils"

    :goto_0
    iget-object v3, p0, Lcom/google/glass/auth/AuthUtilsProvider$1;->val$context:Landroid/content/Context;

    .line 58
    invoke-static {v2, v0, v3, v1}, Lcom/google/glass/auth/AuthUtilsProvider;->access$000(Lcom/google/glass/auth/AuthUtilsProvider;Ljava/lang/String;Landroid/content/Context;Landroid/accounts/AccountManager;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const-string v0, "com.google.glass.companion.auth.CompanionAuthUtils"

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/glass/auth/AuthUtilsProvider$1;->get()Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    return-object v0
.end method
