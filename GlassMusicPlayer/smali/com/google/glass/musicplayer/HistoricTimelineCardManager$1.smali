.class Lcom/google/glass/musicplayer/HistoricTimelineCardManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$1;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$1;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$000(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
