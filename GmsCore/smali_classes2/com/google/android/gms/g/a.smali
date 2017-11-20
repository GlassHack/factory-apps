.class public final Lcom/google/android/gms/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/16 v6, 0x10

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 40
    :try_start_0
    const-string v0, "logging_id2"

    invoke-static {v4, v0}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 47
    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 48
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 50
    invoke-static {v0, v1, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .line 51
    const-string v3, "logging_id2"

    invoke-static {v4, v3, v2}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    :cond_0
    return-wide v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v1, "GoogleSettingsUtils"

    const-string v5, "Can\'t parse Logging ID"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method
