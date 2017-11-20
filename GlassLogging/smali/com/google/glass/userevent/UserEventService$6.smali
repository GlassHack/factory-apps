.class Lcom/google/glass/userevent/UserEventService$6;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventService;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/userevent/UserEventService;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventService$6;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService$6;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-static {v0}, Lcom/google/glass/userevent/UserEventService;->access$200(Lcom/google/glass/userevent/UserEventService;)Lcom/google/glass/protobuf/ProtoListFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/protobuf/ProtoListFile;->flushWrites()V

    .line 241
    return-void
.end method
