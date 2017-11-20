.class Lcom/google/glass/userevent/UserEventService$4;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field factory:Ljava/util/concurrent/ThreadFactory;

.field final synthetic this$0:Lcom/google/glass/userevent/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/userevent/UserEventService;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventService$4;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    const-string v2, "UserEventBackgroundThread"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventService$4;->factory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService$4;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-static {v0}, Lcom/google/glass/userevent/UserEventService;->access$000(Lcom/google/glass/userevent/UserEventService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService$4;->this$0:Lcom/google/glass/userevent/UserEventService;

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService$4;->factory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/userevent/UserEventService;->access$002(Lcom/google/glass/userevent/UserEventService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 191
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService$4;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-static {v0}, Lcom/google/glass/userevent/UserEventService;->access$000(Lcom/google/glass/userevent/UserEventService;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
