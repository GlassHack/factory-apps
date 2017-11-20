.class Lcom/google/glass/search/VoiceSearchResultsActivity$3;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/VoiceSearchResultsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/search/VoiceSearchResultsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showMenu()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$100(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 598
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->pagedWebResultsView:Lcom/google/glass/search/results/WebAnswerView;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    .line 599
    invoke-static {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->isPwavEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    iget-object v0, v0, Lcom/google/glass/search/VoiceSearchResultsActivity;->resultsView:Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;

    if-nez v0, :cond_2

    .line 600
    :cond_1
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 609
    :goto_0
    return-void

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$200(Lcom/google/glass/search/VoiceSearchResultsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$300(Lcom/google/glass/search/VoiceSearchResultsActivity;)V

    goto :goto_0

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$3;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-virtual {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->onConfirm()Z

    goto :goto_0
.end method
