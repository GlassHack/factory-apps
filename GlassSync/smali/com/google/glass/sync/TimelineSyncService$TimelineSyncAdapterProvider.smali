.class final Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;
.super Lcom/google/glass/inject/Provider;
.source "TimelineSyncService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/TimelineSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimelineSyncAdapterProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/sync/TimelineSyncAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/TimelineSyncService;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/TimelineSyncService;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/sync/TimelineSyncAdapter;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider$1;-><init>(Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/TimelineSyncAdapter;

    return-object v0
.end method
