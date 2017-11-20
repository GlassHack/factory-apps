.class Lcom/android/providers/media/MtpService$3;
.super Lcom/android/providers/media/IMtpService$Stub;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Lcom/android/providers/media/IMtpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendObjectAdded(I)V
    .locals 2
    .param p1, "objectHandle"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v1

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$600(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$600(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectAdded(I)V

    .line 214
    :cond_0
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendObjectRemoved(I)V
    .locals 2
    .param p1, "objectHandle"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v1

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$600(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$600(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectRemoved(I)V

    .line 222
    :cond_0
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
