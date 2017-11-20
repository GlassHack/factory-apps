.class public final Lcom/google/glass/timeline/TimelineContract$Timeline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/glass/timeline/TimelineContract$TimelineColumns;


# static fields
.field public static final BUNDLE_COVER_EXPLICIT:I = 0x1

.field public static final BUNDLE_COVER_NONE:I = 0x0

.field public static final BUNDLE_COVER_SINGLE:I = 0x3

.field public static final BUNDLE_COVER_STANDIN:I = 0x2

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_WITH_EXPIRED_URI:Landroid/net/Uri;

.field public static final DEFAULT_ATTRIBUTION_TYPE:I = -0x1

.field public static final DEFAULT_PIN_SCORE:I = 0x7fffffff

.field public static final DEFAULT_PIN_TIME:J = 0x0L

.field public static final MIME_SUBTYPE:Ljava/lang/String; = "vnd.com.google.glass.sync.timeline"

.field public static final TABLE_NAME:Ljava/lang/String; = "timeline"

.field public static final UNPINNED_ITEM_PIN_SCORE:I = -0x1

.field public static final UNPINNED_ITEM_PIN_TIME:J = -0x1L

.field public static final WITH_EXPIRED_PATH:Ljava/lang/String; = "withExpired"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/google/glass/timeline/TimelineContract;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "timeline"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 203
    sget-object v0, Lcom/google/glass/timeline/TimelineContract;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "timeline"

    .line 204
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "withExpired"

    .line 205
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_WITH_EXPIRED_URI:Landroid/net/Uri;

    .line 203
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
