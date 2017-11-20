.class Lcom/google/glass/util/PowerHelperProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/PowerHelperProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/util/PowerHelperProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/util/PowerHelperProvider$1;->this$0:Lcom/google/glass/util/PowerHelperProvider;

    iput-object p2, p0, Lcom/google/glass/util/PowerHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/PowerHelper;
    .locals 2

    .prologue
    .line 25
    new-instance v1, Lcom/google/glass/util/PowerHelper;

    iget-object v0, p0, Lcom/google/glass/util/PowerHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelperProvider$1;->get()Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    return-object v0
.end method
