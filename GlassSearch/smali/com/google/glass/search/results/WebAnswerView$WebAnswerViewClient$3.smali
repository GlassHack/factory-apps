.class Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$3;
.super Ljava/lang/Object;
.source "WebAnswerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->handleTelUri(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$selectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$3;->this$1:Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;

    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$3;->val$selectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p3, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$3;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$3;->val$selectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$3;->val$phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVoiceCall(Ljava/lang/String;)Z

    .line 776
    return-void
.end method
