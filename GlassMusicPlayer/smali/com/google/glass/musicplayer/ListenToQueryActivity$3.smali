.class Lcom/google/glass/musicplayer/ListenToQueryActivity$3;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

.field final synthetic val$inputType:I


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ListenToQueryActivity;I)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    iput p2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->val$inputType:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 307
    invoke-static {}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$200()Lcom/google/glass/musicplayer/CursorUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/CursorUtils;->isAcceptedUser(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 309
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-object v6

    .line 313
    :cond_1
    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_not_music_user:I

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_not_music_user_secondary:I

    sget v3, Lcom/google/glass/musicplayer/R$drawable;->ic_warning_150:I

    const/16 v4, 0xe

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$400(Lcom/google/glass/musicplayer/ListenToQueryActivity;IIII)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-static {}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$200()Lcom/google/glass/musicplayer/CursorUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/CursorUtils;->isNautilus(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 321
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-static {}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$600()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "browse"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    if-eqz v0, :cond_3

    .line 332
    iget-object v3, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v3}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$700(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/musicplayer/cards/Radio;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v3, v1, v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$800(Lcom/google/glass/musicplayer/ListenToQueryActivity;Landroid/net/Uri;Z)Lcom/google/glass/musicplayer/cards/Category;

    move-result-object v0

    .line 337
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v0, v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$900(Lcom/google/glass/musicplayer/ListenToQueryActivity;Landroid/net/Uri;)Lcom/google/glass/musicplayer/cards/Category;

    move-result-object v0

    .line 344
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    const/4 v1, 0x1

    iget v3, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->val$inputType:I

    invoke-static {v0, v2, v1, v3}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$500(Lcom/google/glass/musicplayer/ListenToQueryActivity;Ljava/util/ArrayList;ZI)V

    .line 354
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->finish()V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    iget-object v3, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v3}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Encountered URISyntaxException while trying to create Radios category."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 345
    :catch_1
    move-exception v0

    .line 346
    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$3;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "Encountered URISyntaxException while trying to create Playlists category."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
