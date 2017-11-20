.class Lcom/google/glass/bluetooth/companion/CompanionConnection$MultimediaMessageRunnable;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultimediaMessageRunnable"
.end annotation


# instance fields
.field private final mms:Lcom/google/glass/companion/Proto$MultimediaMessage;

.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;Lcom/google/glass/companion/Proto$MultimediaMessage;)V
    .locals 0
    .param p2, "mms"    # Lcom/google/glass/companion/Proto$MultimediaMessage;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$MultimediaMessageRunnable;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$MultimediaMessageRunnable;->mms:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 732
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$MultimediaMessageRunnable;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$MultimediaMessageRunnable;->mms:Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-static {v1}, Lcom/google/glass/companion/CompanionTimelineUtils;->getTimelineitem(Lcom/google/glass/companion/Proto$MultimediaMessage;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleTimelineItemFromCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 737
    return-void
.end method
