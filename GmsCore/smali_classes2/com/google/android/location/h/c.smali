.class public final Lcom/google/android/location/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:[F


# direct methods
.method public constructor <init>(III[F)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/android/location/h/c;->a:I

    .line 45
    iput p3, p0, Lcom/google/android/location/h/c;->c:I

    .line 46
    iput p2, p0, Lcom/google/android/location/h/c;->b:I

    .line 47
    iput-object p4, p0, Lcom/google/android/location/h/c;->d:[F

    .line 48
    return-void
.end method

.method public static a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/h/c;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    .line 58
    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    .line 60
    :goto_0
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    .line 62
    invoke-virtual {p0, v7}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v4

    .line 63
    new-array v5, v4, [F

    .line 64
    :goto_1
    if-ge v1, v4, :cond_1

    .line 65
    invoke-virtual {p0, v7, v1}, Lcom/google/g/a/b/b/a;->a(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    aput v6, v5, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Lcom/google/android/location/h/c;

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/google/android/location/h/c;-><init>(III[F)V

    return-object v1
.end method
