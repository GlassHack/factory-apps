.class Lcom/google/glass/auth/GlassAuthUtils$Provider$1;
.super Ljava/lang/Object;
.source "GlassAuthUtils.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/auth/GlassAuthUtils$Provider;->get(Landroid/content/Context;)Lcom/google/glass/auth/GlassAuthUtils;
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
        "Lcom/google/glass/auth/GlassAuthUtils;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/GlassAuthUtils$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/auth/GlassAuthUtils$Provider;

    .prologue
    .line 441
    iput-object p2, p0, Lcom/google/glass/auth/GlassAuthUtils$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/auth/GlassAuthUtils;
    .locals 4

    .prologue
    .line 444
    invoke-static {}, Lcom/google/glass/android/accounts/AccountManagerProvider;->getInstance()Lcom/google/glass/android/accounts/AccountManagerProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/android/accounts/AccountManagerProvider;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 446
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-static {}, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;->getInstance()Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;->get(Landroid/content/Context;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    move-result-object v0

    .line 447
    .local v0, "accountDataClient":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    new-instance v2, Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v3, p0, Lcom/google/glass/auth/GlassAuthUtils$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/glass/auth/GlassAuthUtils;-><init>(Landroid/content/Context;Landroid/accounts/AccountManager;Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/glass/auth/GlassAuthUtils$Provider$1;->get()Lcom/google/glass/auth/GlassAuthUtils;

    move-result-object v0

    return-object v0
.end method
