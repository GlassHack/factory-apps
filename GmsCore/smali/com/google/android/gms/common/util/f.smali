.class public final Lcom/google/android/gms/common/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 446
    array-length v1, p0

    .line 447
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 448
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 449
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    return-object v2
.end method

.method public static a(Ljava/lang/StringBuilder;[D)V
    .locals 4

    .prologue
    .line 230
    array-length v1, p1

    .line 231
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 232
    if-eqz v0, :cond_0

    .line 233
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[F)V
    .locals 3

    .prologue
    .line 220
    array-length v1, p1

    .line 221
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 222
    if-eqz v0, :cond_0

    .line 223
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[J)V
    .locals 4

    .prologue
    .line 210
    array-length v1, p1

    .line 211
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 212
    if-eqz v0, :cond_0

    .line 213
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 190
    array-length v1, p1

    .line 191
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 192
    if-eqz v0, :cond_0

    .line 193
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 250
    array-length v1, p1

    .line 251
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 252
    if-eqz v0, :cond_0

    .line 253
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_0
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Z)V
    .locals 3

    .prologue
    .line 240
    array-length v1, p1

    .line 241
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 242
    if-eqz v0, :cond_0

    .line 243
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_0
    aget-boolean v2, p1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    return-void
.end method
