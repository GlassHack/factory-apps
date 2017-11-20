.class Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider$1;
.super Ljava/lang/Object;
.source "FullScreenMessagingDialogHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/util/FullScreenMessagingDialogHelper;
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
        "Lcom/google/glass/util/FullScreenMessagingDialogHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider$1;->this$0:Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;

    iput-object p2, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/FullScreenMessagingDialogHelper;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "null context"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v1, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider$1;->get()Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    move-result-object v0

    return-object v0
.end method
