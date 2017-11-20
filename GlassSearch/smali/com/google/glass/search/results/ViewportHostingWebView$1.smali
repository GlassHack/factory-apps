.class Lcom/google/glass/search/results/ViewportHostingWebView$1;
.super Landroid/os/Handler;
.source "ViewportHostingWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/ViewportHostingWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/results/ViewportHostingWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/ViewportHostingWebView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/results/ViewportHostingWebView;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/search/results/ViewportHostingWebView$1;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 57
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "count"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "cardCount":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "time"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 62
    .local v3, "stableTime":J
    const-string v5, "count"

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "time"

    aput-object v9, v7, v8

    .line 64
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    .line 62
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "eventTuple":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/search/results/ViewportHostingWebView$1;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-static {v5}, Lcom/google/glass/search/results/ViewportHostingWebView;->access$000(Lcom/google/glass/search/results/ViewportHostingWebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_CARD_COUNT_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 71
    .local v2, "msgType":Lcom/google/glass/userevent/UserEventAction;
    :goto_1
    iget-object v5, p0, Lcom/google/glass/search/results/ViewportHostingWebView$1;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-static {v5, v10}, Lcom/google/glass/search/results/ViewportHostingWebView;->access$002(Lcom/google/glass/search/results/ViewportHostingWebView;Z)Z

    .line 73
    iget-object v5, p0, Lcom/google/glass/search/results/ViewportHostingWebView$1;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-static {v5}, Lcom/google/glass/search/results/ViewportHostingWebView;->access$100(Lcom/google/glass/search/results/ViewportHostingWebView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v2    # "msgType":Lcom/google/glass/userevent/UserEventAction;
    :cond_0
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_CARD_COUNT_STABLE:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
