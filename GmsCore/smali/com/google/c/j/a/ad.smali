.class public final Lcom/google/c/j/a/ad;
.super Lcom/google/c/j/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/c/j/a/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/c/j/a/ad;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/c/j/a/ad;

    invoke-direct {v0}, Lcom/google/c/j/a/ad;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/c/j/a/b;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/c/j/a/b;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
