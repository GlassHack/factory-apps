.class Lcom/google/glass/userevent/UserEventHelper$2;
.super Ljava/lang/Object;
.source "UserEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/nano/GlassUserEventProto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventHelper;

.field final synthetic val$userEvent:Lcom/google/common/logging/nano/GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/common/logging/nano/GlassUserEventProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelper$2;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    iput-object p2, p0, Lcom/google/glass/userevent/UserEventHelper$2;->val$userEvent:Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventHelper$2;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper$2;->val$userEvent:Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->sendLoggingIntent(Lcom/google/common/logging/nano/GlassUserEventProto;)V

    .line 219
    return-void
.end method
