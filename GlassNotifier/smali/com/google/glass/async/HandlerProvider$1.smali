.class Lcom/google/glass/async/HandlerProvider$1;
.super Ljava/lang/Object;
.source "HandlerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/async/HandlerProvider;->get()Landroid/os/Handler;
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
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/async/HandlerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/async/HandlerProvider;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/glass/async/HandlerProvider$1;->get()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
