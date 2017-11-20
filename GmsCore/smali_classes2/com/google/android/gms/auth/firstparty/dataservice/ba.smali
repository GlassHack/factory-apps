.class public final Lcom/google/android/gms/auth/firstparty/dataservice/ba;
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

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 17

    .prologue
    .line 17
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v15

    .line 20
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 26
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 28
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 36
    const-string v10, "com.google.android.gms.auth.firstparty.shared.Consent.UNKNOWN.toString()"

    .line 38
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 42
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 46
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v15, :cond_0

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    const v16, 0xffff

    and-int v16, v16, v1

    packed-switch v16, :pswitch_data_0

    .line 194
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    :pswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    .line 65
    :pswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 75
    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 85
    :pswitch_3
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    .line 95
    :pswitch_4
    sget-object v6, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/e;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    move-object v6, v1

    .line 101
    goto :goto_0

    .line 105
    :pswitch_5
    sget-object v7, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/h;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    move-object v7, v1

    .line 111
    goto :goto_0

    .line 115
    :pswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    .line 125
    :pswitch_7
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    .line 135
    :pswitch_8
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 145
    :pswitch_9
    sget-object v11, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/b;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-object v11, v1

    .line 151
    goto :goto_0

    .line 155
    :pswitch_a
    sget-object v12, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/d;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-object v12, v1

    .line 161
    goto :goto_0

    .line 165
    :pswitch_b
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_0

    .line 175
    :pswitch_c
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v14

    goto/16 :goto_0

    .line 185
    :pswitch_d
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    goto/16 :goto_0

    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v15, :cond_1

    .line 200
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    .line 203
    :cond_1
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;ZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;ZZ)V

    .line 207
    return-object v1

    .line 51
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
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 218
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 225
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 232
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 239
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 246
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 253
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 260
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->g:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 267
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->h:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 274
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 281
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 288
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->k:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 295
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->l:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 302
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->m:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 309
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->n:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 317
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 318
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ba;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    return-object v0
.end method
