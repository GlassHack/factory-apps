.class public final Lcom/google/glass/timeline/TimelineContract$Entity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/glass/timeline/TimelineContract$EntityColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENTITY_TYPE_CREATOR:I = 0x1

.field public static final ENTITY_TYPE_SHARE_TARGET:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "entity"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/google/glass/timeline/TimelineContract;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "entity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineContract$Entity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
