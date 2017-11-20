.class Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider$1;
.super Ljava/lang/Object;
.source "TimelineSyncService.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;->get()Lcom/google/glass/sync/TimelineSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/sync/TimelineSyncAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider$1;->this$1:Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/sync/TimelineSyncAdapter;
    .locals 5

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider$1;->this$1:Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;

    iget-object v1, v1, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider$1;->this$1:Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;

    iget-object v2, v2, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v2}, Lcom/google/glass/sync/TimelineSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/sync/TimelineSyncService;->access$200(Lcom/google/glass/sync/TimelineSyncService;Landroid/content/Context;)Lcom/google/glass/sync/TimelineSyncHandler;

    move-result-object v0

    .line 141
    .local v0, "timelineSyncHandler":Lcom/google/glass/sync/TimelineSyncHandler;
    new-instance v1, Lcom/google/glass/sync/TimelineSyncAdapter;

    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider$1;->this$1:Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;

    iget-object v2, v2, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v2}, Lcom/google/glass/sync/TimelineSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 142
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/glass/sync/TimelineSyncAdapter;-><init>(Landroid/content/Context;ZLcom/google/glass/time/Clock;Lcom/google/glass/sync/TimelineSyncHandler;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider$1;->get()Lcom/google/glass/sync/TimelineSyncAdapter;

    move-result-object v0

    return-object v0
.end method
