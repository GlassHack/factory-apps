.class Lcom/google/glass/setup/AuthErrorService$1;
.super Ljava/lang/Object;
.source "AuthErrorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/AuthErrorService;->showLiveCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/AuthErrorService;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/AuthErrorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/AuthErrorService;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/glass/setup/AuthErrorService$1;->this$0:Lcom/google/glass/setup/AuthErrorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService$1;->this$0:Lcom/google/glass/setup/AuthErrorService;

    invoke-static {v0}, Lcom/google/glass/setup/AuthErrorService;->access$100(Lcom/google/glass/setup/AuthErrorService;)Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/setup/AuthErrorService$1;->this$0:Lcom/google/glass/setup/AuthErrorService;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 117
    return-void
.end method
