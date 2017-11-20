.class Lcom/google/glass/view/WindowManagerProvider$1;
.super Ljava/lang/Object;
.source "WindowManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/view/WindowManagerProvider;->get(Landroid/content/Context;)Landroid/view/WindowManager;
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
        "Landroid/view/WindowManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/view/WindowManagerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/view/WindowManagerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/view/WindowManagerProvider;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/view/WindowManagerProvider$1;->this$0:Lcom/google/glass/view/WindowManagerProvider;

    iput-object p2, p0, Lcom/google/glass/view/WindowManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/view/WindowManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "null context"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/google/glass/view/WindowManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/glass/view/WindowManagerProvider$1;->get()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method
