.class public final Lcom/google/glass/boutique/BoutiqueUtils;
.super Ljava/lang/Object;
.source "BoutiqueUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/BoutiqueUtils$CardType;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BoutiqueUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static cleanForStorage(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 2
    .param p0, "original"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasApkMetadata()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {p0}, Lcom/google/glass/boutique/BoutiqueUtils;->clone(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v0

    .line 89
    .local v0, "clone":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->clearDownloadUrl()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 93
    .end local v0    # "clone":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 3
    .param p0, "original"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 75
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone glassware"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 49
    const-string v0, "protobuf_blob"

    .line 50
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/google/glass/boutique/BoutiqueUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 65
    :goto_0
    return-object v1

    .line 62
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/boutique/BoutiqueUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to parse stored InstalledGlassware record."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "glassware_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    const-string v1, "is_enabled"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getIsEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    const-string v1, "protobuf_blob"

    invoke-static {p0}, Lcom/google/glass/boutique/BoutiqueUtils;->cleanForStorage(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 36
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasMirrorMetadata()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "mirror_project_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getMirrorMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;->getProjectId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasApkMetadata()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const-string v1, "apk_package_name"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    return-object v0
.end method
