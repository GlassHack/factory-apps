.class Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread$1;
.super Ljava/lang/Object;
.source "ScoConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread$1;->this$1:Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread$1;->this$1:Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;

    iget-object v0, v0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$800(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V

    .line 262
    return-void
.end method
