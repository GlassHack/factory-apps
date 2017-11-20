.class Lcom/google/glass/boutique/PackageHelperProvider$1;
.super Ljava/lang/Object;
.source "PackageHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/PackageHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/boutique/PackageHelper;
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
        "Lcom/google/glass/boutique/PackageHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/PackageHelperProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/PackageHelperProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/PackageHelperProvider;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/glass/boutique/PackageHelperProvider$1;->this$0:Lcom/google/glass/boutique/PackageHelperProvider;

    iput-object p2, p0, Lcom/google/glass/boutique/PackageHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/boutique/PackageHelper;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/boutique/PackageHelper;

    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/boutique/PackageHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/boutique/PackageHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/glass/boutique/PackageHelperProvider$1;->get()Lcom/google/glass/boutique/PackageHelper;

    move-result-object v0

    return-object v0
.end method
