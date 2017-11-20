.class Lcom/google/glass/context/BroadcastReceiverRegistrarProvider$1;
.super Ljava/lang/Object;
.source "BroadcastReceiverRegistrarProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;
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
        "Lcom/google/glass/context/BroadcastReceiverRegistrar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider$1;->this$0:Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    iput-object p2, p0, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/context/BroadcastReceiverRegistrarImpl;

    iget-object v1, p0, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/context/BroadcastReceiverRegistrarImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider$1;->get()Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    return-object v0
.end method
