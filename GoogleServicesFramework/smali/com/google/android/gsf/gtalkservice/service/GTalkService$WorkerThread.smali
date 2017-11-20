.class final Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;
.super Ljava/lang/Thread;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 287
    const-string v0, "MCS WorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 293
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$902(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 294
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 295
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 296
    return-void
.end method
