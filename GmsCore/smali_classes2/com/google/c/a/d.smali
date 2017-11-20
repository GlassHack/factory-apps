.class public final Lcom/google/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v2

    .line 413
    :goto_0
    if-ge v3, v4, :cond_2

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 414
    goto :goto_1

    .line 416
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
