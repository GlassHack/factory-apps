.class public final Lcom/google/android/maps/driveabout/a/ac;
.super Lcom/google/android/maps/driveabout/a/ad;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/maps/driveabout/a/ac;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/a/ad;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)Lcom/google/android/maps/driveabout/a/ac;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/maps/driveabout/a/ac;->a:Lcom/google/android/maps/driveabout/a/ac;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/android/maps/driveabout/a/ac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/a/ac;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/a/ac;->a:Lcom/google/android/maps/driveabout/a/ac;

    .line 62
    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/a/ac;->a:Lcom/google/android/maps/driveabout/a/ac;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/cannedtts/"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "TtsVoiceBundles"

    return-object v0
.end method
