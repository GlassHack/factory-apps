.class Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider$1;
.super Ljava/lang/Object;
.source "CardBuilderFactory.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;->get()Lcom/google/glass/android/glass/widget/CardBuilderFactory;
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
        "Lcom/google/glass/android/glass/widget/CardBuilderFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/glass/widget/CardBuilderFactory;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/glass/android/glass/widget/CardBuilderFactory;

    invoke-direct {v0}, Lcom/google/glass/android/glass/widget/CardBuilderFactory;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/glass/android/glass/widget/CardBuilderFactory$Provider$1;->get()Lcom/google/glass/android/glass/widget/CardBuilderFactory;

    move-result-object v0

    return-object v0
.end method
