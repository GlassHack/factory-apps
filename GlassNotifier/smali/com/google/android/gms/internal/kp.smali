.class public final Lcom/google/android/gms/internal/kp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/kq;


# instance fields
.field private final Yn:J

.field private Yo:Ljava/lang/String;

.field private final Yp:Ljava/lang/String;

.field private final Yq:Ljava/lang/String;

.field private final Yr:Ljava/lang/String;

.field private final Ys:Ljava/lang/String;

.field private final Yt:Ljava/lang/String;

.field private final Yu:J

.field private Yv:J

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/kq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kp;->CREATOR:Lcom/google/android/gms/internal/kq;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/kp;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/kp;->Yn:J

    iput-object p4, p0, Lcom/google/android/gms/internal/kp;->Yo:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/kp;->Yp:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/kp;->Yq:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/kp;->Yr:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/kp;->Ys:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/kp;->Yv:J

    iput-object p9, p0, Lcom/google/android/gms/internal/kp;->Yt:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/gms/internal/kp;->Yu:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/kp;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/kp;->Yn:J

    return-wide v0
.end method

.method public jA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->Yq:Ljava/lang/String;

    return-object v0
.end method

.method public jB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->Yr:Ljava/lang/String;

    return-object v0
.end method

.method public jC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->Ys:Ljava/lang/String;

    return-object v0
.end method

.method public jD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->Yt:Ljava/lang/String;

    return-object v0
.end method

.method public jE()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/kp;->Yu:J

    return-wide v0
.end method

.method public jy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->Yo:Ljava/lang/String;

    return-object v0
.end method

.method public jz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->Yp:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kq;->a(Lcom/google/android/gms/internal/kp;Landroid/os/Parcel;I)V

    return-void
.end method
