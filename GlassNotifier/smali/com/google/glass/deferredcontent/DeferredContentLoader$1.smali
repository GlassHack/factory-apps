.class Lcom/google/glass/deferredcontent/DeferredContentLoader$1;
.super Ljava/lang/Object;
.source "DeferredContentLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/DeferredContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredContentLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/deferredcontent/DeferredContentLoader;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$1;->this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$1;->this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->access$100(Lcom/google/glass/deferredcontent/DeferredContentLoader;)V

    .line 76
    return-void
.end method
