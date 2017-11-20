.class public Lcom/google/glass/voice/actions/ActionHandlers;
.super Ljava/lang/Object;
.source "ActionHandlers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAction(Landroid/content/Context;Lcom/google/majel/proto/PeanutProtos$Peanut;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peanut"    # Lcom/google/majel/proto/PeanutProtos$Peanut;

    .prologue
    .line 19
    new-instance v0, Lcom/google/glass/voice/actions/ModularActionHandler;

    invoke-direct {v0}, Lcom/google/glass/voice/actions/ModularActionHandler;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/glass/voice/actions/ModularActionHandler;->handleAction(Landroid/content/Context;Lcom/google/majel/proto/PeanutProtos$Peanut;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/glass/voice/actions/ActionV2Handler;

    invoke-direct {v0}, Lcom/google/glass/voice/actions/ActionV2Handler;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/glass/voice/actions/ActionV2Handler;->handleAction(Landroid/content/Context;Lcom/google/majel/proto/PeanutProtos$Peanut;)Z

    move-result v0

    goto :goto_0
.end method
