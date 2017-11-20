.class public final Lcom/google/android/gms/auth/firstparty/dataservice/bb;
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

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 25

    .prologue
    .line 17
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v23

    .line 20
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x0

    .line 36
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 42
    const/4 v14, 0x0

    .line 44
    const/4 v15, 0x0

    .line 46
    const/16 v16, 0x0

    .line 48
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 50
    const/16 v18, 0x0

    .line 52
    const/16 v19, 0x0

    .line 54
    const/16 v20, 0x0

    .line 56
    const/16 v21, 0x0

    .line 58
    const/16 v22, 0x0

    .line 61
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v23

    if-ge v2, v0, :cond_0

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    const v24, 0xffff

    and-int v24, v24, v2

    packed-switch v24, :pswitch_data_0

    .line 266
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 67
    :pswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    .line 77
    :pswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 87
    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 97
    :pswitch_3
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 107
    :pswitch_4
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 117
    :pswitch_5
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 127
    :pswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 137
    :pswitch_7
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 147
    :pswitch_8
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 157
    :pswitch_9
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_0

    .line 167
    :pswitch_a
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_0

    .line 177
    :pswitch_b
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    .line 187
    :pswitch_c
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_0

    .line 197
    :pswitch_d
    sget-object v16, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/c;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-object/from16 v16, v2

    .line 203
    goto/16 :goto_0

    .line 207
    :pswitch_e
    sget-object v17, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/j;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    goto/16 :goto_0

    .line 217
    :pswitch_f
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 227
    :pswitch_10
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 237
    :pswitch_11
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v21

    goto/16 :goto_0

    .line 247
    :pswitch_12
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v20

    goto/16 :goto_0

    .line 257
    :pswitch_13
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v22

    goto/16 :goto_0

    .line 271
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v23

    if-eq v2, v0, :cond_1

    .line 272
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overread allowed size end="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    .line 275
    :cond_1
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct/range {v2 .. v22}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 279
    return-object v2

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 290
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 297
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 304
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 311
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 318
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 325
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 332
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 339
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->h:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 346
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 353
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->j:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 360
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->k:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 367
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->l:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 374
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->m:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 381
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->n:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 388
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->o:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 395
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->q:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 402
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->p:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 409
    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->s:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 416
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->r:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 423
    const/16 v1, 0x14

    iget v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->t:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 431
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 432
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method
