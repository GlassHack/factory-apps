.class public final Lcom/google/glass/nowtown/NowTownUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static isNowTownEnabled(Landroid/content/ContentResolver;)Z
    .locals 2

    .prologue
    .line 26
    const-string v0, "nowtown_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
