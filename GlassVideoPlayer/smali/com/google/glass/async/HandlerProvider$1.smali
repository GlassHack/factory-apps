.class Lcom/google/glass/async/HandlerProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/HandlerProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/async/HandlerProvider;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/async/HandlerProvider$1;->this$0:Lcom/google/glass/async/HandlerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/glass/async/HandlerProvider$1;->get()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
