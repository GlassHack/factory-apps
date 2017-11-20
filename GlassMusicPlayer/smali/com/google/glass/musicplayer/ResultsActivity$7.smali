.class Lcom/google/glass/musicplayer/ResultsActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ResultsActivity;

.field final synthetic val$card:Lcom/google/glass/musicplayer/cards/Card;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iput-object p2, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->val$card:Lcom/google/glass/musicplayer/cards/Card;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x9

    const/4 v3, 0x1

    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 650
    invoke-static {}, Lcom/google/glass/musicplayer/ResultsActivity;->access$000()Lcom/google/glass/musicplayer/BundleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->val$card:Lcom/google/glass/musicplayer/cards/Card;

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/BundleManager;->getBundle(Lcom/google/glass/musicplayer/cards/Card;)Ljava/util/ArrayList;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1000(Lcom/google/glass/musicplayer/ResultsActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v2}, Lcom/google/glass/musicplayer/ResultsActivity;->access$900(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 652
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1300(Lcom/google/glass/musicplayer/ResultsActivity;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1300(Lcom/google/glass/musicplayer/ResultsActivity;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->val$card:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v2}, Lcom/google/glass/musicplayer/cards/Card;->getXdiIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1, v7}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1302(Lcom/google/glass/musicplayer/ResultsActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 659
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$900(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$900(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->dismiss()V

    .line 661
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1, v7}, Lcom/google/glass/musicplayer/ResultsActivity;->access$902(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    .line 663
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->access$100(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Empty card bundle encountered when opening bundle for card: %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->val$card:Lcom/google/glass/musicplayer/cards/Card;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    sget-object v0, Lcom/google/glass/musicplayer/ResultsActivity$9;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->val$card:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 689
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    invoke-static {v0, v1, v6, v4}, Lcom/google/glass/musicplayer/ResultsActivity;->access$700(Lcom/google/glass/musicplayer/ResultsActivity;IIZ)V

    .line 697
    :goto_0
    return-void

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->access$100(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Not opening bundle because it was dismissed by the user"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 667
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->val$card:Lcom/google/glass/musicplayer/cards/Card;

    check-cast v0, Lcom/google/glass/musicplayer/cards/Category;

    .line 668
    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Category;->getCategoryType()Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_PLAYLISTS:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    if-ne v1, v2, :cond_3

    .line 669
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_no_playlists:I

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_no_playlists_secondary:I

    invoke-static {v0, v1, v2, v5, v4}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1100(Lcom/google/glass/musicplayer/ResultsActivity;IIIZ)V

    goto :goto_0

    .line 671
    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Category;->getCategoryType()Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_MY_STATIONS:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    if-ne v1, v2, :cond_4

    .line 672
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_no_my_stations:I

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_no_my_stations_secondary:I

    invoke-static {v0, v1, v2, v5, v4}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1100(Lcom/google/glass/musicplayer/ResultsActivity;IIIZ)V

    goto :goto_0

    .line 674
    :cond_4
    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Category;->getCategoryType()Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_MY_MIXES:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    if-ne v0, v1, :cond_5

    .line 675
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_no_my_mixes:I

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_no_my_mixes_secondary:I

    invoke-static {v0, v1, v2, v5, v4}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1100(Lcom/google/glass/musicplayer/ResultsActivity;IIIZ)V

    goto :goto_0

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    invoke-static {v0, v1, v6, v4}, Lcom/google/glass/musicplayer/ResultsActivity;->access$700(Lcom/google/glass/musicplayer/ResultsActivity;IIZ)V

    goto :goto_0

    .line 684
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_empty_playlist:I

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_empty_playlist_secondary:I

    invoke-static {v0, v1, v2, v5, v4}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1100(Lcom/google/glass/musicplayer/ResultsActivity;IIIZ)V

    goto :goto_0

    .line 695
    :cond_6
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$7;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1, v0, v3}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1400(Lcom/google/glass/musicplayer/ResultsActivity;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
