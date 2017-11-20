.class Lcom/google/android/gsf/login/BackgroundTask$1;
.super Landroid/os/Handler;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BackgroundTask;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BackgroundTask;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/gsf/login/BackgroundTask$1;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$1;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-static {v0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->access$000(Lcom/google/android/gsf/login/BackgroundTask;Landroid/os/Message;)V

    .line 83
    return-void
.end method
