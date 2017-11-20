.class Lcom/google/glass/android/glass/widget/CardBuilderProvider$1;
.super Ljava/lang/Object;
.source "CardBuilderProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/glass/widget/CardBuilderProvider;->get(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)Lcom/google/android/glass/widget/CardBuilder;
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
        "Lcom/google/android/glass/widget/CardBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layout:Lcom/google/android/glass/widget/CardBuilder$Layout;


# direct methods
.method constructor <init>(Lcom/google/glass/android/glass/widget/CardBuilderProvider;Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/glass/widget/CardBuilderProvider;

    .prologue
    .line 29
    iput-object p2, p0, Lcom/google/glass/android/glass/widget/CardBuilderProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/android/glass/widget/CardBuilderProvider$1;->val$layout:Lcom/google/android/glass/widget/CardBuilder$Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/glass/widget/CardBuilder;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/glass/widget/CardBuilder;

    iget-object v1, p0, Lcom/google/glass/android/glass/widget/CardBuilderProvider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/android/glass/widget/CardBuilderProvider$1;->val$layout:Lcom/google/android/glass/widget/CardBuilder$Layout;

    invoke-direct {v0, v1, v2}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/android/glass/widget/CardBuilderProvider$1;->get()Lcom/google/android/glass/widget/CardBuilder;

    move-result-object v0

    return-object v0
.end method
