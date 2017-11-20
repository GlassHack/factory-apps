.class Lcom/google/glass/auth/AuthUtilsProvider$1;
.super Ljava/lang/Object;
.source "AuthUtilsProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;
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
        "Lcom/google/glass/auth/AuthUtils;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/AuthUtilsProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/AuthUtilsProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/auth/AuthUtilsProvider;

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

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/auth/AuthUtilsProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/android/accounts/AccountManagerProvider;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 58
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    iget-object v2, p0, Lcom/google/glass/auth/AuthUtilsProvider$1;->this$0:Lcom/google/glass/auth/AuthUtilsProvider;

    .line 59
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.glass.auth.GlassAuthUtils"

    :goto_0
    iget-object v3, p0, Lcom/google/glass/auth/AuthUtilsProvider$1;->val$context:Landroid/content/Context;

    .line 58
    invoke-static {v2, v1, v3, v0}, Lcom/google/glass/auth/AuthUtilsProvider;->access$000(Lcom/google/glass/auth/AuthUtilsProvider;Ljava/lang/String;Landroid/content/Context;Landroid/accounts/AccountManager;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    const-string v1, "com.google.glass.companion.auth.CompanionAuthUtils"

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
