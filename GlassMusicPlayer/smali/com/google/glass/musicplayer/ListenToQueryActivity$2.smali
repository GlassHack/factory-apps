.class Lcom/google/glass/musicplayer/ListenToQueryActivity$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$inputType:I

.field final synthetic val$searchUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ListenToQueryActivity;Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    iput-object p2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->val$searchUri:Landroid/net/Uri;

    iput p4, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->val$inputType:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-object v3

    .line 231
    :cond_1
    invoke-static {}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$200()Lcom/google/glass/musicplayer/CursorUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->val$searchUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/musicplayer/CursorUtils;->getCursorForUri(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 233
    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Null cursor encountered from search query"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_generic:I

    sget v2, Lcom/google/glass/musicplayer/R$drawable;->ic_cloud_sad_150:I

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v4}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$300(Lcom/google/glass/musicplayer/ListenToQueryActivity;III)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Got back %s results."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-static {}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$200()Lcom/google/glass/musicplayer/CursorUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/musicplayer/CursorUtils;->extractCardsFromSearchHeadersCursor(Landroid/database/Cursor;Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v1

    .line 247
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 249
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    invoke-static {}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$200()Lcom/google/glass/musicplayer/CursorUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/CursorUtils;->isAcceptedUser(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 255
    invoke-static {}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$200()Lcom/google/glass/musicplayer/CursorUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/musicplayer/CursorUtils;->isNautilus(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 256
    iget-object v2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Nothing to play.  Nautilus enabled? %s, Accepted user? %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    .line 257
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    .line 256
    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    if-nez v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_not_music_user:I

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_not_music_user_secondary:I

    sget v4, Lcom/google/glass/musicplayer/R$drawable;->ic_warning_150:I

    const/16 v5, 0xe

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$400(Lcom/google/glass/musicplayer/ListenToQueryActivity;IIII)V

    goto/16 :goto_0

    .line 269
    :cond_3
    if-nez v1, :cond_4

    .line 270
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_no_results_no_nautilus:I

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_no_results_no_nautilus_secondary:I

    sget v4, Lcom/google/glass/musicplayer/R$drawable;->ic_warning_150:I

    const/4 v5, 0x4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$400(Lcom/google/glass/musicplayer/ListenToQueryActivity;IIII)V

    goto/16 :goto_0

    .line 275
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_no_results:I

    sget v2, Lcom/google/glass/musicplayer/R$drawable;->ic_cloud_sad_150:I

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v4}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$300(Lcom/google/glass/musicplayer/ListenToQueryActivity;III)V

    goto/16 :goto_0

    .line 285
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Sending %s matches."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    iget v2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->val$inputType:I

    invoke-static {v0, v1, v7, v2}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$500(Lcom/google/glass/musicplayer/ListenToQueryActivity;Ljava/util/ArrayList;ZI)V

    .line 291
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$2;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->finish()V

    goto/16 :goto_0
.end method
