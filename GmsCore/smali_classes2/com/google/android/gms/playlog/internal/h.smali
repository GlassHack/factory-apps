.class public final Lcom/google/android/gms/playlog/internal/h;
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

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 32
    const/4 v7, 0x1

    move-object v5, v6

    move v3, v4

    move-object v2, v6

    move v1, v4

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 37
    const v9, 0xffff

    and-int/2addr v9, v8

    packed-switch v9, :pswitch_data_0

    .line 110
    invoke-static {p0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 41
    :pswitch_0
    invoke-static {p0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-static {p0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 61
    :pswitch_2
    invoke-static {p0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    .line 71
    :pswitch_3
    invoke-static {p0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    .line 81
    :pswitch_4
    invoke-static {p0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 91
    :pswitch_5
    invoke-static {p0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 101
    :pswitch_6
    invoke-static {p0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-eq v8, v0, :cond_1

    .line 116
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    .line 119
    :cond_1
    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 123
    return-object v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 134
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 141
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 148
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->c:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 155
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->d:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 162
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 169
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 176
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->g:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 184
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 185
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/playlog/internal/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    return-object v0
.end method
