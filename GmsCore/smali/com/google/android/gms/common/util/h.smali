.class public final Lcom/google/android/gms/common/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 73
    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/gms/common/util/h;->a:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "\\(\\d+-"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/h;->a:Ljava/util/regex/Pattern;

    .line 63
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/util/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 68
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-nez v0, :cond_0

    .line 40
    :try_start_0
    invoke-static {p0}, Landroid/support/a/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 48
    const-wide/16 v2, 0x5

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 83
    rem-int/lit16 v0, p0, 0x3e8

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 88
    rem-int/lit8 v0, p0, 0x64

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 93
    rem-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static e(I)Z
    .locals 2

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/android/gms/common/util/h;->b(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
