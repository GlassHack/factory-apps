.class Lcom/google/glass/musicplayer/BundleManager$2;
.super Landroid/util/LruCache;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/BundleManager;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/BundleManager;I)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/musicplayer/BundleManager$2;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Lcom/google/glass/musicplayer/cards/Card;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/musicplayer/BundleManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "New song was fetched instead of using cached result. Card: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 115
    :pswitch_0
    check-cast p1, Lcom/google/glass/musicplayer/cards/Song;

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager$2;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    check-cast p1, Lcom/google/glass/musicplayer/cards/Album;

    invoke-static {v0, p1}, Lcom/google/glass/musicplayer/BundleManager;->access$300(Lcom/google/glass/musicplayer/BundleManager;Lcom/google/glass/musicplayer/cards/Album;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object p1

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager$2;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    check-cast p1, Lcom/google/glass/musicplayer/cards/Artist;

    invoke-static {v0, p1}, Lcom/google/glass/musicplayer/BundleManager;->access$400(Lcom/google/glass/musicplayer/BundleManager;Lcom/google/glass/musicplayer/cards/Artist;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object p1

    goto :goto_0

    .line 121
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager$2;->this$0:Lcom/google/glass/musicplayer/BundleManager;

    check-cast p1, Lcom/google/glass/musicplayer/cards/Playlist;

    invoke-static {v0, p1}, Lcom/google/glass/musicplayer/BundleManager;->access$500(Lcom/google/glass/musicplayer/BundleManager;Lcom/google/glass/musicplayer/cards/Playlist;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object p1

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/google/glass/musicplayer/cards/Card;

    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/BundleManager$2;->create(Lcom/google/glass/musicplayer/cards/Card;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    return-object v0
.end method
