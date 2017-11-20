.class public Lcom/google/glass/sync/MirrorProjectIds;
.super Ljava/lang/Object;
.source "MirrorProjectIds.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getFocusProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->isDevEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "481106500174"

    .line 21
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "823483604716"

    goto :goto_0
.end method

.method public static getGmailProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->isDevEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "848160445133"

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "208113750677"

    goto :goto_0
.end method

.method public static getHangoutsProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->isDevEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "775228054077"

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "736585499008"

    goto :goto_0
.end method

.method public static getNowProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->isDevEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "1049879375096"

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "582969681302"

    goto :goto_0
.end method

.method public static getPlusProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->isDevEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "26439413063"

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "442840586513"

    goto :goto_0
.end method

.method private static isDevEnvironment()Z
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/google/glass/util/ServerEnvironmentUtil;->getServerEnvironment()Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    move-result-object v0

    .line 59
    .local v0, "env":Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;
    sget-object v1, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->DEV:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    invoke-virtual {v1, v0}, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
