.class public final Lcom/google/android/gms/auth/api/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;
    .locals 19

    .prologue
    .line 17
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v2

    .line 20
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 34
    const/4 v11, 0x0

    .line 36
    const/4 v12, 0x0

    .line 38
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 42
    const/4 v15, 0x0

    .line 44
    const-wide/16 v16, 0x0

    .line 47
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 49
    const v18, 0xffff

    and-int v18, v18, v3

    sparse-switch v18, :sswitch_data_0

    .line 182
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    :sswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 63
    :sswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    .line 73
    :sswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 83
    :sswitch_3
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 93
    :sswitch_4
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 103
    :sswitch_5
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v9

    goto :goto_0

    .line 113
    :sswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 123
    :sswitch_7
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_0

    .line 133
    :sswitch_8
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 143
    :sswitch_9
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_0

    .line 153
    :sswitch_a
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v14

    goto :goto_0

    .line 163
    :sswitch_b
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)[B

    move-result-object v15

    goto :goto_0

    .line 173
    :sswitch_c
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)J

    move-result-wide v16

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 188
    new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Overread allowed size end="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v3

    .line 191
    :cond_1
    new-instance v3, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/os/Bundle;[BJ)V

    .line 195
    return-object v3

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method static a(Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 206
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 213
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 220
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 227
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 234
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 241
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->f:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 248
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 255
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->h:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 262
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 269
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->j:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 276
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->k:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 283
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->l:[B

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I[BZ)V

    .line 290
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->m:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IJ)V

    .line 298
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 299
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/auth/api/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    return-object v0
.end method
