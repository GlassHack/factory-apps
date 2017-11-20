.class Lcom/google/glass/net/ProtoRequestDispatcherPool$1;
.super Ljava/lang/Thread;
.source "ProtoRequestDispatcherPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/net/ProtoRequestDispatcherPool;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcherPool;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcom/google/glass/net/ProtoRequestDispatcherPool;
    .param p2, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    iput-object p3, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;->val$name:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;->val$name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;->setName(Ljava/lang/String;)V

    return-void
.end method
