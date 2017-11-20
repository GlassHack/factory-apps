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
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BoutiqueUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanForStorage(Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 2
    .param p0, "original"    # Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p0}, Lcom/google/glass/boutique/BoutiqueUtils;->clone(Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    move-result-object v0

    .line 88
    .local v0, "clone":Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    iget-object v1, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->clearDownloadUrl()Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 92
    .end local v0    # "clone":Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 3
    .param p0, "original"    # Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone glassware"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 48
    const-string v0, "protobuf_blob"

    .line 49
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/google/glass/boutique/BoutiqueUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 64
    :goto_0
    return-object v1

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/boutique/BoutiqueUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to parse stored InstalledGlassware record."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "glassware"    # Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .prologue
    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "glassware_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->getGlasswareId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    const-string v1, "is_enabled"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->getIsEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    const-string v1, "protobuf_blob"

    invoke-static {p0}, Lcom/google/glass/boutique/BoutiqueUtils;->cleanForStorage(Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 35
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "mirror_project_id"

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;->getProjectId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-eqz v1, :cond_1

    .line 39
    const-string v1, "apk_package_name"

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    return-object v0
.end method
