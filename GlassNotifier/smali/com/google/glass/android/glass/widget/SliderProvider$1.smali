.class Lcom/google/glass/android/glass/widget/SliderProvider$1;
.super Ljava/lang/Object;
.source "SliderProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/glass/widget/SliderProvider;->get(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;
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
        "Lcom/google/android/glass/widget/Slider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/android/glass/widget/SliderProvider;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/glass/widget/SliderProvider;

    .prologue
    .line 31
    iput-object p2, p0, Lcom/google/glass/android/glass/widget/SliderProvider$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/glass/widget/Slider;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/android/glass/widget/SliderProvider$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/glass/widget/Slider;->from(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/glass/android/glass/widget/SliderProvider$1;->get()Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    return-object v0
.end method
