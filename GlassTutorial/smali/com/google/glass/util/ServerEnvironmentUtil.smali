.class public Lcom/google/glass/util/ServerEnvironmentUtil;
.super Ljava/lang/Object;
.source "ServerEnvironmentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getServerEnvironment()Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SERVER_COMPONENT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->getValue(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->CUSTOM:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    .line 34
    :goto_0
    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->QA_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->QA:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->AUTOPUSH_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    sget-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->AUTOPUSH:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->DEV_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    sget-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->DEV:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    goto :goto_0

    .line 34
    :cond_3
    sget-object v0, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->PROD:Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    goto :goto_0
.end method
