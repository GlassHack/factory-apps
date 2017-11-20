.class public Lcom/google/android/location/reporting/ble/ParcelableBleScan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/location/reporting/ble/d;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/Long;

.field final d:Ljava/lang/Integer;

.field final e:Ljava/lang/Integer;

.field final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/location/reporting/ble/d;

    invoke-direct {v0}, Lcom/google/android/location/reporting/ble/d;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->CREATOR:Lcom/google/android/location/reporting/ble/d;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->a:I

    .line 52
    iput-object p2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->b:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->c:Ljava/lang/Long;

    .line 54
    iput-object p4, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->d:Ljava/lang/Integer;

    .line 55
    iput-object p5, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->e:Ljava/lang/Integer;

    .line 56
    iput-object p6, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->f:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/String;JIILjava/lang/String;)Lcom/google/android/location/reporting/ble/ParcelableBleScan;
    .locals 7

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/reporting/ble/ParcelableBleScan;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/google/android/ulr/ApiBleScanReport;
    .locals 8

    .prologue
    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    .line 70
    new-instance v0, Lcom/google/android/ulr/BleStrengthProto;

    iget-object v1, v5, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->b:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->c:Ljava/lang/Long;

    iget-object v3, v5, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->d:Ljava/lang/Integer;

    iget-object v4, v5, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->e:Ljava/lang/Integer;

    iget-object v5, v5, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/ulr/BleStrengthProto;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lcom/google/android/ulr/ApiBleScanReport;

    invoke-direct {v0, v6}, Lcom/google/android/ulr/ApiBleScanReport;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->CREATOR:Lcom/google/android/location/reporting/ble/d;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 88
    instance-of v0, p1, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    iget-object v0, v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    iget-object v0, v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->c:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    iget-object v0, v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->d:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->d:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    iget-object v0, v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->e:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->e:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    iget-object v0, p1, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->c:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->d:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->e:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->CREATOR:Lcom/google/android/location/reporting/ble/d;

    invoke-static {p0, p1}, Lcom/google/android/location/reporting/ble/d;->a(Lcom/google/android/location/reporting/ble/ParcelableBleScan;Landroid/os/Parcel;)V

    .line 104
    return-void
.end method
