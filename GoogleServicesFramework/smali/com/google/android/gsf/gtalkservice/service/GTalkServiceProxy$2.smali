.class Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;
.super Ljava/lang/Object;
.source "GTalkServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->bind()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 119
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->access$102(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->access$100(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->access$102(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 130
    return-void
.end method
