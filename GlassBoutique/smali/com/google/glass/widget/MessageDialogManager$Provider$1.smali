.class Lcom/google/glass/widget/MessageDialogManager$Provider$1;
.super Ljava/lang/Object;
.source "MessageDialogManager.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/MessageDialogManager$Provider;-><init>()V
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
        "Lcom/google/glass/widget/MessageDialogManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MessageDialogManager$Provider;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MessageDialogManager$Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/MessageDialogManager$Provider;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialogManager$Provider$1;->this$0:Lcom/google/glass/widget/MessageDialogManager$Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/widget/MessageDialogManager;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/google/glass/widget/MessageDialogManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialogManager;-><init>(Lcom/google/glass/widget/MessageDialogManager$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialogManager$Provider$1;->get()Lcom/google/glass/widget/MessageDialogManager;

    move-result-object v0

    return-object v0
.end method
