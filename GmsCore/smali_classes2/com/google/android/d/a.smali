.class public final Lcom/google/android/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v2, 0x9

    const/16 v3, 0x22

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 51
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 52
    if-eq v1, v4, :cond_1

    if-eq v1, v2, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 56
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\"\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public static a(Ljava/io/BufferedReader;Ljava/util/List;)Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/16 v7, 0x22

    const/4 v3, -0x1

    .line 73
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 74
    if-nez v1, :cond_0

    .line 105
    :goto_0
    return v0

    .line 78
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    :goto_1
    const/16 v2, 0x2c

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 82
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 83
    if-eq v2, v3, :cond_5

    if-eq v4, v3, :cond_1

    if-lt v4, v2, :cond_5

    .line 85
    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_2
    invoke-virtual {v6, v1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v0, v2

    .line 87
    :goto_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 90
    if-nez v1, :cond_3

    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v5

    .line 92
    goto :goto_0

    :cond_3
    move v0, v3

    .line 94
    goto :goto_2

    .line 97
    :cond_4
    invoke-virtual {v6, v1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v0, v2, 0x1

    .line 99
    goto :goto_1

    .line 101
    :cond_5
    if-ne v4, v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_3
    invoke-virtual {v6, v1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v4, 0x1

    .line 104
    if-gtz v0, :cond_0

    move v0, v5

    .line 105
    goto :goto_0

    :cond_6
    move v2, v4

    .line 101
    goto :goto_3
.end method
