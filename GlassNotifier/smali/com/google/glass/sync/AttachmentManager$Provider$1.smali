.class Lcom/google/glass/sync/AttachmentManager$Provider$1;
.super Ljava/lang/Object;
.source "AttachmentManager.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/AttachmentManager$Provider;->get(Landroid/content/Context;)Lcom/google/glass/sync/AttachmentManager;
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
        "Lcom/google/glass/sync/AttachmentManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/AttachmentManager$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/AttachmentManager$Provider;

    .prologue
    .line 65
    iput-object p2, p0, Lcom/google/glass/sync/AttachmentManager$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/sync/AttachmentManager;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/google/glass/sync/AttachmentManager;

    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/sync/AttachmentManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentManager$Provider$1;->get()Lcom/google/glass/sync/AttachmentManager;

    move-result-object v0

    return-object v0
.end method
