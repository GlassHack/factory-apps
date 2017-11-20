.class public Lcom/google/android/gms/common/data/c;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
        ">",
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD:Ljava/lang/String; = "data"

.field private static final yk:[Ljava/lang/String;


# instance fields
.field private final yl:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/data/c;->yk:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p2, p0, Lcom/google/android/gms/common/data/c;->yl:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public static addValue(Lcom/google/android/gms/common/data/DataHolder$a;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V
    .locals 4
    .param p0, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Lcom/google/android/gms/common/data/DataHolder$a;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;, "TT;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "data"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/DataHolder$a;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public static buildDataHolder()Lcom/google/android/gms/common/data/DataHolder$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/data/c;->yk:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->b([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 4
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/data/c;, "Lcom/google/android/gms/common/data/c<TT;>;"
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1, v3}, Lcom/google/android/gms/common/data/DataHolder;->f(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->yl:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/data/c;, "Lcom/google/android/gms/common/data/c<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/c;->get(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    return-object v0
.end method
