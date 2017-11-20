.class public Lcom/google/glass/sync/LocalIdGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOCAL_ID_PREFIX:Ljava/lang/String; = "local"

.field public static final PREFIX_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertValidId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 29
    return-void
.end method

.method public static isId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    const-string v0, "local"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static makeNewAttachmentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    const-string v0, "local:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/glass/sync/LocalIdGenerator;->assertValidId(Ljava/lang/String;)V

    .line 20
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
