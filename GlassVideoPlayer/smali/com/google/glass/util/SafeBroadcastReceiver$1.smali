.class Lcom/google/glass/util/SafeBroadcastReceiver$1;
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
    .line 134
    iput-object p1, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->this$0:Lcom/google/glass/util/SafeBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->val$registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->this$0:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->val$registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 138
    return-void
.end method
