.class Lcom/google/glass/logging/CompanionBundleSenderProvider$1;
.super Ljava/lang/Object;
.source "CompanionBundleSenderProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/CompanionBundleSenderProvider;->get(Landroid/content/Context;)Lcom/google/glass/logging/CompanionBundleSender;
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
        "Lcom/google/glass/logging/CompanionBundleSender;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/CompanionBundleSenderProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/CompanionBundleSenderProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/CompanionBundleSenderProvider;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/glass/logging/CompanionBundleSenderProvider$1;->this$0:Lcom/google/glass/logging/CompanionBundleSenderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/logging/CompanionBundleSender;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 31
    .local v0, "remoteCompanionProxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    new-instance v1, Lcom/google/glass/logging/CompanionBundleSenderImpl;

    invoke-direct {v1, v0}, Lcom/google/glass/logging/CompanionBundleSenderImpl;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/glass/logging/CompanionBundleSenderProvider$1;->get()Lcom/google/glass/logging/CompanionBundleSender;

    move-result-object v0

    return-object v0
.end method
