.class Lcom/google/glass/deferredcontent/DeferredContentLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredContentLoader;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$1;->this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$1;->this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->access$100(Lcom/google/glass/deferredcontent/DeferredContentLoader;)V

    .line 84
    return-void
.end method
