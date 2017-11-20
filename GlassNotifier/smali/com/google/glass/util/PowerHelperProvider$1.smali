.class Lcom/google/glass/util/PowerHelperProvider$1;
.super Ljava/lang/Object;
.source "PowerHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/PowerHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/PowerHelper;
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
        "Lcom/google/glass/util/PowerHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/util/PowerHelperProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/PowerHelperProvider;

    .prologue
    .line 21
    iput-object p2, p0, Lcom/google/glass/util/PowerHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/PowerHelper;
    .locals 2

    .prologue
    .line 24
    new-instance v1, Lcom/google/glass/util/PowerHelper;

    iget-object v0, p0, Lcom/google/glass/util/PowerHelperProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelperProvider$1;->get()Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    return-object v0
.end method
