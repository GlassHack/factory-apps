.class public Lcom/google/glass/musicplayer/MusicTestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ACTION:Ljava/lang/String; = "someaction"

.field public static final DEFAULT_AUTHORITY:Ljava/lang/String; = "someauthority"

.field public static final DEFAULT_PATH:Ljava/lang/String; = "/some/path/id"

.field public static final DEFAULT_SCHEME:Ljava/lang/String; = "content"

.field public static final DEFAULT_STRING:Ljava/lang/String; = "defaultString"

.field public static final DEFAULT_TIMEOUT_MS:J = 0x1388L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlbum(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/musicplayer/cards/Album;
    .locals 8

    .prologue
    .line 55
    new-instance v0, Lcom/google/glass/musicplayer/cards/Album;

    const-string v2, "defaultString"

    const-string v4, "defaultString"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 62
    invoke-static {}, Lcom/google/glass/musicplayer/MusicTestUtils;->getFakePanoIntent()Landroid/content/Intent;

    move-result-object v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/musicplayer/cards/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    return-object v0
.end method

.method public static createArtist(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/musicplayer/cards/Artist;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 42
    new-instance v0, Lcom/google/glass/musicplayer/cards/Artist;

    const-string v3, "defaultString"

    .line 48
    invoke-static {}, Lcom/google/glass/musicplayer/MusicTestUtils;->getFakePanoIntent()Landroid/content/Intent;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/musicplayer/cards/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    return-object v0
.end method

.method public static createSong(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 9

    .prologue
    .line 28
    new-instance v0, Lcom/google/glass/musicplayer/cards/Song;

    const-string v3, "defaultString"

    const-string v4, "defaultString"

    const-wide/16 v5, 0x0

    const-string v7, "defaultString"

    .line 35
    invoke-static {}, Lcom/google/glass/musicplayer/MusicTestUtils;->getFakePanoIntent()Landroid/content/Intent;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/musicplayer/cards/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static getFakePanoIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 70
    const-string v0, "content://someauthority/some/path/id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "someaction"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method
