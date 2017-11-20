.class public final Lcom/google/glass/entity/EntityProviderConstants$SyncMetadataKeys;
.super Ljava/lang/Object;
.source "EntityProviderConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityProviderConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncMetadataKeys"
.end annotation


# static fields
.field public static final FOCUS_VERSION_INFO:Ljava/lang/String; = "focus_version_info"

.field public static final SYNC_TOKEN_KEY:Ljava/lang/String; = "contact_sync_token"

.field public static final VERBOSE_SERVER_LOGGING_KEY:Ljava/lang/String; = "verbose_server_logging"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
