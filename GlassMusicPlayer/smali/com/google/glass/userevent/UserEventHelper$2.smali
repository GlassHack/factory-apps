.class Lcom/google/glass/userevent/UserEventHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventHelper;

.field final synthetic val$userEvent:Lcom/google/common/a/d;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/common/a/d;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelper$2;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    iput-object p2, p0, Lcom/google/glass/userevent/UserEventHelper$2;->val$userEvent:Lcom/google/common/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventHelper$2;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper$2;->val$userEvent:Lcom/google/common/a/d;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->sendLoggingIntent(Lcom/google/common/a/d;)V

    .line 221
    return-void
.end method
