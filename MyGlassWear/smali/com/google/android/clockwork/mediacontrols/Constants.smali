.class public Lcom/google/android/clockwork/mediacontrols/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CMD_NEXT:Ljava/lang/String; = "next"

.field public static final CMD_PLAY_PAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMD_PREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMD_STOP:Ljava/lang/String; = "stop"

.field public static final FEATURE_TAG:Ljava/lang/String; = "mediacontrols"

.field public static final FIELD_ALBUM:Ljava/lang/String; = "mediacontrols.album"

.field public static final FIELD_APP_ICON:Ljava/lang/String; = "mediacontrols.app_icon"

.field public static final FIELD_ARTIST:Ljava/lang/String; = "mediacontrols.artist"

.field public static final FIELD_ARTWORK:Ljava/lang/String; = "mediacontrols.artwork"

.field public static final FIELD_PLAYING:Ljava/lang/String; = "mediacontrols.playing"

.field public static final FIELD_SONG_ID:Ljava/lang/String; = "mediacontrols.song_id"

.field public static final FIELD_SUPPORTS_THUMBS:Ljava/lang/String; = "mediacontrols.supports_thumbs"

.field public static final FIELD_TITLE:Ljava/lang/String; = "mediacontrols.title"

.field public static final FIELD_TRANSPORT_FLAGS:Ljava/lang/String; = "mediacontrols.transport_flags"

.field public static final FIELD_TTL:Ljava/lang/String; = "mediacontrols.ttl"

.field public static final FIELD_USER_RATING:Ljava/lang/String; = "mediacontrols.user_rating"

.field public static final KEY_CMD:Ljava/lang/String; = "command"

.field public static final KEY_RATING:Ljava/lang/String; = "rating"

.field public static final PATH_MEDIA_CONTROL:Ljava/lang/String; = "/mediacontrols"

.field public static final RATING_DOWN:I = -0x1

.field public static final RATING_NONE:I = 0x0

.field public static final RATING_UP:I = 0x1

.field public static final URI_LOCAL_DATA_ITEM:Landroid/net/Uri;

.field public static final URI_PATTERN_DATA_ITEMS:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "wear"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/mediacontrols"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/mediacontrols/Constants;->URI_LOCAL_DATA_ITEM:Landroid/net/Uri;

    .line 14
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "wear"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/mediacontrols"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/mediacontrols/Constants;->URI_PATTERN_DATA_ITEMS:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
