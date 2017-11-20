.class public final Lcom/google/glass/companion/CompanionVersionUtils;
.super Ljava/lang/Object;
.source "CompanionVersionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMajorVersion(I)I
    .locals 1
    .param p0, "version"    # I

    .prologue
    .line 16
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getMinorVersion(I)I
    .locals 2
    .param p0, "version"    # I

    .prologue
    .line 11
    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
