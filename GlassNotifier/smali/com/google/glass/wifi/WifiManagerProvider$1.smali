.class Lcom/google/glass/wifi/WifiManagerProvider$1;
.super Ljava/lang/Object;
.source "WifiManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/wifi/WifiManagerProvider;->from(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
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
        "Landroid/net/wifi/WifiManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/wifi/WifiManagerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/wifi/WifiManagerProvider;

    .prologue
    .line 25
    iput-object p2, p0, Lcom/google/glass/wifi/WifiManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/net/wifi/WifiManager;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/wifi/WifiManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiManagerProvider$1;->get()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method
