.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;

.field final synthetic val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;)V
    .locals 0

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$listener:Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 5

    .prologue
    .line 1056
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "%s cancelled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$listener:Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$listener:Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;->onDismissed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 1060
    :cond_0
    return-void
.end method

.method public onDone()V
    .locals 5

    .prologue
    .line 1064
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "%s confirmed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$listener:Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$listener:Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$12;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;->onConfirmed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 1068
    :cond_0
    return-void
.end method
