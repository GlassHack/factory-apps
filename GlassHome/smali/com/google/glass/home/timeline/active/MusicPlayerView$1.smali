.class Lcom/google/glass/home/timeline/active/MusicPlayerView$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "MusicPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/MusicPlayerView;->startRadio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/MusicPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$1;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 346
    invoke-static {}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Broadcasting startRadioIntent."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    new-instance v3, Lcom/google/common/logging/MusicLogNano$Music;

    invoke-direct {v3}, Lcom/google/common/logging/MusicLogNano$Music;-><init>()V

    const/4 v4, 0x2

    .line 348
    invoke-virtual {v3, v4}, Lcom/google/common/logging/MusicLogNano$Music;->setType(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v3

    const/4 v4, 0x6

    .line 349
    invoke-virtual {v3, v4}, Lcom/google/common/logging/MusicLogNano$Music;->setPlayerCommand(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v3

    .line 350
    invoke-virtual {v3, v6}, Lcom/google/common/logging/MusicLogNano$Music;->setUiType(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v3

    .line 351
    invoke-virtual {v3, v6}, Lcom/google/common/logging/MusicLogNano$Music;->setSeedType(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v0

    .line 352
    .local v0, "musicLog":Lcom/google/common/logging/MusicLogNano$Music;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v3

    .line 353
    invoke-virtual {v3, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setMusic(Lcom/google/common/logging/MusicLogNano$Music;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v2

    .line 354
    .local v2, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$1;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$100(Lcom/google/glass/home/timeline/active/MusicPlayerView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 355
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.glass.music.action.START_PLAYER_SEEDED_RADIO"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "startRadioIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$1;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 357
    return-void
.end method
