.class public final Lcom/google/glass/entity/EntityProviderConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.entity"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final DATABASE_NAME:Ljava/lang/String; = "entity.db"

.field public static final DATABASE_VERSION:I = 0x12

.field public static final ENTITY_CAN_HANGOUT_INDEX:Ljava/lang/String; = "ix_entity_can_hangout"

.field public static final ENTITY_EMAIL_INDEX:Ljava/lang/String; = "ix_entity_email"

.field public static final ENTITY_IS_COMMUNICATION_TARGET_INDEX:Ljava/lang/String; = "ix_entity_is_communication_target"

.field public static final ENTITY_IS_SHARE_TARGET_INDEX:Ljava/lang/String; = "ix_entity_is_share_target"

.field public static final ENTITY_PHONE_NUMBER_INDEX:Ljava/lang/String; = "ix_entity_phone_number"

.field public static final ENTITY_SHOULD_SYNC_INDEX:Ljava/lang/String; = "ix_entity_should_sync"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENTITY_SOURCE_INDEX:Ljava/lang/String; = "ix_entity_source"

.field public static final ENTITY_TABLE:Ljava/lang/String; = "entity"

.field public static final ENTITY_TYPE:Ljava/lang/String; = "vnd.com.google.glass.entity"

.field public static final MATCH_ENTITY:I = 0x1

.field public static final MATCH_ENTITY_BY_ID:I = 0x2

.field public static final MATCH_SYNC_METADATA:I = 0x4

.field public static final RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

.field public static final SYNC_METADATA_TABLE:Ljava/lang/String; = "sync_metadata"

.field public static final SYNC_METADATA_URI:Landroid/net/Uri;

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_INDIVIDUAL:I = 0x1

.field public static final UPDATE_ENTITY_USAGE:I = 0x3

.field public static final UPDATE_ENTITY_USAGE_PATH:Ljava/lang/String; = "updateUsage"

.field public static final URI:Landroid/net/Uri;

.field public static final URI_PARAM_GROUP_BY:Ljava/lang/String; = "groupBy"

.field public static final URI_PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 21
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.entity"

    .line 22
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProviderConstants;->BASE_URI:Landroid/net/Uri;

    .line 29
    sget-object v0, Lcom/google/glass/entity/EntityProviderConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "entity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    .line 86
    sget-object v0, Lcom/google/glass/entity/EntityProviderConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sync_metadata"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProviderConstants;->SYNC_METADATA_URI:Landroid/net/Uri;

    .line 90
    invoke-static {}, Lcom/google/glass/entity/EntityProviderConstants;->createUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProviderConstants;->uriMatcher:Landroid/content/UriMatcher;

    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/entity/EntityProviderConstants;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 298
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 299
    const-string v1, "com.google.glass.entity"

    const-string v2, "entity"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    const-string v1, "com.google.glass.entity"

    const-string v2, "entity/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    const-string v1, "com.google.glass.entity"

    const-string v2, "updateUsage"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    const-string v1, "com.google.glass.entity"

    const-string v2, "sync_metadata"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    return-object v0
.end method

.method public static getAllEntitiesUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 281
    sget-object v0, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 287
    const-string v1, "groupBy"

    const-string v2, "ifnull(obfuscated_gaia_id, \"FGID\" || _id)"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 289
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
