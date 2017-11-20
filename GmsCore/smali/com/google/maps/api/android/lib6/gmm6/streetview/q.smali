.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/maps/api/android/lib6/c/bd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private A:F

.field private B:F

.field private C:[F

.field private D:J

.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/gms/maps/model/LatLng;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Ljava/util/List;

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:[Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

.field public v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

.field public w:I

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/as;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/as;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->D:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->x:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->y:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v4, v0

    mul-double/2addr v4, v6

    int-to-double v0, v1

    mul-double/2addr v0, v6

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->q:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->r:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->s:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->t:F

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->u:[Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->D:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-direct {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;-><init>([B[B)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->i()V

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->D:J

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a:Z

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v4

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->x:I

    const/16 v4, 0x11

    const/4 v5, 0x0

    const v6, 0x186a0

    invoke-static {v0, v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;III)I

    move-result v4

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->y:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->x:I

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "infoLevel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", infoValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x1

    const v6, 0x8000

    invoke-static {v0, v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;III)I

    move-result v4

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b:I

    const/4 v4, 0x5

    const/4 v5, 0x1

    const v6, 0x8000

    invoke-static {v0, v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;III)I

    move-result v4

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c:I

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/16 v6, 0xb40

    invoke-static {v0, v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;III)I

    move-result v4

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->d:I

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/16 v6, 0xb40

    invoke-static {v0, v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;III)I

    move-result v4

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->e:I

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    const/16 v4, 0x9

    const/4 v5, 0x1

    const/16 v6, 0xe

    invoke-static {v0, v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;III)I

    move-result v4

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->h:I

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v6, v8

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v4

    int-to-double v8, v4

    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g:Lcom/google/android/gms/maps/model/LatLng;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->z:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->i:Ljava/lang/String;

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->j:Ljava/lang/String;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->k:I

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(I)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(I)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->q:F

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    int-to-float v0, v0

    const v4, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v4

    const v4, -0x3d4c3333    # -89.9f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    const v0, -0x3d4c3333    # -89.9f

    :cond_1
    :goto_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->r:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->n:I

    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    const/16 v0, 0x28

    const v4, -0x55d4a80

    invoke-static {v1, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;II)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->s:F

    const/16 v0, 0x29

    const v4, 0x55d4a80

    invoke-static {v1, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;II)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->t:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->s:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->t:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->s:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->t:F

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->s:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->t:F

    :cond_3
    const/16 v0, 0x34

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v1

    new-array v0, v1, [Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->u:[Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    const/16 v4, 0x34

    invoke-virtual {v2, v4, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->u:[Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    invoke-direct {v6, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;-><init>(Lcom/google/g/a/b/b/f;)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const v4, 0x42b3cccd    # 89.9f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    const v0, 0x42b3cccd    # 89.9f

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->n:I

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->n:I

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    const/16 v0, 0x3b

    invoke-virtual {v3, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3c

    invoke-virtual {v3, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    const/16 v1, 0x3b

    invoke-virtual {v3, v1}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v3, v2}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;-><init>([B[B)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->i()V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(I)F
    .locals 2

    const v0, 0x15752a00

    rem-int v0, p0, v0

    int-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/google/g/a/b/b/f;II)F
    .locals 2

    const v0, -0x55d4a80

    const v1, 0x55d4a80

    invoke-static {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Lcom/google/g/a/b/b/f;III)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    int-to-float v0, p2

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    return v0

    :cond_0
    move p2, v0

    goto :goto_0
.end method

.method private static a(Lcom/google/g/a/b/b/f;III)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    :goto_0
    return p2

    :cond_0
    if-le v0, p3, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method public static a([Lcom/google/maps/api/android/lib6/gmm6/streetview/t;F)I
    .locals 6

    const/4 v3, -0x1

    const/high16 v1, 0x42f00000    # 120.0f

    if-eqz p0, :cond_1

    array-length v4, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, p0, v2

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    sub-float v0, p1, v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->b(F)F

    move-result v0

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float v0, v5, v0

    :cond_0
    cmpg-float v5, v0, v1

    if-gez v5, :cond_2

    move v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/maps/api/android/lib6/gmm6/streetview/q;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/b;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-virtual {v0, p0}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;)Lcom/google/g/a/b/b/f;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;-><init>(Lcom/google/g/a/b/b/f;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private i()V
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->q:F

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->p(F)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->A:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->A:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->A:F

    const v1, 0x40c90fdb

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->A:F

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->r:F

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->p(F)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->B:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->d:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->e:I

    invoke-static {v0, v1, v3, v4}, Lcom/google/maps/api/android/lib6/c/bb;->a(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->w:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->n:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized projection type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    const/4 v4, -0x1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_1
    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    const/4 v4, 0x1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    const/4 v4, 0x2

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    const/4 v4, 0x3

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    const/4 v4, 0x4

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    const/4 v4, 0x5

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    const/4 v4, 0x6

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(FFF[F)V
    .locals 10

    const/4 v9, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v8, v0, [F

    aput p1, v8, v1

    const/4 v0, 0x1

    aput p2, v8, v0

    const/4 v0, 0x2

    aput p3, v8, v0

    aput v4, v8, v9

    const/16 v0, 0x10

    new-array v0, v0, [F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    const/high16 v5, 0x43340000    # 180.0f

    add-float/2addr v2, v5

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f()[F

    move-result-object v4

    move-object v2, v0

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object v2, v8

    move v3, v1

    move-object v4, v0

    move v5, v1

    move-object v6, v8

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    :goto_0
    if-ge v1, v9, :cond_0

    aget v0, v8, v1

    aput v0, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(FF[F)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v0

    add-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    aput v0, p3, v2

    const/4 v0, 0x1

    aget v1, p3, v2

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/bb;->l(F)F

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->q:F

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->p(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->B:F

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->k(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    aput v1, p3, v0

    return-void
.end method

.method public final b(FF[F)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v1

    sub-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    aput v1, p3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/c/bb;->l(F)F

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->q:F

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->p(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->B:F

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->k(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float v1, p2, v1

    aput v1, p3, v0

    return-void
.end method

.method public final b()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->D:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->x:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->y:I

    if-nez v0, :cond_2

    const/16 v0, 0x7d0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->y:I

    goto :goto_1
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->x:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->x:I

    and-int/lit8 v0, v0, 0x41

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()[F
    .locals 11

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->C:[F

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->C:[F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->q:F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->C:[F

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->C:[F

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->r:F

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->C:[F

    neg-float v2, v2

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->C:[F

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    .locals 4

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->u:[Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a([Lcom/google/maps/api/android/lib6/gmm6/streetview/t;)[Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;-><init>([Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->q:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->r:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->s:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->t:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->u:[Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->D:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method
