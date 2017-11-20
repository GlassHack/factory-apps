.class Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$1;
.super Ljava/lang/Object;
.source "Rmq2Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendRmqPacketsForReadyAccount(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$1;->this$0:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$1;->this$0:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->access$000(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V

    .line 852
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$1;->this$0:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    const-string v1, "finished resending packets"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->access$100(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;Ljava/lang/String;)V

    .line 855
    :cond_0
    return-void
.end method
