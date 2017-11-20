.class public final Lcom/google/android/gms/playlog/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/playlog/internal/i;

.field private b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 187
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/playlog/b;-><init>(Landroid/content/Context;ILcom/google/android/gms/playlog/c;)V

    .line 188
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/google/android/gms/playlog/c;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 201
    const/16 v2, 0xa

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/c;Z)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/c;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 221
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 227
    new-instance v0, Lcom/google/android/gms/playlog/internal/i;

    new-instance v1, Lcom/google/android/gms/playlog/internal/g;

    invoke-direct {v1, p5}, Lcom/google/android/gms/playlog/internal/g;-><init>(Lcom/google/android/gms/playlog/c;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/playlog/internal/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/playlog/internal/g;)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b;->a:Lcom/google/android/gms/playlog/internal/i;

    .line 228
    return-void

    .line 223
    :catch_0
    move-exception v0

    const-string v0, "PlayLogger"

    const-string v3, "This can\'t happen."

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(JLjava/lang/String;[B[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/gms/playlog/b;->a:Lcom/google/android/gms/playlog/internal/i;

    iget-object v7, p0, Lcom/google/android/gms/playlog/b;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    new-instance v1, Lcom/google/android/gms/playlog/internal/LogEvent;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/playlog/internal/LogEvent;-><init>(JLjava/lang/String;[B[Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/playlog/internal/i;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    .line 322
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/playlog/b;->a(JLjava/lang/String;[B[Ljava/lang/String;)V

    .line 313
    return-void
.end method
