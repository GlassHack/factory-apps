.class public final Lcom/google/android/gms/blescanner/a/f;
.super Lcom/google/android/gms/blescanner/a/b;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v1, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/google/android/gms/blescanner/a/f;->a:[B

    .line 58
    new-array v0, v1, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lcom/google/android/gms/blescanner/a/f;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/a/b;-><init>()V

    return-void
.end method

.method public static a([B)Z
    .locals 3

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/android/gms/blescanner/b/a;->a([B)Ljava/lang/Integer;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    array-length v1, p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()[B
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/google/android/gms/blescanner/a/f;->a:[B

    return-object v0
.end method

.method public static c()[B
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/google/android/gms/blescanner/a/f;->b:[B

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "gbeaconV3"

    return-object v0
.end method

.method public final b([B)[B
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 118
    invoke-static {p1}, Lcom/google/android/gms/blescanner/b/a;->a([B)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    add-int/lit8 v1, v0, 0x3

    .line 120
    add-int/lit8 v0, v0, 0xd

    .line 124
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 125
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    const/4 v1, 0x6

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-object v2
.end method

.method public final c([B)I
    .locals 1

    .prologue
    .line 134
    invoke-static {p1}, Lcom/google/android/gms/blescanner/b/a;->a([B)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    add-int/lit8 v0, v0, 0x2

    aget-byte v0, p1, v0

    return v0
.end method
