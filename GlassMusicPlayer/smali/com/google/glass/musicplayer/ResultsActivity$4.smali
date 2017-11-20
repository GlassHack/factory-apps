.class Lcom/google/glass/musicplayer/ResultsActivity$4;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ResultsActivity;

.field final synthetic val$actualBestGuess:Lcom/google/glass/musicplayer/cards/Card;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iput-object p2, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->val$actualBestGuess:Lcom/google/glass/musicplayer/cards/Card;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 303
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->val$actualBestGuess:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->SONG:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->val$actualBestGuess:Lcom/google/glass/musicplayer/cards/Card;

    invoke-static {v0, v1, v2}, Lcom/google/glass/musicplayer/ResultsActivity;->access$400(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;I)V

    .line 305
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->access$500(Lcom/google/glass/musicplayer/ResultsActivity;)V

    .line 306
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->finish()V

    .line 315
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->val$actualBestGuess:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->isBundle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->val$actualBestGuess:Lcom/google/glass/musicplayer/cards/Card;

    invoke-static {v0, v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$600(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->access$100(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Could not autoplay card of type %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->val$actualBestGuess:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v3}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    const/16 v2, 0xb

    invoke-static {v0, v1, v2, v4}, Lcom/google/glass/musicplayer/ResultsActivity;->access$700(Lcom/google/glass/musicplayer/ResultsActivity;IIZ)V

    goto :goto_0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 323
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, v1, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 324
    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v2, v2, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 325
    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 326
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, v1, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v2, v2, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    .line 327
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, v1, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 335
    :goto_0
    return v0

    .line 329
    :cond_0
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, v1, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 330
    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v1

    if-lez v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, v1, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v2, v2, Lcom/google/glass/musicplayer/ResultsActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    .line 332
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$4;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, v1, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    goto :goto_0

    .line 335
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
