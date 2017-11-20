.class public final Lcom/google/g/a/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/g/a/b/b/e;->a:Z

    return-void
.end method

.method public static a(Lcom/google/g/a/b/b/a;)I
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/g/a/b/b/e;->a(Lcom/google/g/a/b/b/a;II)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/g/a/b/b/a;II)I
    .locals 1

    .prologue
    .line 107
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/a;->c(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 112
    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static b(Lcom/google/g/a/b/b/a;)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 160
    if-eqz p0, :cond_0

    const/4 v2, 0x6

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/a;->d(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 164
    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 162
    :catch_1
    move-exception v2

    goto :goto_0
.end method
