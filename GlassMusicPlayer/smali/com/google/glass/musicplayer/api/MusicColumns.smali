.class public Lcom/google/glass/musicplayer/api/MusicColumns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ALBUM_ARTIST_NAME:Ljava/lang/String; = "albumArtistName"

.field public static final ALBUM_ART_URL:Ljava/lang/String; = "albumArtUrl"

.field public static final ALBUM_NAME:Ljava/lang/String; = "albumName"

.field public static final ARTIST_NAME:Ljava/lang/String; = "artistName"

.field public static final DEFAULT_PROJECTION:[Ljava/lang/String;

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final ID:Ljava/lang/String; = "contentId"

.field public static final ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field public static final META1:Ljava/lang/String; = "meta1"

.field public static final META2:Ljava/lang/String; = "meta2"

.field public static final SEARCH_PATH:Ljava/lang/String; = "search"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_ALBUM:I = 0x2

.field public static final TYPE_ARTIST:I = 0x1

.field public static final TYPE_PLAYLIST:I = 0x3

.field public static final TYPE_TRACK:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contentId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artistName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "albumArtistName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "albumName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "albumArtUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "itemCount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meta1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "meta2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/api/MusicColumns;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
