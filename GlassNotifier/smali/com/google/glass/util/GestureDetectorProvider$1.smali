.class Lcom/google/glass/util/GestureDetectorProvider$1;
.super Ljava/lang/Object;
.source "GestureDetectorProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/GestureDetectorProvider;->get(Landroid/content/Context;)Lcom/google/android/glass/touchpad/GestureDetector;
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
        "Lcom/google/android/glass/touchpad/GestureDetector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/util/GestureDetectorProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/GestureDetectorProvider;

    .prologue
    .line 28
    iput-object p2, p0, Lcom/google/glass/util/GestureDetectorProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/glass/touchpad/GestureDetector;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/glass/touchpad/GestureDetector;

    iget-object v1, p0, Lcom/google/glass/util/GestureDetectorProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/glass/util/GestureDetectorProvider$1;->get()Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    return-object v0
.end method
