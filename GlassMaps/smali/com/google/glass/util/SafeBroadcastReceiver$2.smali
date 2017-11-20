.class Lcom/google/glass/util/SafeBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/SafeBroadcastReceiver;

.field final synthetic val$registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;


# direct methods
.method constructor <init>(Lcom/google/glass/util/SafeBroadcastReceiver;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/glass/util/SafeBroadcastReceiver$2;->this$0:Lcom/google/glass/util/SafeBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/util/SafeBroadcastReceiver$2;->val$registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver$2;->this$0:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver$2;->val$registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 205
    return-void
.end method
