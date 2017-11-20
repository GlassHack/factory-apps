.class Lcom/google/glass/widget/GlassTipsManagerProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTipsManagerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTipsManagerProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManagerProvider$1;->this$0:Lcom/google/glass/widget/GlassTipsManagerProvider;

    iput-object p2, p0, Lcom/google/glass/widget/GlassTipsManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/widget/GlassTipsManager;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/google/glass/widget/GlassTipsManager;

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/widget/GlassTipsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassTipsManagerProvider$1;->get()Lcom/google/glass/widget/GlassTipsManager;

    move-result-object v0

    return-object v0
.end method
