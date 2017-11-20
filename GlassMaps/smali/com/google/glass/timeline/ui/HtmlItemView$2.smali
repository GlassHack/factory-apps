.class Lcom/google/glass/timeline/ui/HtmlItemView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/HtmlItemView;

.field final synthetic val$contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/timeline/ui/HtmlItemView$2;->this$0:Lcom/google/glass/timeline/ui/HtmlItemView;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/HtmlItemView$2;->val$contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSiteLoaded()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/timeline/ui/HtmlItemView$2;->val$contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;->onCompleted(Z)V

    .line 89
    return-void
.end method
