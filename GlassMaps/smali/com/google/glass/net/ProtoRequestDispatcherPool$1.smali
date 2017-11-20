.class Lcom/google/glass/net/ProtoRequestDispatcherPool$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcherPool;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcherPool;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;->this$0:Lcom/google/glass/net/ProtoRequestDispatcherPool;

    iput-object p3, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;->val$name:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
