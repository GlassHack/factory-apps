.class Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;
.super Landroid/util/Pair;
.source "EntitySyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/sync/EntitySyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UniquePersonaId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/sync/EntitySyncHandler;


# direct methods
.method constructor <init>(Lcom/google/glass/home/sync/EntitySyncHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V
    .locals 2
    .param p2, "persona"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    .line 448
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    return-void
.end method
