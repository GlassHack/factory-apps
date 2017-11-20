.class Lcom/google/glass/search/SearchFromQueryActivity$1;
.super Ljava/lang/Object;
.source "SearchFromQueryActivity.java"

# interfaces
.implements Lcom/google/glass/voice/network/GwsResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/SearchFromQueryActivity;->doSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/SearchFromQueryActivity;

.field final synthetic val$activity:Lcom/google/glass/search/SearchFromQueryActivity;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/search/SearchFromQueryActivity;Ljava/lang/String;Lcom/google/glass/search/SearchFromQueryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/SearchFromQueryActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    iput-object p2, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$q:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$activity:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionString"    # Ljava/lang/String;

    .prologue
    .line 216
    return-void
.end method

.method public onDone()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-static {v0}, Lcom/google/glass/search/SearchFromQueryActivity;->access$300(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 221
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-static {v0}, Lcom/google/glass/search/SearchFromQueryActivity;->access$200(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_ON_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 222
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/search/R$string;->voice_network_connectivity:I

    .line 223
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/search/R$string;->error_tap_connection_settings:I

    .line 224
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/search/R$drawable;->ic_cloud_sad_150:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    .line 226
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget-object v1, Lcom/google/glass/app/GlassError$OnConfirmAction;->SHOW_CONNECTIVITY_STATUS_CARD:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 227
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$activity:Lcom/google/glass/search/SearchFromQueryActivity;

    .line 228
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/search/SearchFromQueryActivity;->isCurrentQuery(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-static {v0}, Lcom/google/glass/search/SearchFromQueryActivity;->access$100(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Finished a search request for %s while on a different search request for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$q:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    .line 192
    invoke-static {v4}, Lcom/google/glass/search/SearchFromQueryActivity;->access$000(Lcom/google/glass/search/SearchFromQueryActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 190
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-static {v0}, Lcom/google/glass/search/SearchFromQueryActivity;->access$200(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_STALE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$activity:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/SearchFromQueryActivity;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNoResults()V
    .locals 5

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    iget-object v1, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/search/SearchFromQueryActivity;->isCurrentQuery(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-static {v0}, Lcom/google/glass/search/SearchFromQueryActivity;->access$100(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Finished a search request for %s while on a different search request for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$q:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    .line 205
    invoke-static {v4}, Lcom/google/glass/search/SearchFromQueryActivity;->access$000(Lcom/google/glass/search/SearchFromQueryActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 203
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->this$0:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-static {v0}, Lcom/google/glass/search/SearchFromQueryActivity;->access$200(Lcom/google/glass/search/SearchFromQueryActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SEARCH_FROM_QUERY_STALE_RESPONSE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/SearchFromQueryActivity$1;->val$activity:Lcom/google/glass/search/SearchFromQueryActivity;

    invoke-virtual {v0}, Lcom/google/glass/search/SearchFromQueryActivity;->onNoResults()V

    goto :goto_0
.end method
