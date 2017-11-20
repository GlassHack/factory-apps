.class public final Lcom/google/android/location/reporting/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/location/reporting/config/AccountConfig;)Z
    .locals 1

    .prologue
    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
