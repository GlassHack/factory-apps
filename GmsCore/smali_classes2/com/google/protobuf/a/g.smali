.class public final Lcom/google/protobuf/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xb

    sput v0, Lcom/google/protobuf/a/g;->a:I

    .line 81
    const/16 v0, 0xc

    sput v0, Lcom/google/protobuf/a/g;->b:I

    .line 83
    const/16 v0, 0x10

    sput v0, Lcom/google/protobuf/a/g;->c:I

    .line 85
    const/16 v0, 0x1a

    sput v0, Lcom/google/protobuf/a/g;->d:I

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 60
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 70
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 65
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
