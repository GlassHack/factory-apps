.class Lcom/google/glass/timeline/ui/HtmlItemView$1;
.super Ljava/lang/Object;
.source "HtmlItemView.java"

# interfaces
.implements Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/HtmlItemView;->startRendering(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/HtmlItemView;

.field final synthetic val$contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/HtmlItemView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/timeline/ui/HtmlItemView$1;->this$0:Lcom/google/glass/timeline/ui/HtmlItemView;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/HtmlItemView$1;->val$contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V
    .locals 2
    .param p1, "client"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/timeline/ui/HtmlItemView$1;->val$contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;->onCompleted(Z)V

    .line 78
    return-void
.end method
