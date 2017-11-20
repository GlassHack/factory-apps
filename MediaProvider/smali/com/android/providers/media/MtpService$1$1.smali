.class Lcom/android/providers/media/MtpService$1$1;
.super Ljava/lang/Object;
.source "MtpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MtpService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/media/MtpService$1;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService$1;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/providers/media/MtpService$1$1;->this$1:Lcom/android/providers/media/MtpService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/providers/media/MtpService$1$1;->this$1:Lcom/android/providers/media/MtpService$1;

    iget-object v0, v0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v1

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService$1$1;->this$1:Lcom/android/providers/media/MtpService$1;

    iget-object v0, v0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/providers/media/MtpService$1$1;->this$1:Lcom/android/providers/media/MtpService$1;

    iget-object v0, v0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$200(Lcom/android/providers/media/MtpService;)V

    .line 87
    iget-object v0, p0, Lcom/android/providers/media/MtpService$1$1;->this$1:Lcom/android/providers/media/MtpService$1;

    iget-object v0, v0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/providers/media/MtpService;->access$102(Lcom/android/providers/media/MtpService;Z)Z

    .line 89
    :cond_0
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
