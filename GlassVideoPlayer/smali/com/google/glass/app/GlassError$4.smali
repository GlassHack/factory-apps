.class Lcom/google/glass/app/GlassError$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassError;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassError;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/glass/app/GlassError$4;->this$0:Lcom/google/glass/app/GlassError;

    iput-object p2, p0, Lcom/google/glass/app/GlassError$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 285
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/app/GlassError$4;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.glass.action.ACTION_SHOW_CONNECTIVITY_STATUS_CARD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 287
    return-void
.end method
