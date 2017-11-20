.class public final Lcom/google/android/gms/auth/firstparty/dataservice/al;
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

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 23

    .prologue
    .line 17
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v21

    .line 20
    const/4 v3, 0x0

    .line 22
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

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
    const/16 v17, 0x0

    .line 50
    const/16 v18, 0x0

    .line 52
    const/16 v19, 0x0

    .line 54
    const/16 v20, 0x0

    .line 57
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_0

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    const v22, 0xffff

    and-int v22, v22, v2

    packed-switch v22, :pswitch_data_0

    .line 242
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 63
    :pswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    .line 73
    :pswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    .line 83
    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    .line 93
    :pswitch_3
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    .line 103
    :pswitch_4
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_0

    .line 113
    :pswitch_5
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 123
    :pswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 133
    :pswitch_7
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 143
    :pswitch_8
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 153
    :pswitch_9
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_0

    .line 163
    :pswitch_a
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_0

    .line 173
    :pswitch_b
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    .line 183
    :pswitch_c
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 193
    :pswitch_d
    sget-object v16, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/b;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-object/from16 v16, v2

    .line 199
    goto/16 :goto_0

    .line 203
    :pswitch_e
    sget-object v17, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/a;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-object/from16 v17, v2

    .line 209
    goto/16 :goto_0

    .line 213
    :pswitch_f
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 223
    :pswitch_10
    sget-object v18, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/d;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-object/from16 v18, v2

    .line 229
    goto/16 :goto_0

    .line 233
    :pswitch_11
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 247
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v21

    if-eq v2, v0, :cond_1

    .line 248
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overread allowed size end="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    .line 251
    :cond_1
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    invoke-direct/range {v2 .. v20}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;-><init>(ILandroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-object v2

    .line 59
    nop

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
        :pswitch_11
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 266
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 273
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->b:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 280
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->c:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 287
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->d:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 294
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->e:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 301
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 308
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 315
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->h:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 322
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 329
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->j:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 336
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->k:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 343
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->l:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 350
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->m:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 357
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->n:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 364
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->o:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 371
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->q:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 378
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->p:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 385
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->r:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 393
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 394
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/al;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    return-object v0
.end method
