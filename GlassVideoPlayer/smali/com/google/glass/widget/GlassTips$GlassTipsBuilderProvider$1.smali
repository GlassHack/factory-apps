.class Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider$1;->this$0:Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;

    iput-object p2, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    iget-object v1, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider$1;->get()Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    return-object v0
.end method
