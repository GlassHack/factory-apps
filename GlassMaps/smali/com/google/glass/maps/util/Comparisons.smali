.class public Lcom/google/glass/maps/util/Comparisons;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 15
    :goto_0
    return v0

    .line 12
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 13
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
